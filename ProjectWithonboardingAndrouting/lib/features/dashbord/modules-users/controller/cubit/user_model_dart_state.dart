part of 'user_model_dart_cubit.dart';

@immutable
sealed class UserModelDartState {}

final class UserLoading extends UserModelDartState {}

final class UserLoaded extends  UserModelDartState {}

final class UserEmpty extends  UserModelDartState {}

