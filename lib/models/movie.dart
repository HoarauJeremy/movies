class Movie {
  final int _id;
  final String _title, _synopsys, _posterPath, _releaseDate;
  num? _popularity;
  num? _voteAverage;
  int? _voteCount;

  Movie({
    required int id,
    required String title,
    required String synopsys,
    required String posterPath,
    required String releaseDate,
    num? popularity,
    num? voteAverage,
    int? voteCount,
  }) : _voteCount = voteCount,
       _voteAverage = voteAverage,
       _popularity = popularity,
       _releaseDate = releaseDate,
       _posterPath = posterPath,
       _synopsys = synopsys,
       _title = title,
       _id = id;

  int get id {
    return _id;
  }

  String get title {
    return _title;
  }

  String get synopsys {
    return _synopsys;
  }

  String get posterPath {
    return _posterPath;
  }

  String get releaseDate {
    return _releaseDate;
  }

  num? get popularty {
    return _popularity;
  }

  num? get voteAverage {
    return _voteAverage;
  }

  int? get voteCount {
    return _voteCount;
  }

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'] ?? 0,
      title: json['title'] ?? "",
      synopsys: json['overview'] ?? "",
      posterPath: json['posterPath'] ?? "",
      releaseDate: json['releaseDate'] ?? "",
    );
  }
}
