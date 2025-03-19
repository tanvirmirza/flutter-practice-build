import 'package:flutter/material.dart';

class KForms extends StatefulWidget {
  const KForms({super.key});

  @override
  State<KForms> createState() => _KFormsState();
}

class _KFormsState extends State<KForms> {
  final _controllerName = TextEditingController();
  final _controllerMail = TextEditingController();
  final _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Forms",
      )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormFields(
                  controller: _controllerName,
                  errorText: 'please enter name',
                  hintText: "Enter Your Name",
                  prefixIcon: Icon(Icons.person),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormFields(
                  controller: _controllerMail,
                  errorText: 'please enter email',
                  hintText: "Enter Your Email",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      _controllerMail.clear();
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormFields(
                  controller: _controllerPassword,
                  hintText: "Enter Your Password",
                  errorText: 'please enter password',
                  prefixIcon: Icon(Icons.lock),
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate() &&
                          _controllerPassword.text.length > 6) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => InfoPage(
                                      name: _controllerName.text,
                                      email: _controllerMail.text,
                                    ))));
                      }
                    },
                    child: Text('Submit'),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class TextFormFields extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? errorText;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final bool obscureText;

  const TextFormFields({
    Key? key,
    required this.controller,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.errorText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }
        return null;
      },
    );
  }
}

// ignore: must_be_immutable
class InfoPage extends StatelessWidget {
  String name;
  String email;
  InfoPage({Key? key, required this.name, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Information")),
      body: Center(
          child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(child: Text('${name[0].toUpperCase()}')),
            title: Text('$name'),
            subtitle: Text('$email'),
          ),
        ],
      )),
    );
  }
}
