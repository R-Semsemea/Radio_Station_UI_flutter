import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:radio_station/global_constants.dart';

const Text welcomeLabel = Text(
  "Welcome Back!",
  textAlign: TextAlign.center,
  style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: circular),
);

const Text loginLabel = Text("Login to continue Radio App",
    style: TextStyle(
        fontSize: 14, color: Color(0xff7B7B8B), fontFamily: circular));

Widget inputField(TextInputType type, String hint, String prefixIcon,
    {bool? obscureText}) {
  return LayoutBuilder(builder: (context, constraints) {
    return TextFormField(
      //textAlign: TextAlign.left,
      keyboardType: type,
      obscureText: obscureText ?? false,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xff1D192C),
        hintText: hint,
        hintStyle: const TextStyle(
            fontSize: 12, color: Color(0xff7477A0), fontFamily: circular),
        alignLabelWithHint: true,
        prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            //child: SvgPicture.asset(prefixIcon),
            child: SizedBox(
                width: constraints.maxWidth * 0.0474,
                height: constraints.maxHeight * 0.2212,
                child: Image.asset(prefixIcon)

                /*IconButton(
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.zero,
                icon: Image.asset("${pngIconsPath}mail.png"),
                onPressed: ()=> null,
              ),*/
                )),
      ),
    );
  });
}

const Text rememberMeLabel = Text(
  "Remember me",
  style:
      TextStyle(fontSize: 12, color: Color(0xff747895), fontFamily: circular),
);

const Text forgotPasswordLabel = Text(
  "Forgot password?",
  style:
      TextStyle(fontSize: 12, color: Color(0xff747895), fontFamily: circular),
);

Widget button(double width, double height,
    {Color? color, List<Color>? colors}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: color,
      gradient: colors == null
          ? null
          : LinearGradient(colors: [
              colors[0],
              colors[1],
            ]),
    ),
    child: TextButton.icon(
      onPressed: () {},
      label: Text(
        "Continue With Facebook",
        style: TextStyle(color: Colors.white),
      ),
      icon: Icon(
        FontAwesomeIcons.facebookF,
        color: Colors.white,
      ),
    ),
  );
}

Widget buildButton(double width, double height, String label,
    {Color? color,
    List<Color>? colors,
    VoidCallback? onTap,
    Color? labelColor,
    double? labelSize,
    String? prefixIcon}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
        gradient: colors == null
            ? null
            : LinearGradient(colors: [
                colors[0],
                colors[1],
              ]),
      ),
      child: Center(
          child: prefixIcon == null
              ? Text(
                  label,
                  style: TextStyle(
                      fontSize: labelSize ?? 12,
                      color: labelColor ?? Colors.white,
                      fontFamily: circular),
                )
              : TextButton.icon(
                  onPressed: onTap,
                  label: Text(
                    label,
                    style: TextStyle(
                        fontSize: labelSize ?? 12,
                        color: labelColor ?? Colors.white,
                        fontFamily: circular),
                  ),
                  icon: Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                  ),
                )),
    ),
  );
}

Text orLabel = const Text(
  "OR",
  style:
      TextStyle(fontSize: 12, color: Color(0xff7B7B8B), fontFamily: circular),
);
