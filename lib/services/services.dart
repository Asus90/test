import 'package:test/falure/filure.dart';
import 'package:test/model/model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class APiServices {
  Future<Either<MainFilure, Model>> getResult(
      {required email, required pass}) async {
    try {
      final res = await Dio(BaseOptions())
          .post('https://bmw.codeland.in/web/session/authenticate', data: {
        "params": {"login": "${email}", "password": "${pass}", "db": "cabs"}
      });

      if (res.statusCode == 200 || res.statusCode == 201) {
        final result = Model.fromJson(res.data);
        print(result.toString());

        return Right(result);
      } else {
        return const Left(MainFilure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFilure.ClientFailure());
    }
  }
}
