import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

//General exceptions
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
