
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/discover/models/discover_model.dart';

import '../../domain/discover/i_discover_repo.dart';

part 'new_and_hot_bloc.freezed.dart';
part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final IDiscoverRepo _newAndHotRepo;

  NewAndHotBloc(this._newAndHotRepo) : super(NewAndHotState.intial()) {
    on<_LoadDataInCommingSoon>((event, emit) async {
      // checking if dataExists
      if (state.commingSoonList.isNotEmpty) {
        return;
      }

      // send loading State
      emit(state.copyWith(isLoading: true));

      // get data from remote
      final _result = await _newAndHotRepo.getDiscoverMovieData();

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
      final _result = await _newAndHotRepo.getDiscoverTvData();

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
