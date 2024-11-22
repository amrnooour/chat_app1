import 'package:chat_app1/features/home/data/models/user_info_model.dart';
import 'package:chat_app1/features/home/data/repos/home_repo.dart';
import 'package:chat_app1/features/home/presentation/view_model/home_states.dart';
import 'package:chat_app1/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeIntial());

  int currentIndex = 0;
  List<UserInfoModel>? chat;

  changeBottomNav(int index) {
    currentIndex = index;
    emit(HomeBottomNav());
  }

  getData() async {
    emit(GetDataLoading());
    var data = await sl<HomeRepo>().getData();
    data.fold((error) => emit(GetDataFailure()), (succes) {
      chat = succes;
      emit(GetDataSuccess());
    });
  }
}
