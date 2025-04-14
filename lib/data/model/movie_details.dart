import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    required int id,
    required String title,
    bool? adult,
    int? budget,
    List<Genre>? genres,
    String? homepage,
    String? overview,
    double? popularity,
    int? revenue,
    int? runtime,
    String? status,
    String? tagline,
    bool? video,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'belongs_to_collection') dynamic belongsToCollection,
    @JsonKey(name: 'imdb_id') String? imdbId,
    @JsonKey(name: 'origin_country') List<String>? originCountry,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'production_companies')
    List<ProductionCompany>? productionCompanies,
    @JsonKey(name: 'production_countries')
    List<ProductionCountry>? productionCountries,
    @JsonKey(name: 'release_date') DateTime? releaseDate,
    @JsonKey(name: 'spoken_languages') List<SpokenLanguage>? spokenLanguages,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}

@freezed
abstract class Genre with _$Genre {
  const factory Genre({required int id, String? name}) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@freezed
abstract class ProductionCompany with _$ProductionCompany {
  const factory ProductionCompany({
    required int id,
    String? name,
    @JsonKey(name: 'logo_path') String? logoPath,
    @JsonKey(name: 'origin_country') String? originCountry,
  }) = _ProductionCompany;

  factory ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyFromJson(json);
}

@freezed
abstract class ProductionCountry with _$ProductionCountry {
  const factory ProductionCountry({
    String? name,
    @JsonKey(name: 'iso_3166_1') String? iso31661,
  }) = _ProductionCountry;

  factory ProductionCountry.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryFromJson(json);
}

@freezed
abstract class SpokenLanguage with _$SpokenLanguage {
  const factory SpokenLanguage({
    String? name,
    @JsonKey(name: 'english_name') String? englishName,
    @JsonKey(name: 'iso_639_1') String? iso6391,
  }) = _SpokenLanguage;

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageFromJson(json);
}
