import 'package:doctor/widgets/customWidgets.dart';
import 'package:flutter/material.dart';

class DocDetailsScreen extends StatefulWidget {
  const DocDetailsScreen({Key? key}) : super(key: key);

  @override
  State<DocDetailsScreen> createState() => _DocDetailsScreenState();
}

class _DocDetailsScreenState extends State<DocDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var customHeight = MediaQuery.of(context).size.height;
    var customWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(customHeight * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFfbba7e),
                        ),
                        child: Image.asset(
                          'assets/images/doctor.png',
                          width: customWidth * 0.4,
                        ),
                      ),
                      horizontalSpace(customWidth * 0.03),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr. ABC',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                          verticalSpace(customHeight * 0.01),
                          const Text(
                            'Heart Specialist',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          verticalSpace(customHeight * 0.02),
                          Row(
                            children: [
                              Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFfde5cb),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.messenger_outlined,
                                    color: const Color(0xFFfebc7c),
                                  )),
                              horizontalSpace(
                                customWidth * 0.025,
                              ),
                              Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFfde5cb),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.phone,
                                    color: Colors.red,
                                  )),
                              horizontalSpace(
                                customWidth * 0.025,
                              ),
                              Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFfde5cb),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.video_call,
                                    color: Colors.grey,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              verticalSpace(customHeight * 0.04),
              const Text(
                'About',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              verticalSpace(customHeight * 0.02),
              const Text(
                'vitae sodales erat ornare. Vestibulum euismod mi sed urna aliquam eleifend. Pellentesque convallis tempor elit quis rutrum. Donec dignissim at elit ac ultricies. Nulla facilisi. Donec malesuada accumsan lectus, at mattis eros sollicitudin eu. Curabitur finibus est in sollicitudin accumsan. Donec egestas orci vel orci lacinia scelerisque. Aenean sed ultricies massa, non tristique orci.',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              verticalSpace(customHeight * 0.03),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                  ),
                  horizontalSpace(customWidth * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Address',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      verticalSpace(customHeight * 0.005),
                      SizedBox(
                        width: customWidth * 0.5,
                        child: const Text(
                          'vitae sodales erat ornare. Vestibulum euismod mi sed ur',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              verticalSpace(customHeight * 0.03),
              Row(
                children: [
                  const Icon(
                    Icons.timer,
                    color: Colors.grey,
                  ),
                  horizontalSpace(customWidth * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Daily Practice',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      verticalSpace(customHeight * 0.005),
                      SizedBox(
                        width: customWidth * 0.5,
                        child: const Text(
                          'Mon-Fri\nOpen till 8pm',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              verticalSpace(customHeight * 0.02),
              const Text(
                'Activity',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              verticalSpace(customHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0XFFfeba7d),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xFFf5cda5),
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.list,
                              color: Colors.white,
                            ),
                          ),
                          horizontalSpace(customWidth * 0.02),
                          Text(
                            'List of\nSchedule',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFFa4a4a4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xFFbababa),
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.list,
                              color: Colors.white,
                            ),
                          ),
                          horizontalSpace(customWidth * 0.02),
                          Text(
                            'Doctor\'s\nDaily Post',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpace(customHeight * 0.03),
            ],
          ),
        ),
      )),
    );
  }
}
