class FoodModel {
  String? name;
  String? image;
  String? loc;
  String? type;
  String? flavor;
  String? year;
  String? time;

  FoodModel({
    this.name,
    this.image,
    this.loc,
    this.type,
    this.flavor,
    this.year,
    this.time,
  });
}

final List<FoodModel> food = [
  FoodModel(
    name: 'Nasi Goreng',
    image: 'assets/images/nasigoreng.png',
    loc: 'Jakarta',
    type: 'Kering',
    flavor: 'Pedas',
    year: '4000SM',
    time: '30 menit yang lalu',
  ),
  FoodModel(
    name: 'Sate',
    image: 'assets/images/sate.png',
    loc: 'Jawa Timur',
    type: 'Basah',
    flavor: 'Asam',
    year: '4000SM',
    time: '1 jam yang lalu',
  ),
  FoodModel(
    name: 'Gado-Gado',
    image: 'assets/images/gado2.png',
    loc: 'Jawa Timur',
    type: 'Basah',
    flavor: 'Pedas',
    year: '4000SM',
    time: '2 jam yang lalu',
  ),
  FoodModel(
    name: 'Rendang',
    image: 'assets/images/rendang.png',
    loc: 'Sumatra Utara',
    type: 'Basah',
    flavor: 'Asam',
    year: '4000SM',
    time: '3 jam yang lalu',
  ),
];
