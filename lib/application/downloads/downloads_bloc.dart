import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/trending/i_trending_repo.dart';
import '../../domain/trending/models/trending_data.dart';

import '../../domain/core/failure.dart';

part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final ITrendingRepo _downloadsRepo;

  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>(
      (event, emit) async {
        // check dataExists or not  
        if (state.downloads.isNotEmpty) {
          return emit(state);
        }

        // send loading state
        emit(
          state.copyWith(
            isLoading: true,
            downloadsFailureOrSuccesOption: none(),
          ),
        );

        // getting data
        final Either<Failure, List<TrendingData>> downloadsOption =
            await _downloadsRepo.getTrendingData();

        // log(downloadsOption.toString());

        emit(
          downloadsOption.fold(
            (failure) => state.copyWith(
              downloadsFailureOrSuccesOption: Some(left(failure)),
              isLoading: false,
              isError: true,
            ),
            (result) => state.copyWith(
              downloadsFailureOrSuccesOption: Some(Right(result)),
              downloads: result,
              isLoading: false,
              isError: false,
            ),
          ),
        );
      },
    );
  }
}
