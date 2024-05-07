import 'package:flutter/material.dart';
import 'package:qwerttt/screens/payment_screen.dart';

void main() {
  runApp(Company());
}

class Company extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Building your company',
      home: CompanyDetailsPage(),
    );
  }
}

class CompanyDetailsPage extends StatefulWidget {
  @override
  _CompanyDetailsPageState createState() => _CompanyDetailsPageState();
}

class _CompanyDetailsPageState extends State<CompanyDetailsPage> {
  // Define variables to hold company details
  String companyName = '';
  String commercialActivities = '';
  String email = '';
  String phoneNumber = '';
  String address = '';
  String city = '';
  String state = '';
  String zip = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Building your company',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/seeTech.png',
              height: 150,
              width: 200,
            ),
            SizedBox(height: 0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Company Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  companyName = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Commercial Activities',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  commercialActivities = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  phoneNumber = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  address = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'City',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  city = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'State',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  state = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'ZIP Code',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  zip = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle saving company details
                // Navigate to the subscription page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubscriptionPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
              ),
              child: Text('Save', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}

class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Subscription Options',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'images/seeTech.png',
                height: 140,
                width: 300,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SubscriptionOption(duration: '3 Months', price: '\$50'),
                  SubscriptionOption(duration: '6 Months', price: '\$90'),
                  SubscriptionOption(duration: '1 Year', price: '\$150'),
                ],
              ),
              SizedBox(height: 30),
              // هنا يمكنك وضع أي محتوى إضافي للصفحة
            ],
          ),
        ],
      ),
    );
  }
}

class SubscriptionOption extends StatelessWidget {
  final String duration;
  final String price;

  SubscriptionOption({required this.duration, required this.price});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          _showPaymentOptions(context);
        },
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                duration,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Price: $price',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPaymentOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Choose Payment Method"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // Handle PayPal payment
                    Navigator.pop(context);
                    _showPaymentConfirmation(context, 'PayPal');
                  },
                  child: Text("PayPal"),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    // Handle Mastercard payment
                    Navigator.pop(context);
                    _showPaymentConfirmation(context, 'Mastercard');
                  },
                  child: Text("Mastercard"),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    // Handle Visa payment
                    Navigator.pop(context);
                    _showPaymentConfirmation(context, 'Visa');
                  },
                  child: Text("Visa"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showPaymentConfirmation(BuildContext context, String paymentMethod) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Visa1();
      },
    );
  }
}
