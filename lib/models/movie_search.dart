//1. Create the Class
class MovieSearch {
  // 2. Create the property of the class - What you want to show in UI
  final String title;
  final String imdbId;
  final String poster;
  final String year;

  //3. Create the constructur of the class
MovieSearch({required this.title,required this.imdbId,required this.poster,required this.year,});

  //4. Create json(the response from API) to Object (An instence of MovieSearch)transformer


  factory MovieSearch.fromJson(Map<String,dynamic> json){
    return MovieSearch(title: json["Title"],
        imdbId: json["imdbID"], poster: json["Poster"],
        year: json["Year"]);
  }

  //5. Array of JSON , to List of Map transformer
  // I need to have this code if
  static List<MovieSearch> moviesFromJson(dynamic json ){
    var searchResult = json["Search"];
    List<MovieSearch> results = List.empty(growable: true);

    if (searchResult != null){

      searchResult.forEach((v)=>{
        results.add(MovieSearch.fromJson(v))
      });
      return results;
    }
    return results;
  }



}