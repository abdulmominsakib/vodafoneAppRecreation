import 'package:flutter/material.dart';

/* <----------- Extras ------------> */
String imageUrl =
    'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80';

String posterImageUrl1 =
    'https://static.hub.91mobiles.com/wp-content/uploads/2019/09/Samsung-Galaxy-A90-5G.jpg';

TextStyle buildTextStyle() {
  return TextStyle(fontWeight: FontWeight.bold, fontSize: 35);
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      /* <----------- Gradient Floating Action Button ------------> */
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: floatingMessageButton(),
      ),
      bottomNavigationBar: Container(
        height: mediaQuery.size.height * 0.08,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /* <----------- Dashboard ------------> */
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFFFFF2F1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/vodafone_icon.png',
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Dashboard',
                    style: TextStyle(color: Color(0xFFEC2420)),
                  ),
                ],
              ),
            ),
            // Other
            Icon(
              Icons.add_circle,
              size: 30,
              color: Color(0xFFA4A2A0),
            ),
            Icon(
              Icons.dashboard,
              size: 30,
              color: Color(0xFFA4A2A0),
            ),
            Icon(
              Icons.more_vert,
              size: 30,
              color: Color(0xFFA4A2A0),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: -25,
            left: -60,
            child: Opacity(
              opacity: 0.05,
              child: Image.asset(
                'assets/images/background.png',
                width: 300,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xFFF7F7F7),
                        Color(0xFFFFFFFF),
                      ]),
                ),
                child: Column(
                  children: [
                    /* <----------- AppBar ------------> */
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /* <----------- Welcome Text ------------> */
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi',
                                style: buildTextStyle()
                                    .copyWith(fontWeight: FontWeight.normal),
                              ),
                              Text(
                                'Mark!',
                                style: buildTextStyle(),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(imageUrl),
                          ),
                        ],
                      ),
                    ),
                    /* <----------- End Appbar ------------> */

                    /* <----------- List Of Values ------------> */
                    Container(
                      height: mediaQuery.size.height * 0.3,
                      margin: EdgeInsets.only(left: 15),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          SlideCard(
                            mediaQuery: mediaQuery,
                            icon: Icons.monetization_on,
                            valueType: 'Balance',
                            valueAvailable: '\$62.90',
                            valueCharge: 'Charge',
                            isCardActive: true,
                          ),
                          SlideCard(
                            mediaQuery: mediaQuery,
                            icon: Icons.wifi_tethering,
                            valueType: 'Data',
                            valueAvailable: '16.9 GB',
                            valueCharge: 'Charge Data',
                            isCardActive: false,
                          ),
                          SlideCard(
                            mediaQuery: mediaQuery,
                            icon: Icons.sms,
                            valueType: 'Texts',
                            valueAvailable: '200 per day',
                            valueCharge: 'Charge texts',
                            isCardActive: false,
                          ),
                        ],
                      ),
                    ),
                    /* <----------- End Of Value List ------------> */

                    /* <----------- Poster List ------------> */
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      child: Row(
                        children: [
                          /* <-----------------------> 
                                         You can create a list of network image, or You can use like this. That's up to you how you want to use it    
                                           <-----------------------> */
                          // This is A single Poster
                          Container(
                            width: mediaQuery.size.width * 0.8,
                            child: Stack(children: [
                              Container(
                                foregroundDecoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.black,
                                        Colors.transparent
                                      ]),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    posterImageUrl1,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 20,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xFFEB3548),
                                            Color(0xFFF45C43),
                                          ])),
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Buy Now!',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                    /* <----------- Poster Ends ------------> */

                    /* <-----------------------> 
                        The usage thing is unclear that's why I am creating the top up section    
                     <-----------------------> */
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Top Up',
                            style: buildTextStyle().copyWith(fontSize: 25),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              children: [
                                TopUpItem(
                                  iconName: Icons.flash_on,
                                  title: 'Top Up by this number',
                                  subtitle: 'Add Credit to this phone',
                                ),
                                TopUpItem(
                                  iconName: Icons.upload_file,
                                  title: 'Auto Top up',
                                  subtitle: 'Setup regular top up',
                                ),
                                TopUpItem(
                                  iconName: Icons.credit_card,
                                  title: 'Manage Payment Cards',
                                  subtitle: 'Add or remove any payment card',
                                ),
                                TopUpItem(
                                  iconName: Icons.list,
                                  title: 'Activate Voucher',
                                  subtitle: 'Add credit to any voucher',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /* <----------- End Of Top Up Section ------------> */

                    // Some Extra space for complete view
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/* <-----------------------> 
    Here are some component    
 <-----------------------> */

class TopUpItem extends StatelessWidget {
  const TopUpItem({
    Key key,
    @required this.iconName,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final IconData iconName;
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListTile(
        leading: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xFFF7F7F5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              iconName,
              color: Color(0xFFA3A19F),
            )),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}

floatingMessageButton() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: Icon(Icons.chat),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(1, 5),
          )
        ],
        shape: BoxShape.circle,
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF45C43),
              Color(0xFFEB3548),
            ])),
  );
}

class SlideCard extends StatelessWidget {
  const SlideCard({
    Key key,
    @required this.mediaQuery,
    this.icon,
    this.valueType,
    this.valueAvailable,
    this.valueCharge,
    this.isCardActive,
  }) : super(key: key);

  final MediaQueryData mediaQuery;
  final IconData icon;
  final String valueType;
  final String valueAvailable;
  final String valueCharge;
  final bool isCardActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQuery.size.height * 0.3,
      width: mediaQuery.size.width * 0.4,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              color: Colors.black.withOpacity(0.05),
              offset: Offset(2, 0),
              blurRadius: 10,
            )
          ],
          gradient: isCardActive
              ? LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topCenter,
                  stops: [
                      0.5,
                      1,
                    ],
                  colors: [
                      Color(0xFFF45C43),
                      Color(0xFFEB3548),
                    ])
              : null),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        icon,
                        color: isCardActive ? Colors.white : Color(0xFFE90300),
                        size: 30,
                      ),
                    ),
                  ),
                  Text(
                    valueType,
                    style: buildTextStyle().copyWith(
                      color: isCardActive ? Color(0xFFF9C2BF) : Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    valueAvailable,
                    style: buildTextStyle().copyWith(
                      color: isCardActive ? Colors.white : Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(height: 1, color: Colors.white.withOpacity(0.2)),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        valueCharge,
                        style: buildTextStyle().copyWith(
                          fontSize: 16,
                          color: isCardActive ? Colors.white : Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: isCardActive ? Colors.white : Colors.black,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
