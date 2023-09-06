import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget
{
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First App',
        ),
        actions:
        [
          IconButton(
            icon: Icon(
          Icons.notification_important,
          ),
            onPressed: onNotification,
          ),
          IconButton(icon: Text('Hello',)
          ,
          onPressed: ()
            {
              print('Hello');
            },
          ),
          Icon(
            Icons.search,
          ),
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text(
                      'Login',
                          style: TextStyle(
                              fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (String value)
                      {
                        print(value);
                      },
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onFieldSubmitted: (String value)
                      {
                        print(value);
                      },
                      onChanged: (String value)
                      {
                        print(value);
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.blue,
                      height: 40.0,
                      child: MaterialButton(
                          onPressed:()
                          {
                            print(emailController.text);
                            print(passwordController.text);
                          },
                        child: Text(
                          'Login',
                              style:TextStyle(
                                color: Colors.white,
                              )
                        ),
                          ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont have account ?',),
                        TextButton(
                            onPressed:(){},
                          child: Text(
                            'Register Now'
                          ),
                        ),
                      ],
                    )
                  ],
                ),
          ),
        ),
      ),
        );
  }
void onNotification()
{
  print('notification clicked');
}
}