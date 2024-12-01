import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';
import 'package:odev/ui/utils/auth_validators.dart';


class TextTextfieldPage extends StatefulWidget {
  const TextTextfieldPage({super.key});
  

  @override
  State<TextTextfieldPage> createState() => _TextTextfieldPageState();
}

class _TextTextfieldPageState extends State<TextTextfieldPage> {
  
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  void _login() {
  if (_formKey.currentState!.validate()) {
  Navigator.pop(context);
  } else {
  setState(() {
  _autovalidateMode = AutovalidateMode.onUserInteraction;
    });
    }
  }

  

  @override
    void initState()
    {
          super.initState();
        _isPasswordVisible =true;
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
          title: const Text("Giriş"),
            
    ),
          body: GestureDetector(
            child: SingleChildScrollView(
            
              child: Form(
              key: _formKey,
              autovalidateMode: _autovalidateMode,
      
            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [ 

              //E-posta kontrolü
              Padding(
                padding: const EdgeInsets.all(AppSize.md),
                child: TextFormField(
                      
                      controller: _emailController,
                      decoration: const InputDecoration(hintText: "E-posta",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)),
                      validator:  AuthValidators.validateEmail,
                    ),
              ),
                          
              //Şifre kontrolü
                  Padding(
                    padding: const EdgeInsets.all(AppSize.md),
                    child: TextFormField(
                        obscureText: _isPasswordVisible,
                        controller:_passwordController,
                        validator:  AuthValidators.validatePassword,
                        decoration: InputDecoration(hintText: "Şifre",
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                        icon: _isPasswordVisible ?  const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                        onPressed: (){
                            setState(() {
                              _isPasswordVisible =! _isPasswordVisible;
                            });
                          }, )), 
                        
                      ),
                  ),
                
              
              //Giriş buttonu
                  ElevatedButton(
                    onPressed: (){
                      
                      _login;
                    },
                    child: const Text("Giriş Yap"),)
                ]
              )

            
              )
            
            ,),
          )

    );
  }


}
