import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:shortly/AppStates/ShortyStats/Shortly_State.dart';

import '../../../Repostories/entryrepo.dart';

class Shortly_cubit extends Cubit<Shortly_State> {
  Shortly_cubit() : super(ShortlyInitial());
  bool loading = false;
  final EntryRepository _repository = EntryRepository();

  Future<void> GetShortLink(String LongLink) async {
    try {
      emit(ShortlyLoading());
      await _repository.GetShortLink(LongLink!).catchError((Object obj) {
        switch (obj.runtimeType) {
          case DioError:
            final res = (obj as DioError).response;

            emit(ShortlyError("${res?.data}"));
            break;
          default:
            emit(ShortlyError("there's an error "));
        }
      }).then((value) {
        emit(ShortlyCompleted(value));
      });
    } on Exception {
      emit(ShortlyError("Error while trying to login"));
    }
  }
}
