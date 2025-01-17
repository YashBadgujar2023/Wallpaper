import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double shortside = MediaQuery.of(context).size.shortestSide;
    double longestside = MediaQuery.of(context).size.longestSide;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: width > 700 ? shortside * 0.08 : null,
          title: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text("Wallpaper",
                  style: GoogleFonts.kalam(
                      fontWeight: FontWeight.w900,
                      fontSize:
                          shortside * 0.04 < 25 ? 30 : shortside * 0.04))),
        ),
        body: Container(
          width: width,
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: width > 700 ? width * 0.5 : width,
                    height: height * 0.05,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: "Search...",
                        hintStyle: TextStyle(
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black),
                        filled: true,
                        fillColor:
                            Theme.of(context).brightness == Brightness.dark
                                ? Colors.white38
                                : Colors.black38,
                        suffixIcon: Icon(
                          Icons.search,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: shortside * 0.05,
                ),
                Card(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: (width / 200).toInt() - 1,
                            childAspectRatio: 9 / 16,
                            mainAxisSpacing: shortside * 0.015,
                            crossAxisSpacing: shortside * 0.015),
                        itemCount: 300,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6oXkR5VjWbZ3cnP0bxzzpzVQkpHdOOzG5cw&s",
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
