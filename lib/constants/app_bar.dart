import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key})
      : preferredSize = const Size.fromHeight(100),
        super(
          key: key,
        );

  @override
  final Size preferredSize; // default is 56.0

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xff05c3de),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    filled: true, // Enables filling
                    fillColor: Colors.white, // Sets the background color

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "hint_text",
                    prefixIcon: Container(
                      margin: const EdgeInsets.only(
                          left: 15, bottom: 10, right: 15, top: 16),
                      child: Icon(Icons.search),
                      // child: SvgPicture.asset(
                      //   'assets/icons/search_icon.svg',
                      // ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
