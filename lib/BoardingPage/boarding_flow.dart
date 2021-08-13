library boarding_flow;

import 'package:boarding_flow/BoardingPage/page.dart';
import 'package:flutter/material.dart';

class CustomBordingPage extends StatefulWidget {
  final List<Pages> boardingPages;
  final Function? lastPageAction;
  final Color indicatorColor;
  final Color indicatorCurrentColor;
  CustomBordingPage(
      {required this.boardingPages,
      this.lastPageAction,
      this.indicatorColor = Colors.black,
      this.indicatorCurrentColor = Colors.purple});
  @override
  _CustomBordingPageState1 createState() => _CustomBordingPageState1();
}

class _CustomBordingPageState1 extends State<CustomBordingPage> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Text(
              "Skip",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: widget.indicatorCurrentColor,
              ),
            ),
            onPressed: widget.lastPageAction as void Function()?,
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            children: [
              //Bording image, title and description
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_pageController.page == widget.boardingPages.length) {
                        _pageController.animateToPage(0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      } else {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      }
                    });
                  },
                  child: PageView(
                    controller: _pageController,
                    children: widget.boardingPages,
                    onPageChanged: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(
                height: 100,
              ),

              currentIndex + 1 == widget.boardingPages.length
                  ? GestureDetector(
                      onTap: widget.lastPageAction as void Function()?,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: widget.indicatorCurrentColor,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : Text(""),

              //Page Indicator
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    widget.boardingPages.length,
                    (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: index == currentIndex ? 28 : 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: index == currentIndex
                                ? widget.indicatorCurrentColor
                                : widget.indicatorColor,
                            borderRadius: BorderRadius.circular(10)),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
