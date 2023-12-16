part of 'modelbloc_bloc.dart';

@freezed
class ModelblocEvent with _$ModelblocEvent {
  factory ModelblocEvent.started({required String pass, required String user}) =
      Started;
}
