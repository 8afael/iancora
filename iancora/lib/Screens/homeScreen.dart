import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iancora/Services/authService.dart';

Container(
    width: 100,
    height: 100,
    child: CircleAvatar(
        radius: 50.0,
        backgroundColor: Colors.transparent,
		//display the user profile image
        backgroundImage: NetworkImage(FirebaseAuth.instance.currentUser.photoURL),
    ),
),
Text(
	// Obtaine display name of the current auth instance
    FirebaseAuth.instance.currentUser.displayName,
    style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black87),
),
MaterialButton(
    padding: EdgeInsets.all(10),
    color: Colors.green,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    child: Text(
        'LOG OUT',
        style: TextStyle(color: Colors.white, fontSize: 15),
    ),
    onPressed: () {
		// 	log out the current user upon pressing the logoun button
        AuthService().signOut();
    },
),