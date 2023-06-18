class CityFilters{
  String? text;
  bool? isSelected;

  CityFilters({required this.text,required this.isSelected});
}
List<CityFilters> cityFilters = [
  CityFilters(text: 'All', isSelected: false),
  CityFilters(text: 'Popular', isSelected: false),
  CityFilters(text: 'Recommended', isSelected: false),
  CityFilters(text: 'Most Viewed', isSelected: false),
  CityFilters(text: 'High Rated', isSelected: false),
  CityFilters(text: 'Lowest Price', isSelected: false),
  CityFilters(text: 'Highest Prise', isSelected: false),
];