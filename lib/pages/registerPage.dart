import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:authentication_buttons/authentication_buttons.dart';


class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _selectedCountryCode = '+1'; // Default country code
  String _phoneNumber = '';

  void _onCountryChange(CountryCode countryCode) {
    setState(() {
      _selectedCountryCode = countryCode.dialCode!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CountryCodePicker(
              onChanged: _onCountryChange,
              initialSelection: 'US',
              favorite: const ['+1', 'US'],
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixText: _selectedCountryCode,
              ),
              onChanged: (value) {
                setState(() {
                  _phoneNumber = value;
                });
              },

            ),
            const SizedBox(height: 20.0),
            AuthenticationButton(

              onPressed: () {
                // Implement sign-in functionality here
                print('Signing in with phone number $_phoneNumber');
              }, authenticationMethod: AuthenticationMethod.microsoft,
            ),
          ],
        ),
      ),
    );
  }
}
