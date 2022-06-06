import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 20,
        ),
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).primaryColor,
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 683,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 165,
                    width: double.infinity,
                    color: Theme.of(context).primaryColor,
                  ),
                  Positioned(
                    left: 36,
                    top: 16,
                    child: Container(
                      height: 133,
                      width: 133,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Image.network(
                          'https://media-exp1.licdn.com/dms/image/C4D03AQElf0uPrqkoxA/profile-displayphoto-shrink_100_100/0/1652299462640?e=1660176000&v=beta&t=5J1xLdpOynCT4akMbByRVeGjvQVGgt5JMLcKMtlpN0w',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                      left: 177,
                      top: 38,
                      child: Text(
                        'Student\'s \nName',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                        ),
                      )),
                  const Positioned(
                    left: 177,
                    top: 106,
                    child: Text(
                      'name@email.com',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Container(
                    width: 303,
                    height: 98,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 16),
                          child: const CircleAvatar(radius: 39.5),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Attendence Percentage',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Container(
                    width: 303,
                    height: 223,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
                          child: Text(
                            'Class',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(21, 21, 21, 0.5),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                          child: Text(
                            'Class',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                          ),
                        ),
                        Divider(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                          child: Text(
                            'Parent\'s Name',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(21, 21, 21, 0.5),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                          child: Text(
                            'Father\'s Name',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                          child: Text(
                            'Mother\'s Name',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                          ),
                        ),
                        Divider(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                          child: Text(
                            'Teacher\'s Name',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(21, 21, 21, 0.5),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                          child: Text(
                            'Teacher Name',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Container(
                    width: 303,
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
                          child: Text(
                            'Privacy Policy',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(36, 114, 229, 1),
                            ),
                          ),
                        ),
                        Divider(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                          child: Text(
                            'Terms and Conditions',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(36, 114, 229, 1),
                            ),
                          ),
                        ),
                        Divider(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                          child: Text(
                            'Log Out',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(225, 78, 78, 1),
                            ),
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
      ),
    );
  }
}