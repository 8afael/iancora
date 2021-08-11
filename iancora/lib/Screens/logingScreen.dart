import 'package:flutter/material.dart';
import 'package:iancora/Services/authService.dart';

//welcome text
Text("Olá, \nSeja Bem vindo, faça seu login com,",
    style: Theme.of(context).textTheme.headline1.copyWith(fontSize: size.width * 0.1,)
),
 Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
				// Gesture detector for facebook Login
                GestureDetector(
                    onTap: () {
						// Call facebook login methon
                        AuthService().signInWithFacebook();
                    },
                    child: Image(width: 50, image: AssetImage('assets/icons/facebook.png')),
                ),
                SizedBox(width: 50),
				// Gesture detector for the Google icon
                GestureDetector(
                    onTap: () {
					// Call the a method to sign in with Google
                    AuthService().signInWithGoogle();
                    },
                    child: Image(width: 55, image: AssetImage('assets/icons/google.png'))
                ),
            ],
        ),
    ],
),