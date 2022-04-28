
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/new_and_hot/i_new_and_hot_repo.dart';
import '../../domain/new_and_hot/models/new_and_hot_model.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final INewAndHotRepo _homeRepo;
   
  HomeBloc(this._homeRepo) : super(HomeState.initial()) {
    on<_GetHomeScreendata>((event, emit) async {
      //  send loading to ui
      emit(state.copyWith(isLoading: true, isError: false));

      // get data
      final _movieResult = await _homeRepo.getNewAndHotMovieData();
      final _tvResult = await _homeRepo.getNewAndHotTvData();

      // transform data
     
      final _state1 = _movieResult.fold(
        (failure) => state.copyWith(
          movieList: [],
          isLoading: false,
          isError: false,
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

      final _state2 = _tvResult.fold(
          (failure) => state.copyWith(
                tvShowList: [],
                isLoading: false,
                isError: false,
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
