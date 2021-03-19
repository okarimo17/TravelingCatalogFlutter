import 'LocationFact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackageName;
  final List<LocationFact> facts;

  Location({
    this.id,
    this.name,
    this.imagePath,
    this.userItinerarySummary,
    this.tourPackageName,
    this.facts,
  });

  static List<Location> locationsStore = [
    Location(
        id: 1,
        name: 'Kiyomizu-dera',
        imagePath: 'assets/images/kiyomizu-dera.jpg',
        userItinerarySummary: 'Day 1: 4PM - 5:00PM',
        tourPackageName: 'Standard Package',
        facts: [
          LocationFact('Summary',
              'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'),
          LocationFact(
              'Architectural Style', 'Japanese Buddhist architecture.'),
        ]),
    Location(
        id: 2,
        name: 'New York',
        imagePath: 'assets/images/newy.jpg',
        userItinerarySummary: 'Day 1: 2PM - 3:00PM',
        tourPackageName: 'Express Package',
        facts: [
          LocationFact('People',
              'A little over 8 million people live in New York City. That means 1 in every 38 people in the United States call the city home.'),
          LocationFact('Spoken Languages',
              'More than 800 languages are spoken in New York City, making it the most linguistically diverse city in the world. 4 in 10 households speak a language other than English.'),
          LocationFact('Federal Reserve',
              'New York City’s Federal Reserve Bank has the largest gold storage in the world. The vault is 80 feet below street level and contains \$90 billion in gold.'),
        ]),
    Location(
        id: 3,
        name: 'Los Angelose',
        imagePath: 'assets/images/losa.jpg',
        userItinerarySummary: 'Day 1: 2PM - 3:00PM',
        tourPackageName: 'Express Package',
        facts: [
          LocationFact('Size',
              "There are 88 incorporated cities in Los Angeles County ranging from Vernon (population 123) to Los Angeles city (population 4 million).Source: LACity.org, LACounty.org, California State Association of Counties – counties.org"),
          LocationFact('Population',
              'Los Angeles County is the first in the nation to reach 10 million residents. If the Los Angeles five-county area were a state, it would surpass all states in total population size with the exception of California, Texas, New York and Florida. The County of Los Angeles alone would be the seventh most populated state.'),
          LocationFact('Geography',
              'Los Angeles spans a widely diverse geographic area. Primarily a desert basin, the area is surrounded by the San Gabriel Mountain range and divided by the Santa Monica Mountains. Los Angeles County has 75 miles of coastline and altitudes ranging from 9 feet below sea level at Wilmington to 10,080 feet above sea level atop Mt. San Antonio. Area Rivers include the Los Angeles, Rio Hondo, San Gabriel, and Santa Clara rivers.'),
        ]),
    Location(
        id: 4,
        name: 'Mount Fuji',
        imagePath: 'assets/images/fuji.jpg',
        userItinerarySummary: 'Day 1: 9AM - 1:30PM',
        tourPackageName: 'Standard Package',
        facts: [
          LocationFact('Summary',
              'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
          LocationFact('Did You Know',
              'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
        ]),
    Location(
        id: 5,
        name: 'Arashiyama Bamboo Grove',
        imagePath: 'assets/images/arashiyama.jpg',
        userItinerarySummary: 'Day 1: 2PM - 3:30PM',
        tourPackageName: 'Standard Package',
        facts: [
          LocationFact('Summary',
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
          LocationFact('How to Get There',
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
        ]),
  ];

  static List<Location> fetchAll() {
    return locationsStore;
  }

  static Location find(int id) {
    return locationsStore.firstWhere((location) => location.id == id);
  }
}
