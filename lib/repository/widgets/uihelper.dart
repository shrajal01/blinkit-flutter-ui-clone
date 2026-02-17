import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText(
      {required String text,
        required Color color,
        required FontWeight fontweight,
        String? fontfamily,
        required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: fontfamily ?? "regular",
          fontWeight: fontweight,
          color: color),
    );
  }
  static CustomTextField({required TextEditingController controller}) {
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: const Color(0XFFC5C5C5)),
      ),

      child: TextField(
        controller: controller,
        style: const TextStyle(fontSize: 14),

        decoration: InputDecoration(
          isDense: true,
          hintText: "Search 'ice-cream'",
          hintStyle: const TextStyle(color: Colors.grey),

          // 👇 Text vertical center
          contentPadding: const EdgeInsets.symmetric(vertical: 10),

          // 🔍 Search icon
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              "assets/images/search.png",
              width: 18,
              height: 18,
              fit: BoxFit.contain,
            ),
          ),

          // 🎤 Divider + Mic
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [

                // Vertical divider
                Container(
                  width: 1,
                  height: 22,
                  color: const Color(0XFFC5C5C5),
                ),

                const SizedBox(width: 8),

                // Mic icon
                SizedBox(
                  width: 18,
                  height: 18,
                  child: Image.asset(
                    "assets/images/mic 1.png",
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(width: 6),
              ],
            ),
          ),

          border: InputBorder.none,
        ),
      ),
    );
  }


  static CustomButton(VoidCallback callback){
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Color(0XFF27AF34)
          ),
          borderRadius: BorderRadius.circular(4)
      ),
      child: Center(child: Text("Add",style: TextStyle(fontSize: 8,color: Color(0XFF27AF34)),),),
    );
  }
}