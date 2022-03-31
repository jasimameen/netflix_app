import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_project/domain/search/i_search_repo.dart';

import '../../domain/downloads/models/downloads.dart';
import '../../domain/search/models/search_resp/search_resp.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsRepo;
  final ISearchRepo _searchRepo;

  SearchBloc(this._downloadsRepo, this._searchRepo)
      : super(SearchState.initial()) {
/*
Search Result State
*/

    on<_Initialize>((event, emit) async {
      emit(state.copyWith(
        searchResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      // get trending
      final _result = await _downloadsRepo.getDownloadsImage();

      // log("Search Result => " + _result.toString());s

      _result.fold(
        (failure) {
          emit(
            const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true,
            ),
          );
        },
        (List<Downloads> list) {
          emit(
            SearchState(
              searchResultList: [],
              idleList: list,
              isLoading: false,
              isError: false,
            ),
          );
        },
      );
      // Show to UI
      // emit(_currentState);
    });

/*
Search Result State
*/

    on<_SearchMovie>((event, emit) {
      // call Search movie Api
      _searchRepo.searchMovies(movieQuery: event.movieQuery);
      // Show to UI
    });
  }
}
