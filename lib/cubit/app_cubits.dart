import 'package:bloc/bloc.dart';
import 'package:travel_app/cubit/app_cubits_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
