import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FormSampleScreen extends StatelessWidget {
  const FormSampleScreen({super.key});

  static const String path = '/form_sample';
  static const String name = 'form_sample';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('form_sample')),
      body: const FormExample(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => displayBottomSheet2(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final _formKey = GlobalKey<FormState>();

  late FocusNode _nameFocusNode;
  late FocusNode _emailFocusNode;

  bool _nameFocused = false;
  bool _emailFocused = false;

  @override
  void initState() {
    super.initState();
    _nameFocusNode = FocusNode();
    _nameFocusNode.addListener(_handleNameFocusChange);
    _emailFocusNode = FocusNode();
    _emailFocusNode.addListener(_handleEmailFocusChange);
  }

  void _handleNameFocusChange() {
    if (_nameFocusNode.hasFocus != _nameFocused) {
      // setState(() {
      _nameFocused = _nameFocusNode.hasFocus;
      // });
      print('_nameFocused: $_nameFocused');
    }
  }

  void _handleEmailFocusChange() {
    if (_emailFocusNode.hasFocus != _emailFocused) {
      // setState(() {
      _emailFocused = _emailFocusNode.hasFocus;
      print('_emailFocused: $_emailFocused');
      // });
    }
  }

  @override
  void dispose() {
    _nameFocusNode.removeListener(_handleNameFocusChange);
    // The attachment will automatically be detached in dispose().
    _nameFocusNode.dispose();

    _emailFocusNode.removeListener(_handleEmailFocusChange);
    // The attachment will automatically be detached in dispose().
    _emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TextFormField(
                  focusNode: _nameFocusNode,
                  onChanged: (value) {
                    // print(value);
                    if (value.contains('maduro')) {
                      nameController.text = value.replaceAll('maduro', '👺');
                    }
                  },
                  decoration: const InputDecoration(
                      labelText: 'Ingrese su nombre', hintText: 'Name'),
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                    // print('name value: $value');

                    return null;
                  },
                ),
                TextFormField(
                  focusNode: _emailFocusNode,
                  decoration: const InputDecoration(
                      labelText: 'Ingrese su email',
                      hintText: 'email@example.com'),
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    }
                    // print('email value: $value');

                    return null; // cuando retorna null es que todo está bien
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          // Validate will return true if the form is valid, or false if
                          // the form is invalid.
                          if (_formKey.currentState!.validate()) {
                            // Process data.
                            print('Todo salió bien, se validó correctamente');
                          }
                        },
                        child: const Text('Submit')),
                    ElevatedButton(
                        onPressed: () {
                          _formKey.currentState!.reset();
                        },
                        child: const Text('Reset')),
                  ],
                ),
              ],
            ),
          ),
        ),
        TextButton(
            onPressed: () {
              Scaffold.of(context).showBottomSheet(
                (context) {
                  return Container(
                    color: Colors.grey,
                    height: 200,
                    child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: const Text('close'))),
                  );
                },
              );
            },
            child: const Text('openBottomSheet1')),
        ElevatedButton(
            onPressed: () {
              displayBottomSheet2(context);
            },
            child: const Text('openBottomSheet2')),
      ],
    );
  }
}

Future<void> displayBottomSheet2(BuildContext context) async {
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.blue,
      builder: (context) {
        final mediaQueryData = MediaQuery.of(context);
        final desplazamiento = mediaQueryData.viewInsets.bottom +
            mediaQueryData.viewPadding.bottom;
        return Padding(
          padding: EdgeInsets.only(bottom: desplazamiento, left: 20),
          child: const TextField(
            decoration: InputDecoration(label: Text('Ingrese algo')),
          ),
        );
      });
}

//EdgeInsets.only(bottom: desplazamiento, left: 20),