import 'package:app_spk/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Kontak Admin",
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
      );
    }

    Widget content() {
      return Expanded(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Aplikasi Spk Pemilihan Laptop Dengan Menggunakan Metode Topsis",
                    textAlign: TextAlign.center,
                    style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium
                    ),
                  ),
                  Image.asset(
                    'assets/icon_headset.png',
                    width: 70,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hubungi admin",
                    style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 44,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 24
                        ),
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                      ),
                      onPressed: () async {
                        const url = "https://wa.me/+6282256330920";
                        if(await canLaunch(url)){
                          await launch(url);
                        }else{
                          throw 'Could Not Launch $url';
                        }
                      },
                      child: Text(
                        "Whatsapp",
                        style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium
                        ),
                      ),
                    ),
                  )
                ],
              )));
    }

    return Column(
      children: [header(), content()],
    );
  }
}
