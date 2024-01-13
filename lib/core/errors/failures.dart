import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String errMessage;

  const Failure(this.errMessage);

  @override
  List<Object?> get props => [errMessage];
}
