import 'package:flutter/material.dart';
import 'package:flutterprac/pages/WhereAreYouLocated.dart';
import 'package:flutterprac/widgets/myButton.dart';
import 'package:flutterprac/constants.dart';

class practicePage extends StatelessWidget {
  const practicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Spacer(),
                myButton(
                  text: 'Create Account',
                  onPressed: () {
                    // Add your logic here for when the button is pressed
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  WhereAreYouLocated()));

                    print('Create Account button pressed');
                  },
                ),
                const SizedBox(height: 17),
                SizedBox(
                  width: 333,
                  height: 56,
                  child: OutlinedButton(
                    // Change ElevatedButton to OutlinedButton
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  WhereAreYouLocated()));

                      // Add your logic here for when the button is pressed
                      print('Create Account button pressed');
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ), // Set text color
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Theme.of(context).primaryColor,
                      ), // Set border color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Set border radius
                      ),
                      padding: EdgeInsets.zero, // Remove padding
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      bottom:
                          100.0), // Adjust the value to move the button down
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Text(
                    'City Circle',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 2), // Add some space between the text fields

            ],
          ),
        ],
      ),
    );
  }
}
