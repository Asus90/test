import 'package:freezed_annotation/freezed_annotation.dart';
part 'filure.freezed.dart';

@freezed
class MainFilure with _$MainFilure {
  const factory MainFilure.ClientFailure() = _ClientFailure;
  const factory MainFilure.serverFailure() = _serverFailure;
}
