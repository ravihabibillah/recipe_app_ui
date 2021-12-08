class FoodRecipe {
  String name;
  String imageAsset;
  double rating;
  String totalRate;
  String time;
  String publisher;
  String calorie;
  int portion;
  String publisherAvatar;
  List<String> process;

  FoodRecipe({
    required this.name,
    required this.imageAsset,
    required this.rating,
    required this.totalRate,
    required this.time,
    required this.publisher,
    required this.calorie,
    required this.portion,
    required this.publisherAvatar,
    required this.process,
  });
}

var foodRecipeList = [
  FoodRecipe(
    name: 'Rendang Sapi',
    imageAsset:
        'assets/images/5-resep-bumbu-rendang-daging-sapi-yang-enak-dan-lezat-mudah-dibuat.jpg',
    rating: 4.8,
    totalRate: '120+',
    time: "5 jam",
    publisher: "Kanna Hashimoto",
    calorie: "260 kcal",
    portion: 1,
    publisherAvatar: "assets/images/profile.jpg",
    process: [
      'Haluskan semua bahan Bumbu dengan diulek atau diblender.',
      'Tumis bumbu dengan sedikit minyak goreng hingga wangi.',
      'Masukkan batang serai, daun jeruk, asam kandis dan garam, aduk rata',
      'Tuangi santan dan didihkan, masukkan daging',
      'Masak dengan api kecil selama beberapa jam sampai daging empuk dan bumbu kecoklatan sesuai selera.'
    ],
  ),
  FoodRecipe(
    name: 'Nasi Jamblang',
    imageAsset: 'assets/images/Nasi Jamblang.jpg',
    rating: 4.0,
    totalRate: '80+',
    time: "1 jam",
    publisher: "M Ravi Habibillah",
    calorie: "300 kcal",
    portion: 2,
    publisherAvatar: "assets/images/profile.jpg",
    process: [
      'Haluskan semua bahan Bumbu dengan diulek atau diblender.',
      'Tumis bumbu dengan sedikit minyak goreng hingga wangi.',
      'Masukkan batang serai, daun jeruk, asam kandis dan garam, aduk rata',
      'Tuangi santan dan didihkan, masukkan daging',
      'Masak dengan api kecil selama beberapa jam sampai daging empuk dan bumbu kecoklatan sesuai selera.'
    ],
  ),
  FoodRecipe(
    name: 'Nasi Kuning',
    imageAsset: 'assets/images/Nasi Kuning.jpg',
    rating: 4.5,
    totalRate: '120+',
    time: "1 jam",
    publisher: "Kanna Hashimoto",
    calorie: "320 kcal",
    portion: 3,
    publisherAvatar: "assets/images/profile.jpg",
    process: [
      'Haluskan semua bahan Bumbu dengan diulek atau diblender.',
      'Tumis bumbu dengan sedikit minyak goreng hingga wangi.',
      'Masukkan batang serai, daun jeruk, asam kandis dan garam, aduk rata',
      'Tuangi santan dan didihkan, masukkan daging',
      'Masak dengan api kecil selama beberapa jam sampai daging empuk dan bumbu kecoklatan sesuai selera.'
    ],
  ),
  FoodRecipe(
    name: 'Sate Ayam',
    imageAsset: 'assets/images/sate-ayam.jpg',
    rating: 4.6,
    totalRate: '100+',
    time: "30 menit",
    publisher: "Rahmat Zumarli",
    calorie: "300 kcal",
    portion: 2,
    publisherAvatar: "assets/images/profile.jpg",
    process: [
      'Haluskan semua bahan Bumbu dengan diulek atau diblender.',
      'Tumis bumbu dengan sedikit minyak goreng hingga wangi.',
      'Masukkan batang serai, daun jeruk, asam kandis dan garam, aduk rata',
      'Tuangi santan dan didihkan, masukkan daging',
      'Masak dengan api kecil selama beberapa jam sampai daging empuk dan bumbu kecoklatan sesuai selera.'
    ],
  ),
  FoodRecipe(
    name: 'Nasi Bakar Tempe',
    imageAsset: 'assets/images/nasi_bakar_tempe_MAHI-780x440.jpg',
    rating: 4.0,
    totalRate: '200+',
    time: "30 menit",
    publisher: "Lulu",
    calorie: "300 kcal",
    portion: 3,
    publisherAvatar: "assets/images/profile.jpg",
    process: [
      'Haluskan semua bahan Bumbu dengan diulek atau diblender.',
      'Tumis bumbu dengan sedikit minyak goreng hingga wangi.',
      'Masukkan batang serai, daun jeruk, asam kandis dan garam, aduk rata',
      'Tuangi santan dan didihkan, masukkan daging',
      'Masak dengan api kecil selama beberapa jam sampai daging empuk dan bumbu kecoklatan sesuai selera.'
    ],
  ),
  FoodRecipe(
    name: 'Nasi Goreng Petai',
    imageAsset: 'assets/images/resep-nasi-goreng-petai-spesial-780x440.jpg',
    rating: 3.9,
    totalRate: '170+',
    time: "30 menit",
    publisher: "Lulu",
    calorie: "300 kcal",
    portion: 2,
    publisherAvatar: "assets/images/profile.jpg",
    process: [
      'Haluskan semua bahan Bumbu dengan diulek atau diblender.',
      'Tumis bumbu dengan sedikit minyak goreng hingga wangi.',
      'Masukkan batang serai, daun jeruk, asam kandis dan garam, aduk rata',
      'Tuangi santan dan didihkan, masukkan daging',
      'Masak dengan api kecil selama beberapa jam sampai daging empuk dan bumbu kecoklatan sesuai selera.'
    ],
  ),
  FoodRecipe(
    name: 'Nasi Jamblang',
    imageAsset: 'assets/images/Nasi Jamblang.jpg',
    rating: 4.0,
    totalRate: '80+',
    time: "1 jam",
    publisher: "M Ravi Habibillah",
    calorie: "300 kcal",
    portion: 2,
    publisherAvatar: "assets/images/profile.jpg",
    process: [
      'Haluskan semua bahan Bumbu dengan diulek atau diblender.',
      'Tumis bumbu dengan sedikit minyak goreng hingga wangi.',
      'Masukkan batang serai, daun jeruk, asam kandis dan garam, aduk rata',
      'Tuangi santan dan didihkan, masukkan daging',
      'Masak dengan api kecil selama beberapa jam sampai daging empuk dan bumbu kecoklatan sesuai selera.'
    ],
  ),
  FoodRecipe(
    name: 'Nasi Kuning',
    imageAsset: 'assets/images/Nasi Kuning.jpg',
    rating: 4.5,
    totalRate: '120+',
    time: "1 jam",
    publisher: "Kanna Hashimoto",
    calorie: "320 kcal",
    portion: 3,
    publisherAvatar: "assets/images/profile.jpg",
    process: [
      'Haluskan semua bahan Bumbu dengan diulek atau diblender.',
      'Tumis bumbu dengan sedikit minyak goreng hingga wangi.',
      'Masukkan batang serai, daun jeruk, asam kandis dan garam, aduk rata',
      'Tuangi santan dan didihkan, masukkan daging',
      'Masak dengan api kecil selama beberapa jam sampai daging empuk dan bumbu kecoklatan sesuai selera.'
    ],
  ),
  FoodRecipe(
    name: 'Sate Ayam',
    imageAsset: 'assets/images/sate-ayam.jpg',
    rating: 4.6,
    totalRate: '100+',
    time: "30 menit",
    publisher: "Rahmat Zumarli",
    calorie: "300 kcal",
    portion: 2,
    publisherAvatar: "assets/images/profile.jpg",
    process: [
      'Haluskan semua bahan Bumbu dengan diulek atau diblender.',
      'Tumis bumbu dengan sedikit minyak goreng hingga wangi.',
      'Masukkan batang serai, daun jeruk, asam kandis dan garam, aduk rata',
      'Tuangi santan dan didihkan, masukkan daging',
      'Masak dengan api kecil selama beberapa jam sampai daging empuk dan bumbu kecoklatan sesuai selera.'
    ],
  ),
  FoodRecipe(
    name: 'Nasi Bakar Tempe',
    imageAsset: 'assets/images/nasi_bakar_tempe_MAHI-780x440.jpg',
    rating: 4.0,
    totalRate: '200+',
    time: "30 menit",
    publisher: "Lulu",
    calorie: "300 kcal",
    portion: 3,
    publisherAvatar: "assets/images/profile.jpg",
    process: [
      'Haluskan semua bahan Bumbu dengan diulek atau diblender.',
      'Tumis bumbu dengan sedikit minyak goreng hingga wangi.',
      'Masukkan batang serai, daun jeruk, asam kandis dan garam, aduk rata',
      'Tuangi santan dan didihkan, masukkan daging',
      'Masak dengan api kecil selama beberapa jam sampai daging empuk dan bumbu kecoklatan sesuai selera.'
    ],
  ),
  FoodRecipe(
    name: 'Nasi Goreng Petai',
    imageAsset: 'assets/images/resep-nasi-goreng-petai-spesial-780x440.jpg',
    rating: 3.9,
    totalRate: '170+',
    time: "30 menit",
    publisher: "Lulu",
    calorie: "300 kcal",
    portion: 2,
    publisherAvatar: "assets/images/profile.jpg",
    process: [
      'Haluskan semua bahan Bumbu dengan diulek atau diblender.',
      'Tumis bumbu dengan sedikit minyak goreng hingga wangi.',
      'Masukkan batang serai, daun jeruk, asam kandis dan garam, aduk rata',
      'Tuangi santan dan didihkan, masukkan daging',
      'Masak dengan api kecil selama beberapa jam sampai daging empuk dan bumbu kecoklatan sesuai selera.'
    ],
  )
];
