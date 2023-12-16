import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test/falure/filure.dart';
import 'package:test/model/model.dart';
import 'package:test/model/result.dart';
import 'package:test/services/services.dart';

part 'modelbloc_event.dart';
part 'modelbloc_state.dart';
part 'modelbloc_bloc.freezed.dart';

class ModelblocBloc extends Bloc<ModelblocEvent, ModelblocState> {
  ModelblocBloc() : super(ModelblocState.inital()) {
    on<Started>((event, emit) async {
      final data =
          await APiServices().getResult(email: event.user, pass: event.pass);
      print(data.toString());

      final result = data.fold((MainFilure l) {
        return ModelblocState(data: {});
      }, (Model r) {
        return ModelblocState(
            data: r.result); // Use the null-aware operator to handle null case
      });

      emit(result);
    });
  }
}
