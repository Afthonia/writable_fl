import 'package:get/get.dart';
import 'package:writable_fl/controllers/book_controller.dart';
import 'package:writable_fl/models/book_model.dart';

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();
  final books = Rxn<List<BookModel>>();
  String uid;

  ProfileController({required this.uid});

  @override
  Future<void> onInit() async {
    super.onInit();

    books.value = await BookController.to.getUserBooks(uid); 
  }
}
