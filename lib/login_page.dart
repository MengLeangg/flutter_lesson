import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: _buildBody,
      ),
    );
  }

  get _buildBody{
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.cyan,
            Colors.deepPurple,
          ],
        ),
      ),
      child: _buildPanel,
    );
  }

  get _buildPanel{
    return Container(
      width: 350,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildEmailTextBox,
          SizedBox(height: 10,),
          _buildPasswordTextBox,
          SizedBox(height: 10,),
          _buildLoginButton,
        ],
      ),
    );
  }
}
get _buildEmailTextBox{
  return Container(
    width: 250,
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(.5)
    ),
    padding: EdgeInsets.only(left: 10, right: 10),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      autocorrect: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email, color: Colors.white70,),
        hintText: "Email address",
        hintStyle: TextStyle(color: Colors.white70),
        border: InputBorder.none,
      ),
    ),
  );
}
get _buildPasswordTextBox{
  return Container(
    width: 250,
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(.5)
    ),
    padding: EdgeInsets.only(left: 10, right: 10),
    child: TextField(
      style: TextStyle(color: Colors.white),
      autocorrect: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key, color: Colors.white70,),
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.white70),
        border: InputBorder.none,
        suffixIcon: Icon(Icons.visibility, color: Colors.white70,)
      ),
      obscureText: true,
    ),
  );
}
get _buildLoginButton{
  return SizedBox(
    width: 250,
    height: 50,
    child: RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.deepOrange,
      child: Text("Login"),
      onPressed: () {},
    ),
  );
}
