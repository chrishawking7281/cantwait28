//Plik ItemModel odpowiada za wszystkie zmienne jakie mają miejsce w reszcie plików

//class odpowiedzialna za wszystkie zmienne w plikach
import 'package:intl/intl.dart';

class ItemModel {
  ItemModel({
    //constructor
    required this.id,
    required this.title,
    required this.imageURL,
    required this.relaseDate,
  });

  //properthies
  final String id;
  final String title;
  final String imageURL;
  final DateTime relaseDate;

  //methods- zczytuje ile dni zostało
  String daysleft() {
    return relaseDate.difference(DateTime.now()).inDays.toString();
  }

  String relaseDateFormatted() {
    return DateFormat.yMMMEd().format(relaseDate);
  }
}
