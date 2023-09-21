// ignore_for_file: unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sms2email_v1_1/consts/consts.dart';
import 'package:sms2email_v1_1/cubit/cubit.dart';
import 'package:sms2email_v1_1/cubit/states.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return SafeArea( //SafeArea to Prevent Collison
            child: Scaffold(
              appBar: AppBar(
                title: const Center(child: Text("Main Screen")), //AppBar Text
              ),
              body:  Padding( //ALL APP BODY PADDING
                padding: const EdgeInsets.all(15), //PADDING VALUE
                child: Column(
                  children: [
                    Center(       //SHADOW TEXT IN HERE
                      child: Text("Welcome ${Consts().ownerName}!", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                    const SizedBox(height: 40,), //FIRST SIZED BOX
                    Center(
                      child: TextFormField( //FIRST FORM FIELD
                        //controller: senderEmailField,
                        keyboardType: TextInputType.emailAddress, //INPUT FIELD KEYPOARD TYPEE
                        maxLines: 1,
                        minLines: 1,
                        cursorColor: const Color.fromARGB(0, 0, 0, 0), 
                        onFieldSubmitted: (value) {
                          Consts.senderEmail = value; //SENDER EMAIL VAR
                          print(Consts.senderEmail);
                        },
                        decoration: const InputDecoration( //FIRST FORM FIELD DECORATION
                          labelText: "Enter Sender E-mail", //FIRST FORM FIELD LABEL TEXT
                          border: OutlineInputBorder(),
                          //counterText: '0 characters',
                          icon: Icon(Icons.send), //SEOND FORM FIELD ICON
                        ),
                      ),
                    ),
                    const SizedBox(height: 40,), //SECOND SIZED BOX
                    Center(
                      child: TextFormField(//SECOND FORM FIELD
                        //controller: senderEmailField,
                        keyboardType: TextInputType.emailAddress, //INPUT FIELD KEYPOARD TYPEE
                        maxLines: 1,
                        minLines: 1,
                        cursorColor: const Color.fromARGB(0, 0, 0, 0),
                        onFieldSubmitted: (value) {
                          Consts.receiverEmail = value; //RECEIVER EMAIL VAR
                          print(Consts.receiverEmail);
                        },
                        decoration: const InputDecoration( //SECOND FORM FIELD DECORATION
                        labelText: "Enter Recivier E-mail",//SECOND FORM FIELD LABEL TEXT
                        border: OutlineInputBorder(),
                        //counterText: '0 characters',
                        icon: Icon(Icons.send), //SEOND FORM FIELD ICON
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
