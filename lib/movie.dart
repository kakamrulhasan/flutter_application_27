

class Movie {
  String title, image, color;
  int price;

  Movie(
      {required this.title,
      required this.color,
      required this.image,
      required this.price});
}

List<Movie> movieList = [
  Movie(title: 'T-shirt', color: 'red', image: 'assets/4.jpg', price:  32),
  Movie(title: 'full shirt', color: 'yello', image: 'assets/2.jpeg', price: 37),
  Movie(title: 'half shirt', color: 'black', image: 'assets/3.jpg', price: 70),
];
