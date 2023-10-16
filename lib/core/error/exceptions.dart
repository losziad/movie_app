import 'package:movies_app/core/network/error_message_model.dart';

//For Remote Data Source
class ServerException implements Exception{
  final ErrorMessageModel errorMessageModel;

  const ServerException({required this.errorMessageModel});
}

//For Local Data Source
class LocalDatabaseException implements Exception{
  final String message;

  const LocalDatabaseException({required this.message});
}