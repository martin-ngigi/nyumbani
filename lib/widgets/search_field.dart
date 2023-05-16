import 'package:flutter/material.dart';
class Searchfield extends StatelessWidget {
  const Searchfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Container(
      height: 40,
      decoration: BoxDecoration(
         // color: Colors.yellow,
          borderRadius: BorderRadius.circular(20)
      ),
      child: textField(
          hintText: "Search",
          icon: Icons.search,
          textInputType: TextInputType.text,
          maxLines: 1,
          controller: searchController
      ),
    );
  }

  Widget textField({
    required String hintText,
    required IconData icon,
    required TextInputType textInputType,
    required int maxLines,
    required TextEditingController controller,
  }){
    return Padding(
      padding: EdgeInsets.only(top: 0),
      child: TextField(
        cursorColor: Colors.green,
        controller: controller,
        keyboardType: textInputType,
        maxLines: maxLines,
        decoration: InputDecoration(
            labelText: hintText,
            hintText: hintText,
            hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.grey.shade600,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.black)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.green)
            ),

            suffixIcon: Container(
              decoration: const BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
              ),
              // padding: EdgeInsets.all(8),
              child: InkWell(
                onTap: (){
                 
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.search),
                  ],
                ),
              ),
            ),
            alignLabelWithHint: true,
            fillColor: Colors.grey[300],
            filled: true
        ),
      ),
    );
  }
}

