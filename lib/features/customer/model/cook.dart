// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:nakhtya_app/utils/constants/image_strings.dart';

class Cook {
  final int id;
  final String name;
  final String image;
  final double price;
  final String rating;
  final String onlineHour;
  final String address;

  Cook({
    required this.id,
    required this.name,
    required this.image,
    this.price = 0,
    this.rating = "0",
    this.onlineHour = "",
    this.address = "",
  });
}

class CookList {
  List<Cook> cooks = [
    Cook(
      id: 1,
      name: "John Doe",
      image: TImages.cookuser1,
      price: 2000,
      rating: "4.7",
      onlineHour: "1 hour ago",
      address: "Dallu, Kathmandu",
    ),
    Cook(
      id: 2,
      name: "Samantha Jones",
      image: TImages.cookuser2,
      price: 2500,
      rating: "4.5",
      onlineHour: "3 hour ago",
      address: "Thapathali, Kathmandu",
    ),
    Cook(
      id: 3,
      name: "Michael Smith",
      image: TImages.cookuser3,
      price: 3000,
      rating: "3.5",
      onlineHour: "12 hour ago",
      address: "Thamel, Kathmandu",
    ),
    Cook(
      id: 4,
      name: "Emily Brown",
      image: TImages.cookuser4,
      price: 1500,
      rating: "4.0",
      onlineHour: "2 hour ago",
      address: "Balaju, Kathmandu",
    ),
    Cook(
      id: 5,
      name: "Benjamin Clark",
      image: TImages.cookuser5,
      price: 3500,
      rating: "4.0",
      onlineHour: "1 hour ago",
      address: "Sanepa, Kathmandu",
    ),
  ];
}
