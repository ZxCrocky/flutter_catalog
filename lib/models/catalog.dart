class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iphone 12 Pro",
        description: "Apple iphone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://images.unsplash.com/photo-1617997455403-41f333d44d5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTIlMjBwcm8lMjBtYXh8ZW58MHx8MHx8&w=1000&q=80"),
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  //constructor
  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      description: map["description"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "color": color,
        "image": image,
      };
}
