import 'package:flutter/material.dart';
import 'package:food_web/Components/default_button.dart';
// import 'package:food_web/Screens/Home/Components/menu_item.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final PageController _pageController = PageController(viewportFraction: 0.25);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 20), // Add padding to the left and right sides
      child: Padding(
        padding: EdgeInsets.only(
            top: screenHeight * 0.03), // Add distance to the top
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.03, vertical: screenHeight * 0.01),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(screenWidth * 0.04),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: screenWidth * 0.03,
                color: Colors.black.withOpacity(0.16),
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                height: screenHeight * 0.025,
                alignment: Alignment.topCenter,
              ),
              SizedBox(width: screenWidth * 0.005),
              Text(
                "Foodi".toUpperCase(),
                style: TextStyle(
                  fontSize: screenHeight * 0.02,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Container(
                height:
                    screenHeight * 0.05, // Height of the menu items container
                width: screenWidth *
                    0.3, // Adjust the width based on the number of menu items
                child: PopupMenuButton<String>(
                  icon: Icon(Icons.menu), // Table of contents icon
                  onSelected: (item) {
                    // Handle menu item selection here
                    // You can navigate to different screens based on the selected item
                  },
                  itemBuilder: (context) {
                    // Create the dropdown menu with menu items
                    List<String> menuItems = [
                      "Home",
                      "About",
                      "Pricing",
                      "Contact",
                      "Login"
                    ];
                    return menuItems.map((item) {
                      return PopupMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList();
                  },
                ),
              ),
              SizedBox(
                // Wrap the "Get Started" button with SizedBox to set its width and align it to center
                width: 110, // Set the desired width for the button
                child: Align(
                  alignment:
                      Alignment.center, // Align the button text to center
                  child: DefaultButton(
                    text: "Get Started",
                    press: () {},
                    key: UniqueKey(),
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
