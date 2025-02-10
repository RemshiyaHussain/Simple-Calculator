import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final TextEditingController numController = TextEditingController();
  String num1 = "";
  String num2 = "";
  bool isFirstnumber = true;

  String operator = "";
  
  

  MyApp({super.key});

  void setNum1(String value) {
    num1 = "$num1$value";
  }

  void setNum2(String value ){
   num2 = "$num2$value";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appbar
        appBar: AppBar(
          backgroundColor: Colors.blue,
         title: Center(
              child: Text(
            "calculator",
            style: TextStyle(fontSize: 30),
          )),
          ),
          body:SafeArea(child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(mainAxisSize: MainAxisSize.max,
       
            spacing: 10,
            children: [
              //
              TextField(
                readOnly: true,
                controller: numController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "num",
                  hintText: "enter the numbers",

                  ),
                ),
                Padding(padding: EdgeInsets.all(40)),

              //first row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    text: "c",
                    onTap: (value) {
                      num1 = " ";
                      num2 = " ";
                      numController.clear();
                      isFirstnumber = true;
                    },
                  ),
                  SizedBox(height: 5),
                 
                 ButtonWidget(text: "%",
                 onTap: (value) {
                   isFirstnumber=false;

                  
                   numController.text="${numController.text}$value";
                   operator=value;
                 },),
                  SizedBox(height: 5), 
                  ButtonWidget(
                    text: "/",
                    onTap: (value) {
                      isFirstnumber = false;
                      numController.text = "${numController.text}$value";

                      operator = value;
                    },
                  ), SizedBox(height: 5), 
                 ButtonWidget(
                    text: "D",
                    onTap: (value) {
                      isFirstnumber = false;
                      if(num2.isNotEmpty){
                        num2=num2.substring(0,num2.length-1);

                      }else if(operator.isNotEmpty){
                        
                      }
                      numController.text = "${numController.text}$value";

                      operator = value;
                    },
                  ), 
                
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    text: "1",
                    onTap: (String value) {
                      numController.text = "${numController.text}$value";
                      if (isFirstnumber) {
                        setNum1(value);
                      } else {
                        setNum2(value);
                      }
                      log(num1, name: "number 1");
                      log(num2, name: "number 2");
                    },
                  ),
                  SizedBox(height: 5),
                  ButtonWidget(
                    text: "2",
                    onTap: (String value) {
                      numController.text = "${numController.text}$value";
                      if (isFirstnumber) {
                        setNum1(value);
                      } else {
                        setNum2(value);
                      }
                      log(num1, name: "number 1");
                      log(num2, name: "number 2");
                    },
                  ),
                  SizedBox(height: 5),
                  ButtonWidget(
                    text: "3",
                    onTap: (String value) {
                      numController.text = "${numController.text} $value";
                      if(isFirstnumber){
                        setNum1(value);
                      }else{
                        setNum2(value);
                        }log(num1,name: "number1");
                      log(num2,name: " number 2" );
                    },
                  ),
                  SizedBox(height: 5),
                  ButtonWidget(
                    text: "+",
                    onTap: (String value) {
                      isFirstnumber = false;
                      numController.text = "${numController.text} $value";
                      operator = value;
                    },
                  )
                ],
              ),

             

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    text: "4",
                    onTap: (String value) {
                      numController.text = "${numController.text}$value";
                      if(isFirstnumber){
                        setNum1(value);
                      }else{
                        setNum2(value);
                      }log(num1,name: "number 1"  );
                      log(num2,name: "number 2");
                    },
                  ),
                  SizedBox(height: 5),
                  ButtonWidget(
                    text: "5",
                    onTap: (String value) {
                      if(isFirstnumber){
                        setNum1(value);

                      }else{
                        setNum2(value);
                      }
                      numController.text = "${numController.text}$value";
                    },
                  ),
                  SizedBox(height: 5),
                  ButtonWidget(
                    text: "6",
                    onTap: (String value) {
                      if(isFirstnumber){
                        setNum1(value);
                      }else{
                        setNum2(value);
                      }
                      numController.text = "${numController.text}$value";
                    
                    },
                  ),
                  SizedBox(height: 5),
                  ButtonWidget(
                    text: "-",
                    onTap: (String value) {
                     isFirstnumber  =false;
                      numController.text = "${numController.text} $value";
                      operator=value;
                    },
                  )
                ],
              ),

             

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    text: "7",
                    onTap: (String value) {
                      if(isFirstnumber){
                        setNum1(value);
                      }else{
                        setNum2(value);
                      }
                      numController.text = "${numController.text}$value";
                    },
                  ),
                  SizedBox(height: 5),
                  ButtonWidget(
                    text: "8",
                    onTap: (value) {
                      if(isFirstnumber){
                        setNum1(value);
                      }else{
                        setNum2(value);
                      }
                      numController.text = "${numController.text}$value";
                    },
                  ),
                  SizedBox(height: 5),
                  ButtonWidget(
                    text: "9",
                    onTap: (value) {
                      if(isFirstnumber){
                        setNum1(value);
                      }else{
                        setNum2(value);
                      }
                      numController.text = "${numController.text}$value";
                    },
                  ),
                  SizedBox(height: 5),
                  ButtonWidget(
                    text: "*",
                    onTap: (String value) {
                    isFirstnumber=false;
                    numController.text="${numController.text}$value";
                    operator=value;
          
                    },
                  )
                ],
              ),

             

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
               
               ButtonWidget(
                  text: ".",
                  onTap: (String value) {
                  
                    numController.text="${numController.text}$value";
                  },
                ),
                SizedBox(height: 5), ButtonWidget(
                  text: "0",
                  onTap: (String value) {
                    
                    
                  
                    if(isFirstnumber){
                      setNum1(value);
                    }else{
                      setNum2(value);
                    } 
                     numController.text = "${numController.text}$value ";
                  },
                ),
                
                
                SizedBox(height: 5),
                ButtonWidget(
                    text: "=",
                    onTap: (String value) {
                      numController.text = "${numController.text}$value ";
                      log(num1, name: "firstnumber");
                      log(num2, name: "secondnumber");
                      final int firstnumber = int.parse(num1);
                      final int secondnumber = int.parse(num2);
                      num result = 0;

                      if (operator == "+") {
                        result = firstnumber + secondnumber;
                      } else if (operator == "/") {
                        result = firstnumber / secondnumber;
                      }else if(operator=="-"){
                        result = firstnumber - secondnumber;
                      }else if(operator=="*"){
                        result = firstnumber * secondnumber;
                      }else if(operator == "%"){
          
                        result = firstnumber % secondnumber;
                      }else if(operator== ".")
                      

                      log(result.toString(), name: "Result");
                      numController.text = "${numController.text}$result";
                      
                      isFirstnumber=true;
                     
   } )
              ])
            ],
          ),
        ),
      ),
    
    )
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function(String value) onTap;
  const ButtonWidget({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
   
    return InkWell(
      onTap: () {
        log(text, name: "number tapped");
        onTap(text);
      },
      
        child: Padding(
          padding: const EdgeInsets.all(4.0),
           
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(100)),
            height:60,
            width: 80,
            child: Center(
              child: Text(
                text,
                style: TextStyle(fontSize: 25,color: Colors.white),
              ),
            ),
          ),
        ),
      
    );
  }
}
