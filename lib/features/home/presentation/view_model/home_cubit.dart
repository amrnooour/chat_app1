import 'package:chat_app1/features/home/presentation/view_model/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeIntial());

  int currentIndex = 0;

  changeBottomNav(int index) {
    currentIndex = index;
    emit(HomeBottomNav());
  }
}
