// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDetails {

 int get id; String get title; bool? get adult; int? get budget; List<Genre>? get genres; String? get homepage; String? get overview; double? get popularity; int? get revenue; int? get runtime; String? get status; String? get tagline; bool? get video;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'belongs_to_collection') dynamic get belongsToCollection;@JsonKey(name: 'imdb_id') String? get imdbId;@JsonKey(name: 'origin_country') List<String>? get originCountry;@JsonKey(name: 'original_language') String? get originalLanguage;@JsonKey(name: 'original_title') String? get originalTitle;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'production_companies') List<ProductionCompany>? get productionCompanies;@JsonKey(name: 'production_countries') List<ProductionCountry>? get productionCountries;@JsonKey(name: 'release_date') DateTime? get releaseDate;@JsonKey(name: 'spoken_languages') List<SpokenLanguage>? get spokenLanguages;@JsonKey(name: 'vote_average') double? get voteAverage;@JsonKey(name: 'vote_count') int? get voteCount;
/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsCopyWith<MovieDetails> get copyWith => _$MovieDetailsCopyWithImpl<MovieDetails>(this as MovieDetails, _$identity);

  /// Serializes this MovieDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.budget, budget) || other.budget == budget)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.video, video) || other.video == video)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.belongsToCollection, belongsToCollection)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&const DeepCollectionEquality().equals(other.originCountry, originCountry)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&const DeepCollectionEquality().equals(other.productionCompanies, productionCompanies)&&const DeepCollectionEquality().equals(other.productionCountries, productionCountries)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&const DeepCollectionEquality().equals(other.spokenLanguages, spokenLanguages)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,adult,budget,const DeepCollectionEquality().hash(genres),homepage,overview,popularity,revenue,runtime,status,tagline,video,backdropPath,const DeepCollectionEquality().hash(belongsToCollection),imdbId,const DeepCollectionEquality().hash(originCountry),originalLanguage,originalTitle,posterPath,const DeepCollectionEquality().hash(productionCompanies),const DeepCollectionEquality().hash(productionCountries),releaseDate,const DeepCollectionEquality().hash(spokenLanguages),voteAverage,voteCount]);

@override
String toString() {
  return 'MovieDetails(id: $id, title: $title, adult: $adult, budget: $budget, genres: $genres, homepage: $homepage, overview: $overview, popularity: $popularity, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, video: $video, backdropPath: $backdropPath, belongsToCollection: $belongsToCollection, imdbId: $imdbId, originCountry: $originCountry, originalLanguage: $originalLanguage, originalTitle: $originalTitle, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, spokenLanguages: $spokenLanguages, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsCopyWith<$Res>  {
  factory $MovieDetailsCopyWith(MovieDetails value, $Res Function(MovieDetails) _then) = _$MovieDetailsCopyWithImpl;
@useResult
$Res call({
 int id, String title, bool? adult, int? budget, List<Genre>? genres, String? homepage, String? overview, double? popularity, int? revenue, int? runtime, String? status, String? tagline, bool? video,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'belongs_to_collection') dynamic belongsToCollection,@JsonKey(name: 'imdb_id') String? imdbId,@JsonKey(name: 'origin_country') List<String>? originCountry,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'production_companies') List<ProductionCompany>? productionCompanies,@JsonKey(name: 'production_countries') List<ProductionCountry>? productionCountries,@JsonKey(name: 'release_date') DateTime? releaseDate,@JsonKey(name: 'spoken_languages') List<SpokenLanguage>? spokenLanguages,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount
});




}
/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._self, this._then);

  final MovieDetails _self;
  final $Res Function(MovieDetails) _then;

/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? adult = freezed,Object? budget = freezed,Object? genres = freezed,Object? homepage = freezed,Object? overview = freezed,Object? popularity = freezed,Object? revenue = freezed,Object? runtime = freezed,Object? status = freezed,Object? tagline = freezed,Object? video = freezed,Object? backdropPath = freezed,Object? belongsToCollection = freezed,Object? imdbId = freezed,Object? originCountry = freezed,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? posterPath = freezed,Object? productionCompanies = freezed,Object? productionCountries = freezed,Object? releaseDate = freezed,Object? spokenLanguages = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,genres: freezed == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,revenue: freezed == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,tagline: freezed == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,belongsToCollection: freezed == belongsToCollection ? _self.belongsToCollection : belongsToCollection // ignore: cast_nullable_to_non_nullable
as dynamic,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,productionCompanies: freezed == productionCompanies ? _self.productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductionCompany>?,productionCountries: freezed == productionCountries ? _self.productionCountries : productionCountries // ignore: cast_nullable_to_non_nullable
as List<ProductionCountry>?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,spokenLanguages: freezed == spokenLanguages ? _self.spokenLanguages : spokenLanguages // ignore: cast_nullable_to_non_nullable
as List<SpokenLanguage>?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MovieDetails implements MovieDetails {
  const _MovieDetails({required this.id, required this.title, this.adult, this.budget, final  List<Genre>? genres, this.homepage, this.overview, this.popularity, this.revenue, this.runtime, this.status, this.tagline, this.video, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'belongs_to_collection') this.belongsToCollection, @JsonKey(name: 'imdb_id') this.imdbId, @JsonKey(name: 'origin_country') final  List<String>? originCountry, @JsonKey(name: 'original_language') this.originalLanguage, @JsonKey(name: 'original_title') this.originalTitle, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'production_companies') final  List<ProductionCompany>? productionCompanies, @JsonKey(name: 'production_countries') final  List<ProductionCountry>? productionCountries, @JsonKey(name: 'release_date') this.releaseDate, @JsonKey(name: 'spoken_languages') final  List<SpokenLanguage>? spokenLanguages, @JsonKey(name: 'vote_average') this.voteAverage, @JsonKey(name: 'vote_count') this.voteCount}): _genres = genres,_originCountry = originCountry,_productionCompanies = productionCompanies,_productionCountries = productionCountries,_spokenLanguages = spokenLanguages;
  factory _MovieDetails.fromJson(Map<String, dynamic> json) => _$MovieDetailsFromJson(json);

@override final  int id;
@override final  String title;
@override final  bool? adult;
@override final  int? budget;
 final  List<Genre>? _genres;
@override List<Genre>? get genres {
  final value = _genres;
  if (value == null) return null;
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? homepage;
@override final  String? overview;
@override final  double? popularity;
@override final  int? revenue;
@override final  int? runtime;
@override final  String? status;
@override final  String? tagline;
@override final  bool? video;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override@JsonKey(name: 'belongs_to_collection') final  dynamic belongsToCollection;
@override@JsonKey(name: 'imdb_id') final  String? imdbId;
 final  List<String>? _originCountry;
@override@JsonKey(name: 'origin_country') List<String>? get originCountry {
  final value = _originCountry;
  if (value == null) return null;
  if (_originCountry is EqualUnmodifiableListView) return _originCountry;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'original_language') final  String? originalLanguage;
@override@JsonKey(name: 'original_title') final  String? originalTitle;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
 final  List<ProductionCompany>? _productionCompanies;
@override@JsonKey(name: 'production_companies') List<ProductionCompany>? get productionCompanies {
  final value = _productionCompanies;
  if (value == null) return null;
  if (_productionCompanies is EqualUnmodifiableListView) return _productionCompanies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductionCountry>? _productionCountries;
@override@JsonKey(name: 'production_countries') List<ProductionCountry>? get productionCountries {
  final value = _productionCountries;
  if (value == null) return null;
  if (_productionCountries is EqualUnmodifiableListView) return _productionCountries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'release_date') final  DateTime? releaseDate;
 final  List<SpokenLanguage>? _spokenLanguages;
@override@JsonKey(name: 'spoken_languages') List<SpokenLanguage>? get spokenLanguages {
  final value = _spokenLanguages;
  if (value == null) return null;
  if (_spokenLanguages is EqualUnmodifiableListView) return _spokenLanguages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'vote_average') final  double? voteAverage;
@override@JsonKey(name: 'vote_count') final  int? voteCount;

/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailsCopyWith<_MovieDetails> get copyWith => __$MovieDetailsCopyWithImpl<_MovieDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.budget, budget) || other.budget == budget)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.video, video) || other.video == video)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.belongsToCollection, belongsToCollection)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&const DeepCollectionEquality().equals(other._originCountry, _originCountry)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&const DeepCollectionEquality().equals(other._productionCompanies, _productionCompanies)&&const DeepCollectionEquality().equals(other._productionCountries, _productionCountries)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&const DeepCollectionEquality().equals(other._spokenLanguages, _spokenLanguages)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,adult,budget,const DeepCollectionEquality().hash(_genres),homepage,overview,popularity,revenue,runtime,status,tagline,video,backdropPath,const DeepCollectionEquality().hash(belongsToCollection),imdbId,const DeepCollectionEquality().hash(_originCountry),originalLanguage,originalTitle,posterPath,const DeepCollectionEquality().hash(_productionCompanies),const DeepCollectionEquality().hash(_productionCountries),releaseDate,const DeepCollectionEquality().hash(_spokenLanguages),voteAverage,voteCount]);

@override
String toString() {
  return 'MovieDetails(id: $id, title: $title, adult: $adult, budget: $budget, genres: $genres, homepage: $homepage, overview: $overview, popularity: $popularity, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, video: $video, backdropPath: $backdropPath, belongsToCollection: $belongsToCollection, imdbId: $imdbId, originCountry: $originCountry, originalLanguage: $originalLanguage, originalTitle: $originalTitle, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, spokenLanguages: $spokenLanguages, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailsCopyWith<$Res> implements $MovieDetailsCopyWith<$Res> {
  factory _$MovieDetailsCopyWith(_MovieDetails value, $Res Function(_MovieDetails) _then) = __$MovieDetailsCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, bool? adult, int? budget, List<Genre>? genres, String? homepage, String? overview, double? popularity, int? revenue, int? runtime, String? status, String? tagline, bool? video,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'belongs_to_collection') dynamic belongsToCollection,@JsonKey(name: 'imdb_id') String? imdbId,@JsonKey(name: 'origin_country') List<String>? originCountry,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'production_companies') List<ProductionCompany>? productionCompanies,@JsonKey(name: 'production_countries') List<ProductionCountry>? productionCountries,@JsonKey(name: 'release_date') DateTime? releaseDate,@JsonKey(name: 'spoken_languages') List<SpokenLanguage>? spokenLanguages,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount
});




}
/// @nodoc
class __$MovieDetailsCopyWithImpl<$Res>
    implements _$MovieDetailsCopyWith<$Res> {
  __$MovieDetailsCopyWithImpl(this._self, this._then);

  final _MovieDetails _self;
  final $Res Function(_MovieDetails) _then;

/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? adult = freezed,Object? budget = freezed,Object? genres = freezed,Object? homepage = freezed,Object? overview = freezed,Object? popularity = freezed,Object? revenue = freezed,Object? runtime = freezed,Object? status = freezed,Object? tagline = freezed,Object? video = freezed,Object? backdropPath = freezed,Object? belongsToCollection = freezed,Object? imdbId = freezed,Object? originCountry = freezed,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? posterPath = freezed,Object? productionCompanies = freezed,Object? productionCountries = freezed,Object? releaseDate = freezed,Object? spokenLanguages = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,}) {
  return _then(_MovieDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,genres: freezed == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,revenue: freezed == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,tagline: freezed == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,belongsToCollection: freezed == belongsToCollection ? _self.belongsToCollection : belongsToCollection // ignore: cast_nullable_to_non_nullable
as dynamic,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,originCountry: freezed == originCountry ? _self._originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,productionCompanies: freezed == productionCompanies ? _self._productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductionCompany>?,productionCountries: freezed == productionCountries ? _self._productionCountries : productionCountries // ignore: cast_nullable_to_non_nullable
as List<ProductionCountry>?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,spokenLanguages: freezed == spokenLanguages ? _self._spokenLanguages : spokenLanguages // ignore: cast_nullable_to_non_nullable
as List<SpokenLanguage>?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Genre {

 int get id; String? get name;
/// Create a copy of Genre
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenreCopyWith<Genre> get copyWith => _$GenreCopyWithImpl<Genre>(this as Genre, _$identity);

  /// Serializes this Genre to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Genre&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Genre(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $GenreCopyWith<$Res>  {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) _then) = _$GenreCopyWithImpl;
@useResult
$Res call({
 int id, String? name
});




}
/// @nodoc
class _$GenreCopyWithImpl<$Res>
    implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._self, this._then);

  final Genre _self;
  final $Res Function(Genre) _then;

/// Create a copy of Genre
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Genre implements Genre {
  const _Genre({required this.id, this.name});
  factory _Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

@override final  int id;
@override final  String? name;

/// Create a copy of Genre
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenreCopyWith<_Genre> get copyWith => __$GenreCopyWithImpl<_Genre>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Genre&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Genre(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$GenreCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$GenreCopyWith(_Genre value, $Res Function(_Genre) _then) = __$GenreCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name
});




}
/// @nodoc
class __$GenreCopyWithImpl<$Res>
    implements _$GenreCopyWith<$Res> {
  __$GenreCopyWithImpl(this._self, this._then);

  final _Genre _self;
  final $Res Function(_Genre) _then;

/// Create a copy of Genre
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(_Genre(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductionCompany {

 int get id; String? get name;@JsonKey(name: 'logo_path') String? get logoPath;@JsonKey(name: 'origin_country') String? get originCountry;
/// Create a copy of ProductionCompany
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductionCompanyCopyWith<ProductionCompany> get copyWith => _$ProductionCompanyCopyWithImpl<ProductionCompany>(this as ProductionCompany, _$identity);

  /// Serializes this ProductionCompany to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductionCompany&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoPath,originCountry);

@override
String toString() {
  return 'ProductionCompany(id: $id, name: $name, logoPath: $logoPath, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class $ProductionCompanyCopyWith<$Res>  {
  factory $ProductionCompanyCopyWith(ProductionCompany value, $Res Function(ProductionCompany) _then) = _$ProductionCompanyCopyWithImpl;
@useResult
$Res call({
 int id, String? name,@JsonKey(name: 'logo_path') String? logoPath,@JsonKey(name: 'origin_country') String? originCountry
});




}
/// @nodoc
class _$ProductionCompanyCopyWithImpl<$Res>
    implements $ProductionCompanyCopyWith<$Res> {
  _$ProductionCompanyCopyWithImpl(this._self, this._then);

  final ProductionCompany _self;
  final $Res Function(ProductionCompany) _then;

/// Create a copy of ProductionCompany
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? logoPath = freezed,Object? originCountry = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductionCompany implements ProductionCompany {
  const _ProductionCompany({required this.id, this.name, @JsonKey(name: 'logo_path') this.logoPath, @JsonKey(name: 'origin_country') this.originCountry});
  factory _ProductionCompany.fromJson(Map<String, dynamic> json) => _$ProductionCompanyFromJson(json);

@override final  int id;
@override final  String? name;
@override@JsonKey(name: 'logo_path') final  String? logoPath;
@override@JsonKey(name: 'origin_country') final  String? originCountry;

/// Create a copy of ProductionCompany
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductionCompanyCopyWith<_ProductionCompany> get copyWith => __$ProductionCompanyCopyWithImpl<_ProductionCompany>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductionCompanyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductionCompany&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoPath,originCountry);

@override
String toString() {
  return 'ProductionCompany(id: $id, name: $name, logoPath: $logoPath, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class _$ProductionCompanyCopyWith<$Res> implements $ProductionCompanyCopyWith<$Res> {
  factory _$ProductionCompanyCopyWith(_ProductionCompany value, $Res Function(_ProductionCompany) _then) = __$ProductionCompanyCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name,@JsonKey(name: 'logo_path') String? logoPath,@JsonKey(name: 'origin_country') String? originCountry
});




}
/// @nodoc
class __$ProductionCompanyCopyWithImpl<$Res>
    implements _$ProductionCompanyCopyWith<$Res> {
  __$ProductionCompanyCopyWithImpl(this._self, this._then);

  final _ProductionCompany _self;
  final $Res Function(_ProductionCompany) _then;

/// Create a copy of ProductionCompany
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? logoPath = freezed,Object? originCountry = freezed,}) {
  return _then(_ProductionCompany(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductionCountry {

 String? get name;@JsonKey(name: 'iso_3166_1') String? get iso31661;
/// Create a copy of ProductionCountry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductionCountryCopyWith<ProductionCountry> get copyWith => _$ProductionCountryCopyWithImpl<ProductionCountry>(this as ProductionCountry, _$identity);

  /// Serializes this ProductionCountry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductionCountry&&(identical(other.name, name) || other.name == name)&&(identical(other.iso31661, iso31661) || other.iso31661 == iso31661));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,iso31661);

@override
String toString() {
  return 'ProductionCountry(name: $name, iso31661: $iso31661)';
}


}

/// @nodoc
abstract mixin class $ProductionCountryCopyWith<$Res>  {
  factory $ProductionCountryCopyWith(ProductionCountry value, $Res Function(ProductionCountry) _then) = _$ProductionCountryCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'iso_3166_1') String? iso31661
});




}
/// @nodoc
class _$ProductionCountryCopyWithImpl<$Res>
    implements $ProductionCountryCopyWith<$Res> {
  _$ProductionCountryCopyWithImpl(this._self, this._then);

  final ProductionCountry _self;
  final $Res Function(ProductionCountry) _then;

/// Create a copy of ProductionCountry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? iso31661 = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,iso31661: freezed == iso31661 ? _self.iso31661 : iso31661 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductionCountry implements ProductionCountry {
  const _ProductionCountry({this.name, @JsonKey(name: 'iso_3166_1') this.iso31661});
  factory _ProductionCountry.fromJson(Map<String, dynamic> json) => _$ProductionCountryFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'iso_3166_1') final  String? iso31661;

/// Create a copy of ProductionCountry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductionCountryCopyWith<_ProductionCountry> get copyWith => __$ProductionCountryCopyWithImpl<_ProductionCountry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductionCountryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductionCountry&&(identical(other.name, name) || other.name == name)&&(identical(other.iso31661, iso31661) || other.iso31661 == iso31661));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,iso31661);

@override
String toString() {
  return 'ProductionCountry(name: $name, iso31661: $iso31661)';
}


}

/// @nodoc
abstract mixin class _$ProductionCountryCopyWith<$Res> implements $ProductionCountryCopyWith<$Res> {
  factory _$ProductionCountryCopyWith(_ProductionCountry value, $Res Function(_ProductionCountry) _then) = __$ProductionCountryCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'iso_3166_1') String? iso31661
});




}
/// @nodoc
class __$ProductionCountryCopyWithImpl<$Res>
    implements _$ProductionCountryCopyWith<$Res> {
  __$ProductionCountryCopyWithImpl(this._self, this._then);

  final _ProductionCountry _self;
  final $Res Function(_ProductionCountry) _then;

/// Create a copy of ProductionCountry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? iso31661 = freezed,}) {
  return _then(_ProductionCountry(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,iso31661: freezed == iso31661 ? _self.iso31661 : iso31661 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SpokenLanguage {

 String? get name;@JsonKey(name: 'english_name') String? get englishName;@JsonKey(name: 'iso_639_1') String? get iso6391;
/// Create a copy of SpokenLanguage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpokenLanguageCopyWith<SpokenLanguage> get copyWith => _$SpokenLanguageCopyWithImpl<SpokenLanguage>(this as SpokenLanguage, _$identity);

  /// Serializes this SpokenLanguage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpokenLanguage&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.iso6391, iso6391) || other.iso6391 == iso6391));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,englishName,iso6391);

@override
String toString() {
  return 'SpokenLanguage(name: $name, englishName: $englishName, iso6391: $iso6391)';
}


}

/// @nodoc
abstract mixin class $SpokenLanguageCopyWith<$Res>  {
  factory $SpokenLanguageCopyWith(SpokenLanguage value, $Res Function(SpokenLanguage) _then) = _$SpokenLanguageCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'english_name') String? englishName,@JsonKey(name: 'iso_639_1') String? iso6391
});




}
/// @nodoc
class _$SpokenLanguageCopyWithImpl<$Res>
    implements $SpokenLanguageCopyWith<$Res> {
  _$SpokenLanguageCopyWithImpl(this._self, this._then);

  final SpokenLanguage _self;
  final $Res Function(SpokenLanguage) _then;

/// Create a copy of SpokenLanguage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? englishName = freezed,Object? iso6391 = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,englishName: freezed == englishName ? _self.englishName : englishName // ignore: cast_nullable_to_non_nullable
as String?,iso6391: freezed == iso6391 ? _self.iso6391 : iso6391 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SpokenLanguage implements SpokenLanguage {
  const _SpokenLanguage({this.name, @JsonKey(name: 'english_name') this.englishName, @JsonKey(name: 'iso_639_1') this.iso6391});
  factory _SpokenLanguage.fromJson(Map<String, dynamic> json) => _$SpokenLanguageFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'english_name') final  String? englishName;
@override@JsonKey(name: 'iso_639_1') final  String? iso6391;

/// Create a copy of SpokenLanguage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpokenLanguageCopyWith<_SpokenLanguage> get copyWith => __$SpokenLanguageCopyWithImpl<_SpokenLanguage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpokenLanguageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpokenLanguage&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.iso6391, iso6391) || other.iso6391 == iso6391));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,englishName,iso6391);

@override
String toString() {
  return 'SpokenLanguage(name: $name, englishName: $englishName, iso6391: $iso6391)';
}


}

/// @nodoc
abstract mixin class _$SpokenLanguageCopyWith<$Res> implements $SpokenLanguageCopyWith<$Res> {
  factory _$SpokenLanguageCopyWith(_SpokenLanguage value, $Res Function(_SpokenLanguage) _then) = __$SpokenLanguageCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'english_name') String? englishName,@JsonKey(name: 'iso_639_1') String? iso6391
});




}
/// @nodoc
class __$SpokenLanguageCopyWithImpl<$Res>
    implements _$SpokenLanguageCopyWith<$Res> {
  __$SpokenLanguageCopyWithImpl(this._self, this._then);

  final _SpokenLanguage _self;
  final $Res Function(_SpokenLanguage) _then;

/// Create a copy of SpokenLanguage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? englishName = freezed,Object? iso6391 = freezed,}) {
  return _then(_SpokenLanguage(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,englishName: freezed == englishName ? _self.englishName : englishName // ignore: cast_nullable_to_non_nullable
as String?,iso6391: freezed == iso6391 ? _self.iso6391 : iso6391 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
