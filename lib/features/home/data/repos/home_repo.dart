import 'package:chat_app1/features/home/data/models/user_info_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<UserInfoModel>>> getData();
}

class HomeRepoImpl extends HomeRepo {
  @override
  Future<Either<String, List<UserInfoModel>>> getData() async {
    try {
      var data = await FirebaseFirestore.instance.collection("chats").get();
      List<UserInfoModel> userInfo = [];
      for (var element in data.docs) {
        userInfo.add(UserInfoModel.fromJson(element.data()));
      }
        return right(userInfo);
    } catch (e) {
      return left("please try again");
    }
  }
}
