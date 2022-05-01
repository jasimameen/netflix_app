import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/trending/i_trending_repo.dart';
import '../../domain/trending/models/trending_data.dart';

import '../../domain/search/i_search_repo.dart';
import '../../domain/search/models/search_resp/search_resp.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ITrendingRepo _downloadsRepo;
  final ISearchRepo _searchRepo;

  SearchBloc(this._downloadsRepo, this._searchRepo)
      : super(SearchState.initial()) {
/*
Search Result State
*/

    on<_Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        // noting will be emmited. whatever in the state will be remain there
        // this function just return here
        return;
      }

      emit(state.copyWith(
        searchResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      // get trending
      final _result = await _downloadsRepo.getTrendingData();

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
        (List<TrendingData> list) {
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

    on<_SearchMovie>((event, emit) async {
      // call Search movie Api
      emit(state.copyWith(
        searchResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));

      if (event.movieQuery.isNotEmpty || event.movieQuery.trim().isEmpty) {
        final _result =
            await _searchRepo.searchMovies(movieQuery: event.movieQuery);
        final _state = _result.fold(
          (failure) => state.copyWith(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          ),
          (response) => state.copyWith(
            searchResultList: response.results,
            idleList: [],
            isLoading: false,
            isError: true,
          ),
        );
        // Show to UI
        emit(_state);
      }
    });
  }
}
