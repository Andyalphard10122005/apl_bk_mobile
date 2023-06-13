import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00109D),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(top: 50),
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('images/Bu-caca.png'),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Tiyo parker',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'XI PPLG 2',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(65),
                      topRight: Radius.circular(65),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(65),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _buildInputField('Username'),
                          SizedBox(height: 10),
                          _buildInputField('Bio'),
                          SizedBox(height: 10),
                          _buildInputField('Email'),
                          SizedBox(height: 10),
                          _buildInputField('Jenis Kelamin'),
                          SizedBox(height: 10),
                          _buildInputField('No. Telp'),
                          SizedBox(height: 20),
                          Container(
                            width: 100,
                            height: 35,
                            margin: EdgeInsets.only(right: 265),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 0, 23, 173),
                              ),
                              child: Text('Submit'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        iconSize: 37,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF00109D),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0XFF00109D),
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Color(0xFF00109D),
        unselectedItemColor: Color(0xFF00109D),
      ),
    );
  }

  Widget _buildInputField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
