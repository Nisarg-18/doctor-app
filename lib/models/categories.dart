import 'package:doctor/models/subCategories.dart';

class Categories {
  Categories({
    required this.name,
    required this.subCategories,
  });
  String name;
  List<SubCategories> subCategories;
}

List<Categories> allCategories = [
  Categories(name: 'Adults', subCategories: [
    SubCategories(
        mainName: 'Cough &\nCold',
        noOfDoctors: '10',
        image: 'assets/images/cold.png'),
    SubCategories(
        mainName: 'Heart\nSpecialist',
        noOfDoctors: '14',
        image: 'assets/images/heart.png'),
    SubCategories(
        mainName: 'Dentist',
        noOfDoctors: '7',
        image: 'assets/images/dentist.png'),
  ]),
  Categories(name: 'Children', subCategories: [
    SubCategories(
      mainName: 'General\nDoctor',
      noOfDoctors: '4',
      image: 'assets/images/cold.png',
    ),
    SubCategories(
        mainName: 'Cough &\nCold',
        noOfDoctors: '10',
        image: 'assets/images/cold.png'),
    SubCategories(
        mainName: 'Dentist',
        noOfDoctors: '7',
        image: 'assets/images/dentist.png'),
  ]),
  Categories(name: 'Women', subCategories: [
    SubCategories(
        mainName: 'Dentist',
        noOfDoctors: '7',
        image: 'assets/images/dentist.png'),
    SubCategories(
        mainName: 'Heart\nSpecialist',
        noOfDoctors: '14',
        image: 'assets/images/heart.png'),
  ]),
  Categories(name: 'Men', subCategories: [
    SubCategories(
        mainName: 'Cough &\nCold',
        noOfDoctors: '10',
        image: 'assets/images/cold.png'),
    SubCategories(
        mainName: 'Heart\nSpecialist',
        noOfDoctors: '14',
        image: 'assets/images/heart.png'),
  ]),
];
