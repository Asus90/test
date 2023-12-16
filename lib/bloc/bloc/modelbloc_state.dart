part of 'modelbloc_bloc.dart';

@freezed
class ModelblocState with _$ModelblocState {
  const factory ModelblocState({required Map<String, dynamic> data}) = _Initial;

  factory ModelblocState.inital() => ModelblocState(data: {});
}
