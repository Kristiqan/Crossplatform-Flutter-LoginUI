import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginUI',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('LoginUI'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 40,),
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter email',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {
                            },
                            validator: (value) {
                              return value!.isEmpty ? 'Please enter a valid email' : null;
                            },
                          ),
                        ),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter Password',
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {
                            },
                            validator: (value) {
                              return value!.isEmpty ? 'Please enter password' : null;
                            },
                          ),
                        ),
                        SizedBox(height: 30,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            onPressed: () {},
                            color: Colors.transparent,
                            textColor: Colors.white,
                            child: Text('Register'),
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            onPressed: () {},
                            color: Colors.deepOrange,
                            textColor: Colors.white,
                            child: Text('Login'),
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextButton(
                            onPressed: () {},
                            child: Text('Forgot Password'),
                          ),

                        ),
                      ],

                    ),
                  ),
                ),
              ],
            ),
          ),

        )

    ),
    );
  }
}


