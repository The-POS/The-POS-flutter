import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    Key? key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  final String productImage;
  final String productName;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(
              productImage,
              width: 100,
              height: 100,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: <Widget>[
                Text(
                  productName,
                  style: GoogleFonts.cairo(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '$productPrice',
                      style: GoogleFonts.cairo(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'ريال',
                      style: GoogleFonts.cairo(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}