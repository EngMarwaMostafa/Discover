import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../models/get_offers_model.dart';
import '../../../../services/api_service.dart';

class OffersController extends SuperController<dynamic>{

  RxList<GetOffersModel> offersList=<GetOffersModel>[].obs;

  Future<void> getOffers() async {
    try {
      final response = await ApiService.getData(
          url: 'api/offers');
      if(response.statusCode==200){
        print(response.data);

        for(var item in response.data){
          offersList.add(GetOffersModel.fromJson(item));
        }
        print(response.statusCode);
      }
    }catch(e) {
      if (e is DioException) {
        print(e.response?.data);
      }
      rethrow;
    }}
  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onHidden() {
    // TODO: implement onHidden
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}