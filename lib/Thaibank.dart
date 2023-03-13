import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SavingPage extends StatefulWidget {
  const SavingPage({Key? key}) : super(key: key);
  @override
  State<SavingPage> createState() => _SavingPageState();
}

class _SavingPageState extends State<SavingPage> {
  final formKey = GlobalKey<FormState>();
  var objFormatDouble = NumberFormat('#,##0.00');
  var objFormatInt = NumberFormat('#,##0');
  String strDisplay = "";
  double douInterestrate = 0.00;
  double douPrincipal = 0.00;
  double douFV = 0.00;
  int intPeriod = 0;
  void FormSubmit() {
    if (formKey.currentState!.validate()) {
      //ตรวจว่าผ่านไหม
      formKey.currentState!.save(); //บันทึกค่า
    }
  }
  void FormResetb() {                 //reset1
    formKey.currentState!.reset();
    setState(() {
      strDisplay = "";
    });
  }

  void FormReset() {                  //reset2
    setState(() {
      strDisplay = "";
    });
  }

  void SetPeriod(value) {
    setState(() {
      intPeriod = int.parse(value);
      SetDisplay();
    });
  }

  void setPrincipal(value) {
    setState(() {
      douPrincipal = double.parse(value);
      SetDisplay();
    });
  }

  void setInterestrate(value) {
    setState(() {
      douInterestrate = double.parse(value)/100;

      SetDisplay();
    });
  }

  void calculator() {
    douFV = douPrincipal*pow((1+douInterestrate), intPeriod);
    
  }

  void SetDisplay() {
    setState(() {

        calculator();
      strDisplay =
          'Your saving become ${objFormatDouble.format(douFV)} THB ';
 
    });
  }

  void calAge() {
    setState(() {
      formKey.currentState!.save();
      SetDisplay();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        //เก็บค่่า input
        key: formKey,
        child: Column(
          children: [
          
            SizedBox(height: 20.0,),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Saving",                
                style: TextStyle(fontSize: 25),
                ),
            ),
            SizedBox(height: 10.0,),
            PrinFormField(),
            InterestRFormField(),
            PeriodFormField(),
        //    SizedBox(height: 0.0),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                '$strDisplay',
                style: TextStyle(fontSize: 20),
                  
              )
              
              ),
            ),
            Align(alignment: Alignment.topRight,),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                resetButton(),
                calculationButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget PrinFormField() {
    return TextFormField(
      //keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Principal(1,000.00-1,000,000.00 THB) ",
        hintText: "Input Principal",
        icon: Icon(Icons.credit_card),
      ),
      validator: (value) {
        if (double.parse(value!) < 1000 || double.parse(value) > 1000000) {
          return "Principal must between 10,000.00 - 1,000,000 ";
        } else {
          FormReset();
          return null;
          
        }
      },
      onSaved: (value) {
        setPrincipal(value);
      },
    );
  }

  Widget InterestRFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Interest Rate (0.00-20.00 %/yr.)",
          hintText: "Input Interest Rate",
          icon: Icon(Icons.interests)),
      validator: (value) {
        if (double.parse(value!) < 0 || double.parse(value) > 20) {
          return "Interest Rate must be between 0.00-20.00";
        } else {
          FormReset();
          return null;
          
        }
      },
      onSaved: (value) {
        setInterestrate(value);
      },
    );
  }

  Widget PeriodFormField() {
    return TextFormField(
      obscureText: false, //เป็น......ใน pasword
      decoration: InputDecoration(
          labelText: "Period (1-100 yrs)",
          hintText: "Input Period",
          icon: Icon(Icons.calendar_month)),
      validator: (value) {
        if (int.parse(value!) < 1 || double.parse(value) > 100) {
          return "Period must be between 1-100";
        } else {
        FormReset();
          return null;
        }
      },
      onSaved: (value) {
        SetPeriod(value);
      },
    );
  }

  Widget resetButton() {
    return ElevatedButton(
      //color: Colors.orangeAccent,
      onPressed: FormResetb,
      child: Text("Reset"),
    );
  }

  Widget calculationButton() {
    return ElevatedButton(
      //color: Colors.orangeAccent,
      onPressed: FormSubmit,
      child: Text("Calculate"),
    );
  }
}
