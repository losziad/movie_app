import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';

abstract class BaseUseCase<T, Parameters> {
  //I used T because now i use list of Movie but in the future maybe use another thing
  Future<Either<Failure, T>> call(Parameters parameters);
}

class NoParameter extends Equatable {

  const NoParameter();

  @override
  List<Object> get props => [];
}