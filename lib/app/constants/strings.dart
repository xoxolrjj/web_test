// class Item {
//   String? location;
//   String? category;
//   String? price;

//   Item({this.location, this.category, this.price});

//   static List<Item> searchListing = [
//     Item(location: "New York", category: "Apartment", price: "\$0-\$100k"),
//     Item(location: "Los Angeles", category: "House", price: "\$100k-\$200k"),
//     Item(location: "Chicago", category: "Condo", price: "\$200k-\$300k"),
//     Item(location: "Houston", category: "Land", price: "\$300k+"),
//   ];
// }

class FeaturedProperty {
  final String image;
  final String type;
  final String title;
  final int beds;
  final int baths;
  final int areas;
  final String price;
  final int cars;
  final bool isNew;
  final String bed;
  final String bath;
  final String area;
  final String description;
  final String car;

  FeaturedProperty(
      {required this.image,
      required this.type,
      required this.title,
      required this.beds,
      required this.baths,
      required this.areas,
      required this.price,
      required this.isNew,
      required this.bed,
      required this.bath,
      required this.area,
      required this.description,
      required this.car,
      required this.cars});

  static List<FeaturedProperty> featuredProperties = [
    FeaturedProperty(
      image: 'assets/images/c3.jpg',
      type: 'BEACHFRONT IN BATANGAS',
      title: 'The Grove',
      beds: 3,
      cars: 2,
      baths: 1,
      areas: 500,
      price: '100,000',
      isNew: true,
      bed: 'assets/icons/bed.svg',
      bath: 'assets/icons/bathtub.svg',
      area: 'assets/icons/sqm.svg',
      description:
          'Description: \nAliquam vel tincidunt sem, sit amet sollicitudin nibh. Vestibulum in congue libero. Etiam dictum, ligula sollicitudin mattis efficitur, ligula turpis lobortis lectus,',
      car: 'assets/icons/car.svg',
    ),
    FeaturedProperty(
        image: 'assets/images/c3.jpg',
        type: 'BGC LUXURY CONDO',
        title: 'The Grove',
        beds: 4,
        cars: 1,
        baths: 2,
        areas: 1000,
        price: '100,000,000',
        isNew: true,
        bed: 'assets/icons/bed.svg',
        bath: 'assets/icons/bathtub.svg',
        area: 'assets/icons/sqm.svg',
        description:
            'Description: \nAliquam vel tincidunt sem, sit amet sollicitudin nibh. Vestibulum in congue libero. Etiam dictum, ligula sollicitudin mattis efficitur, ligula turpis lobortis lectus,',
        car: 'assets/icons/car.svg'),
    FeaturedProperty(
      image: 'assets/images/c3.JPG',
      type: 'HOUSE BY LAKE',
      title: 'The Grove',
      beds: 5,
      cars: 3,
      baths: 2,
      areas: 1500,
      price: '300,000,000',
      isNew: true,
      bed: 'assets/icons/bed.svg',
      bath: 'assets/icons/bathtub.svg',
      area: 'assets/icons/sqm.svg',
      description:
          'Description: \nThe Grove is a new development. t amet sollicitudin nibh. Vestibulum in estibulum in congue libero. Etiam dictum, ligula sollicitudin mattis efficitur, ligula tu',
      car: 'assets/icons/car.svg',
    ),
  ];
}



  // final List<FeaturedProperty> featuredProperties = [
  //   FeaturedProperty(
  //     image: 'assets/images/c1.jpg',
  //     type: 'BEACH FRONT IN BATANGAS',
  //     title: 'The Grove',
  //     beds: 3,
  //     baths: 2,
  //     areas: 500,
  //     price: 100000,
  //     isNew: true,
  //     bed: 'assets/icons/bed.svg',
  //     bath: 'assets/icons/bathtub.svg',
  //     area: 'assets/icons/sqm.svg',
  //     description: 'The Grove is a new development located in the heart of the city. It offers a variety of amenities and is perfect for those looking for a modern and convenient lifestyle.',
  //   ),
  //   FeaturedProperty(
  //     image: 'assets/images/c2.jpg',
  //     type: 'BGC LUXURY CONDO',
  //     title: 'The Grove',
  //     beds: 3,
  //     baths: 2,
  //     areas: 1000,
  //     price: 100000,
  //     isNew: true,
  //     bed: 'assets/icons/bed.svg',
  //     bath: 'assets/icons/bathtub.svg',
  //     area: 'assets/icons/sqm.svg',
  //     description: 'The Grove is a new development located in the heart of the city. It offers a variety of amenities and is perfect for those looking for a modern and convenient lifestyle.'
  //   ),
  //   FeaturedProperty(
  //     image: 'assets/images/c3.JPG',
  //     type: 'HOUSE BY LAKE',
  //     title: 'The Grove',
  //     beds: 3,
  //     baths: 2,
  //     areas: 1500,
  //     price: 100000,
  //     isNew: true,
  //     bed: 'assets/icons/bed.svg',
  //     bath: 'assets/icons/bathtub.svg',
  //     area: 'assets/icons/sqm.svg',
  //     description: 'The Grove is a new development located in the heart of the city. It offers a variety of amenities and is perfect for those looking for a modern and convenient lifestyle.'
  //   ),
    // FeaturedProperty(
    //   image: 'assets/images/c1.jpg',
    //   type: 'RENTAL',
    //   title: 'The Grove',
    //   beds: 3,
    //   baths: 2,
    //   areas: 200,
    //   price: 100000,
    //   isNew: true,
    //   bed: 'assets/icons/bed.svg',
    //   bath: 'assets/icons/bathtub.svg',
    //   area: 'assets/icons/sqm.svg',
    // ),
    // FeaturedProperty(
    //   image: 'assets/images/c2.jpg',
    //   type: 'AUCTION',
    //   title: 'The Grove',
    //   beds: 3,
    //   baths: 2,
    //   areas: 200,
    //   price: 100000,
    //   isNew: true,
    //   bed: 'assets/icons/bed.svg',
    //   bath: 'assets/icons/bathtub.svg',
    //   area: 'assets/icons/sqm.svg',
    // ),
//   ];
// }
