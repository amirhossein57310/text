import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

TextEditingController controller = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  var massage = '';
  bool error = false;
  FocusNode listener = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: 348,
                child: TextField(
                  controller: controller,
                  maxLines: 1,
                  focusNode: listener,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //   _validateInput(value);
                  },
                  //autovalidateMode: AutovalidateMode.always,
                  decoration: InputDecoration(
                    hintText: 'شماره موبایل یا ایمیل',
                    alignLabelWithHint: true,
                    labelStyle: TextStyle(
                        // fontSize: screenWidth * 0.05,
                        // color: listener.hasFocus
                        //     ? const Color(0xff2E8530)
                        //     : const Color(0xffC5C5C5),
                        ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide:
                          BorderSide(color: Color(0xffC5C5C5), width: 1.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide:
                          BorderSide(width: 1, color: Color(0xff2E8530)),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    ),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    ),
                    errorText: error ? massage : null,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.text.isEmpty) {
                  setState(() {
                    error = true;
                    massage = 'fill';
                  });
                }
              },
              child: Text('click'),
            ),
          ],
        ),
      ),
    );
  }
}
