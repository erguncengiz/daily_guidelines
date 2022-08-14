part of 'home_screen_cubit.dart';

abstract class HomeScreenState {
  const HomeScreenState();
}

class HomeScreenInitial extends HomeScreenState {
  const HomeScreenInitial();
}

class HomeScreenLoading extends HomeScreenState {
  const HomeScreenLoading();
}

class HomeScreenDone extends HomeScreenState {
  const HomeScreenDone();
}

class HomeScreenError extends HomeScreenState {
  final String message;
  const HomeScreenError(this.message);
}
