import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool myValue1 = false;
  bool myValue2 = false;
  final List<String> myList = [
    "06:30 pm | 2nd Aug 2021",
    "06:30 pm | 2nd Aug 2021",
    "06:30 pm | 2nd Aug 2021",
    "06:30 pm | 2nd Aug 2021"
  ];
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
          'Settings',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Center(
        child: Container(
          height: 683,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16,left: 16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Container(
                    width: 303,
                    height: 125,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Dark Mode',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            ),
                            Switch.adaptive(
                              activeColor: Colors.blue,
                              value: myValue1,
                              onChanged: (newValue) {
                                setState(() {
                                  myValue1 = newValue;
                                });
                              },
                            ),
                          ],
                        ),
                        Divider(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Notification',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            ),
                            Switch.adaptive(
                              activeColor: Colors.blue,
                              value: myValue2,
                              onChanged: (newValue) {
                                setState(() {
                                  myValue2 = newValue;
                                });
                              },
                            ),
                          ],
                        ),
                        Divider(height: 5,),
                        const Text(
                          'Change Password',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(0, 106, 255, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: const Text(
                  'Transactions',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(21, 21, 21, 1),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                child: const Text(
                  '2021-22 Session',
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
                padding: const EdgeInsets.fromLTRB(14, 16, 14, 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: RaisedButton(
                    elevation: 5,
                    focusElevation: 40,
                    onPressed: () {},
                    color: Theme.of(context).primaryColor,
                    child: Container(
                      height: 49,
                      width: 302,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.wallet_membership,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Pay Fees',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: const Text(
                  'Transaction History',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(21, 21, 21, 1),
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
                    height: 114,
                    color: Colors.white,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 21,
                          child: ListTile(
                            title: Text(
                              myList[index],
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            ),
                            trailing: const Text(
                              "Rs 20,000",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: myList.length,
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
