import 'package:doctor/models/categories.dart';
import 'package:doctor/widgets/customWidgets.dart';
import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  final id;
  const Cards({Key? key, required this.id}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  List colors = [
    Color(0xFFfcba7d),
    Color(0xFFf69384),
    Color(0xFFeacacb),
  ];
  @override
  Widget build(BuildContext context) {
    var customHeight = MediaQuery.of(context).size.height;
    var customWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: allCategories[widget.id].subCategories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colors[index],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: customWidth * 0.3,
                    child: Text(
                      allCategories[widget.id].subCategories[index].mainName,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  verticalSpace(customHeight * 0.01),
                  Text(
                    '${allCategories[widget.id].subCategories[index].noOfDoctors} doctors',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  verticalSpace(customHeight * 0.05),
                  Image.asset(
                    allCategories[widget.id].subCategories[index].image,
                    width: customWidth * 0.28,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
