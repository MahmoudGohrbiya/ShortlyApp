import '../Models/ShortLink_model.dart';
import '../Services/apihelper.dart';

abstract class EntryBaseRepository {
  Future<ShortLink_model> GetShortLink(String LongLink);
}

class EntryRepository implements EntryBaseRepository {
  @override
  Future<ShortLink_model> GetShortLink(String LongLink) async {
    return await ApiHelper().GetShortLink(LongLink);
  }
}
