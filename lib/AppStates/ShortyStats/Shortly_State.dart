import 'package:shortly/Models/ShortLink_model.dart';

abstract class Shortly_State {
  const Shortly_State();
}

class ShortlyInitial extends Shortly_State {
  const ShortlyInitial();
}

class ShortlyLoading extends Shortly_State {
  const ShortlyLoading();
}

class ShortlyCompleted extends Shortly_State {
  final ShortLink_model? response;

  const ShortlyCompleted(this.response);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ShortlyCompleted && o.response == response;
  }

  @override
  int get hashCode => response.hashCode;
}

class ShortlyError extends Shortly_State {
  final String message;

  const ShortlyError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ShortlyError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
