import 'package:flutter/material.dart';
import 'package:paypal/screens/login.dart';
import 'package:paypal/shared/rounded_button.dart';
import 'package:paypal/utils/data.dart';
import 'package:paypal/utils/constants.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  final PageController _pageController = PageController(initialPage: 0);
  final int _totalPages = 3;
  int _currentPage = 0;

  List<Widget> _buildPageIndicator(){
    List<Widget> list = [];
      for (var i = 0; i < _totalPages; i++){
        list.add(_indicator(i == _currentPage));
      }
      return list;
  }

     Widget _indicator(bool isActive){
        return AnimatedContainer(
            duration: Duration(milliseconds: 150),
          margin: EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? 16 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: isActive ? kSecondaryColor : Colors.grey[300],
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            )
          ),
        );
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: PageView(
                physics: BouncingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page){
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: getOnboardingPages().map((item) => renderPageItem(item)).toList(),
              ),
          ),
         Padding(
             padding: EdgeInsets.all(48),
           child: Container(
             height: 48,
             child: _currentPage != _totalPages -1
             ? Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 GestureDetector(
                   onTap: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => LoginScreen()),
                     );
                   },
                   child: Text(
                     'Skip',
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.bold,
                       color: kPrimaryColor,
                     ),
                   ),
                 ),
                 Row(
                   children: _buildPageIndicator(),
                 ),
                 GestureDetector(
                   onTap: () {
                     _pageController.nextPage(
                         duration: Duration(milliseconds: 500),
                         curve: Curves.ease,
                     );
                   },
                   child: Text(
                     'Next',
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.bold,
                       color: kPrimaryColor,
                     ),
                   ),
                 ),
               ],
             )
                 :RoundedButton(
               onPress: (){
                 Navigator.push(
                     context, 
                   MaterialPageRoute(builder: (context) => LoginScreen()),
                 );
               },
               text: "Let's Start",
             ),
           ),
         ),
        ],
      ),
    );
  }
  Widget renderPageItem(OnboardingPage page){
    return Padding(
        padding: EdgeInsets.all(48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              page.imageUrl,
              height: 250 ,
              fit: BoxFit.fitHeight,
            ),
          ),
       SizedBox(
         height: 64,
       ),
          Center(
            child: Text(
              page.title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
        Center(
          child: Container(
            height: 2,
            width: 100,
            color: Colors.grey[300],
          ),
        ),
          SizedBox(
            height: 16,
          ),
          Center(
            child: Text(
              page.description,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: kGreyColor,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
