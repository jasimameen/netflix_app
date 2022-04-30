// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i11;
import '../../../application/fast_laugh/fast_laugh_bloc.dart' as _i12;
import '../../../application/home/home_bloc.dart' as _i13;
import '../../../application/new_and_hot/new_and_hot_bloc.dart' as _i9;
import '../../../application/search/search_bloc.dart' as _i10;
import '../../../infrastructure/discover/discover_repo_impl.dart' as _i4;
import '../../../infrastructure/search/search_repo_impl.dart' as _i6;
import '../../../infrastructure/trending/downloads_repo_impl.dart' as _i8;
import '../../discover/i_discover_repo.dart' as _i3;
import '../../search/i_search_repo.dart' as _i5;
import '../../trending/i_trending_repo.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IDiscoverRepo>(() => _i4.NewAndHotRepoImpl());
  gh.lazySingleton<_i5.ISearchRepo>(() => _i6.SearchRepoImpl());
  gh.lazySingleton<_i7.ITrendingRepo>(() => _i8.TrendingRepoImpl());
  gh.factory<_i9.NewAndHotBloc>(
      () => _i9.NewAndHotBloc(get<_i3.IDiscoverRepo>()));
  gh.factory<_i10.SearchBloc>(
      () => _i10.SearchBloc(get<_i7.ITrendingRepo>(), get<_i5.ISearchRepo>()));
  gh.factory<_i11.DownloadsBloc>(
      () => _i11.DownloadsBloc(get<_i7.ITrendingRepo>()));
  gh.factory<_i12.FastLaughBloc>(
      () => _i12.FastLaughBloc(get<_i7.ITrendingRepo>()));
  gh.factory<_i13.HomeBloc>(() => _i13.HomeBloc(get<_i3.IDiscoverRepo>()));
  return get;
}
