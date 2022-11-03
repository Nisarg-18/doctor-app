import 'package:doctor/models/categories.dart';
import 'package:doctor/screens/docDetails.dart';
import 'package:doctor/widgets/cards.dart';
import 'package:doctor/widgets/customWidgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  var selectedIndex = 0;
  late TabController _tabController;

  List<Widget> titles = [];
  List<Widget> subTitles = [];
  int tabCounts = 0;
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < allCategories.length; i++) {
      tabCounts = allCategories.length;
      titles.add(Tab(
        text: allCategories[i].name,
      ));
      subTitles.add(Cards(id: i));
    }
    _tabController =
        TabController(initialIndex: 0, length: tabCounts, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var customHeight = MediaQuery.of(context).size.height;
    var customWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(customHeight * 0.08),
              const Text(
                'Find Your\nConsultation',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpace(customHeight * 0.03),
              TextFormField(
                controller: searchController,
                keyboardType: TextInputType.text,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: const Color(0xFFF1F1F1),
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.2),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.red, width: 1.2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.2),
                  ),
                ),
              ),
              verticalSpace(customHeight * 0.03),
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              verticalSpace(customHeight * 0.01),
              SizedBox(
                height: customHeight * 0.45,
                width: customWidth,
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      controller: _tabController,
                      indicatorColor: Colors.transparent,
                      indicatorWeight: 4,
                      labelColor: Colors.deepOrange,
                      unselectedLabelColor: Colors.black,
                      labelStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                      unselectedLabelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400),
                      tabs: titles,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: subTitles,
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(customHeight * 0.03),
              const Text(
                'Doctors',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              verticalSpace(customHeight * 0.01),
              SizedBox(
                width: customWidth,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const DocDetailsScreen();
                            }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFffefe2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(2.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xFFfbba7e),
                                        ),
                                        child: Image.asset(
                                          'assets/images/doctor.png',
                                          width: customWidth * 0.1,
                                        ),
                                      ),
                                      horizontalSpace(customWidth * 0.03),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Dr. ABC',
                                            style: const TextStyle(
                                              color: Colors.deepOrange,
                                              fontSize: 15,
                                            ),
                                          ),
                                          const Text(
                                            'Heart Specialist',
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: const Color(0xFFfaba7e),
                                          padding: const EdgeInsets.all(8),
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          )),
                                      onPressed: () {},
                                      child: const Text(
                                        'Call',
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
