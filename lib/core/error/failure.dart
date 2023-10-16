import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {

  //Message is a share between Server and Database
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure{

  //Message is a share between Server and Database
  const ServerFailure(super.message);

}

class DatabaseFailure extends Failure{

  //Message is a share between Server and Database
  const DatabaseFailure(super.message);

}