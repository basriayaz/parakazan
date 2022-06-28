import 'package:flutter/material.dart';

import 'colors.dart';




class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child:  Text(
                  LoginText().title,
                    style:  TextStyle(
                      color: ColorSelect().nephritis,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
                const SizedBox(height: 130),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child:  Text(
                  LoginText().signin,
                  style: const TextStyle(fontSize: 20),
                )),
                
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration:  InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: LoginText().username,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration:  InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: LoginText().password,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child:  Text(LoginText().forgetPassword,style: Theme.of(context).textTheme.bodyMedium),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: ColorSelect().carrot),
                  child:  Text(LoginText().login),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              // ignore: sort_child_properties_last
              children: <Widget> [
                 Text(LoginText().question),
                TextButton(
                  
                  child:  Text(
                    LoginText().signup,
                    style:  TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.primary),
                    
                  ),
                  onPressed: () {
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}


class LoginText{
  String question = 'Hesabın yok mu?';
  String  signin = 'Hesabına Giriş Yap';
  String signup = 'Kayıt Ol';
  String login = 'Giriş Yap';
  String username = 'Kullanıcı Adı';
  String password = 'Şifre';
  String forgetPassword = 'Şifremi Unuttum';
  String title = 'Para Kazan';
}

