class Categories{
  int categoryIndex = 0;
  String text;
  String? networkImageLink;
  bool? isSelected;
  Categories({required this.text,required this.networkImageLink,required this.isSelected,this.categoryIndex = 0});
}

List<Categories> categories = [
  Categories(text: 'Mountain', networkImageLink: 'https://free-vectors.net/_ph/6/2/802767568.jpg',isSelected: false),
  Categories(text: 'Gardens', networkImageLink: 'https://static.vecteezy.com/system/resources/thumbnails/002/072/008/small/colorful-floral-spring-background-free-vector.jpg',isSelected: false),
  Categories(text: 'Cinema', networkImageLink: 'https://static.vecteezy.com/system/resources/thumbnails/006/889/582/small_2x/people-in-red-movie-theater-or-cinema-free-vector.jpg',isSelected: false),
  Categories(text: 'Aqua Park', networkImageLink: 'https://img.freepik.com/free-vector/tall-tube-family-water-slides-amusement-aqua-park_1284-59379.jpg?w=2000',isSelected: false),
  Categories(text: 'Mall', networkImageLink: 'https://img.freepik.com/free-vector/shopping-mall-outside-composition-mall-building-with-tags-headlines-shops-wall_1284-58788.jpg',isSelected: false),
  Categories(text: 'Sea', networkImageLink: 'https://static.vecteezy.com/system/resources/thumbnails/007/076/104/small/beach-holiday-summer-background-free-vector.jpg',isSelected: false),
  Categories(text: 'Island', networkImageLink: 'https://img.freepik.com/premium-vector/isolated-island-white-background_1639-6970.jpg',isSelected: false),
];