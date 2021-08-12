class Product{
  final String photo;
  final String name;
  final String names;
  final String description;
  final String price;
  final String fees;
  bool isFavorite;

  Product(
    {
      required this.photo,
      required this.name,
      required this.names,
      required this.description,
      required this.price,
      required this.fees,
      this.isFavorite = false,
    }
  );
}