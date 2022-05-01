import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../video_details/video_details_bloc.dart';
import '../../domain/discover/i_discover_repo.dart';
import '../../domain/discover/models/discover_model.dart';
import '../../presentation/video_details/screen_video_details.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IDiscoverRepo _discoverRepo;

  HomeBloc(this._discoverRepo) : super(HomeState.initial()) {
    on<_GetHomeScreendata>((event, emit) async {
      // return if data alredy exists
      if (state.movieList.isNotEmpty && state.tvShowList.isNotEmpty) {
        return emit(state);
      }

      //  send loading to ui
      emit(state.copyWith(isLoading: true, isError: false));

      // get movie data
      final _movieResult = await _discoverRepo.getDiscoverMovieData();

      // transform data

      final _state1 = _movieResult.fold(
        (failure) => state.copyWith(
          movieList: [],
          isLoading: false,
          isError: true,
        ),
        (resp) {
          final _movieList = resp.results;

          return state.copyWith(
            movieList: _movieList,
            isLoading: false,
            isError: false,
          );
        },
      );

      // send movieState data to ui
      emit(_state1);

      // get tvshows data
      final _tvShowsResult = await _discoverRepo.getDiscoverTvData();

      final _state2 = _tvShowsResult.fold(
          (failure) => state.copyWith(
                tvShowList: [],
                isLoading: false,
                isError: true,
              ),
          (resp) => state.copyWith(
                tvShowList: resp.results,
                isLoading: false,
                isError: false,
              ));

      // send tv State data to ui
      emit(_state2);
    });

  }
}
