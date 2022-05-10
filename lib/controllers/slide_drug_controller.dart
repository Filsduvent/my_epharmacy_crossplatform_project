import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_pharmacie_platform_app/models/drug_model.dart';
import 'package:get/get.dart';

class SlideDrugController extends GetxController {
  final Rx<List<Drug>> _slideDrugList = Rx<List<Drug>>([]);

  List<Drug> get slideDrugList => _slideDrugList.value;

  final Rx<bool> _isLoaded = false.obs;
  bool get isLoaded => _isLoaded.value;

  @override
  void onInit() {
    super.onInit();
    _slideDrugList.bindStream(FirebaseFirestore.instance
        .collection('drug')
        .snapshots()
        .map((QuerySnapshot query) {
      List<Drug> retVal = [];
      for (var element in query.docs) {
        retVal.add(
          Drug.fromSnap(element),
          
        );
       _isLoaded.value = true;
      }
      return retVal;
    }));
  }
}
