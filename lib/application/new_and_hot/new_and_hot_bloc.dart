
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/new_and_hot/i_new_and_hot_repo.dart';
import '../../domain/new_and_hot/models/new_and_hot_model.dart';

part 'new_and_hot_bloc.freezed.dart';
part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final INewAndHotRepo _newAndHotRepo;

  NewAndHotBloc(this._newAndHotRepo) : super(NewAndHotState.intial()) {
    on<_LoadDataInCommingSoon>((event, emit) async {
      // checking if dataExists
      if (state.commingSoonList.isNotEmpty) {
        return;
      }

      // send loading State
      emit(state.copyWith(isLoading: true));

      // get data from remote
      final _result = await _newAndHotRepo.getNewAndHotMovieData();

      // send data to state
      final _state = _result.fold(
          (failure) => const NewAndHotState(
                commingSoonList: [],
                everyOnesWatchingList: [],
                isLoading: false,
                isError: true,
              ),
          (resp) => state.copyWith(
                commingSoonList: resp.results,
                isLoading: false,
                isError: false,
              ));

      // emit current state
      emit(_state);
    });

    on<_LoadDataInEveryOnesWatching>((event, emit) async {
      // checking if dataExists
      if (state.everyOnesWatchingList.isNotEmpty) {
        return;
      }

      // send loading State
      emit(state.copyWith(isLoading: true));

      // get data from remote
      final _result = await _newAndHotRepo.getNewAndHotTvData();

      // send data to state
      final _state = _result.fold(
          (failure) => const NewAndHotState(
                commingSoonList: [],
                everyOnesWatchingList: [],
                isLoading: false,
                isError: true,
              ),
          (resp) => state.copyWith(
                everyOnesWatchingList: resp.results,
                isLoading: false,
                isError: false,
              ));

      // emit current state
      emit(_state);
    });
  }
}
