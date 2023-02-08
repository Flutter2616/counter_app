import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade400,
        centerTitle: false,
        title: Text(
          "COUNTER APP",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Align(
            child: InkWell(
              onTap: () {
                setState(() {
                  i = 0;
                });
              },
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Text(
                  "0",
                  style: TextStyle(
                    color: Colors.red.shade700,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Align(
            child: InkWell(
              onTap: () {
                setState(() {
                  i--;
                });
              },
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Icon(
                  Icons.minimize,
                  color: Colors.red.shade700,
                  size: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Align(
            child: InkWell(
              onTap: () {
                setState(() {
                  i = i * 2;
                });
              },
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Text(
                  "2x",
                  style: TextStyle(
                    color: Colors.red.shade700,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Align(
            child: InkWell(
              onTap: () {
                setState(() {
                  i = i * 3;
                });
              },
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Text(
                  "3x",
                  style: TextStyle(
                    color: Colors.red.shade700,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Align(
            child: InkWell(
              onTap: () {
                setState(() {
                  i = i * 4;
                });
              },
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Text(
                  "4x",
                  style: TextStyle(
                    color: Colors.red.shade700,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Align(
            child: InkWell(
              onTap: () {
                setState(() {
                  i++;
                });
              },
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.red.shade700,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black12,
      body: Center(
        child: Container(
          height: 100,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.red.shade900,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                spreadRadius: 10,
                color: Colors.red.shade300,
                blurRadius: 20,
              )
            ],
          ),
          child: Text(
            "$i",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
