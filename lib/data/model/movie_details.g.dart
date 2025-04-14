// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieDetails _$MovieDetailsFromJson(
  Map<String, dynamic> json,
) => _MovieDetails(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  adult: json['adult'] as bool?,
  budget: (json['budget'] as num?)?.toInt(),
  genres:
      (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
  homepage: json['homepage'] as String?,
  overview: json['overview'] as String?,
  popularity: (json['popularity'] as num?)?.toDouble(),
  revenue: (json['revenue'] as num?)?.toInt(),
  runtime: (json['runtime'] as num?)?.toInt(),
  status: json['status'] as String?,
  tagline: json['tagline'] as String?,
  video: json['video'] as bool?,
  backdropPath: json['backdrop_path'] as String?,
  belongsToCollection: json['belongs_to_collection'],
  imdbId: json['imdb_id'] as String?,
  originCountry:
      (json['origin_country'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  originalLanguage: json['original_language'] as String?,
  originalTitle: json['original_title'] as String?,
  posterPath: json['poster_path'] as String?,
  productionCompanies:
      (json['production_companies'] as List<dynamic>?)
          ?.map((e) => ProductionCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
  productionCountries:
      (json['production_countries'] as List<dynamic>?)
          ?.map((e) => ProductionCountry.fromJson(e as Map<String, dynamic>))
          .toList(),
  releaseDate:
      json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
  spokenLanguages:
      (json['spoken_languages'] as List<dynamic>?)
          ?.map((e) => SpokenLanguage.fromJson(e as Map<String, dynamic>))
          .toList(),
  voteAverage: (json['vote_average'] as num?)?.toDouble(),
  voteCount: (json['vote_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$MovieDetailsToJson(_MovieDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'adult': instance.adult,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'video': instance.video,
      'backdrop_path': instance.backdropPath,
      'belongs_to_collection': instance.belongsToCollection,
      'imdb_id': instance.imdbId,
      'origin_country': instance.originCountry,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'production_companies': instance.productionCompanies,
      'production_countries': instance.productionCountries,
      'release_date': instance.releaseDate?.toIso8601String(),
      'spoken_languages': instance.spokenLanguages,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };

_Genre _$GenreFromJson(Map<String, dynamic> json) =>
    _Genre(id: (json['id'] as num).toInt(), name: json['name'] as String?);

Map<String, dynamic> _$GenreToJson(_Genre instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_ProductionCompany _$ProductionCompanyFromJson(Map<String, dynamic> json) =>
    _ProductionCompany(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      logoPath: json['logo_path'] as String?,
      originCountry: json['origin_country'] as String?,
    );

Map<String, dynamic> _$ProductionCompanyToJson(_ProductionCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_path': instance.logoPath,
      'origin_country': instance.originCountry,
    };

_ProductionCountry _$ProductionCountryFromJson(Map<String, dynamic> json) =>
    _ProductionCountry(
      name: json['name'] as String?,
      iso31661: json['iso_3166_1'] as String?,
    );

Map<String, dynamic> _$ProductionCountryToJson(_ProductionCountry instance) =>
    <String, dynamic>{'name': instance.name, 'iso_3166_1': instance.iso31661};

_SpokenLanguage _$SpokenLanguageFromJson(Map<String, dynamic> json) =>
    _SpokenLanguage(
      name: json['name'] as String?,
      englishName: json['english_name'] as String?,
      iso6391: json['iso_639_1'] as String?,
    );

Map<String, dynamic> _$SpokenLanguageToJson(_SpokenLanguage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'english_name': instance.englishName,
      'iso_639_1': instance.iso6391,
    };
