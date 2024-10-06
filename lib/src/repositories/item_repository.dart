import 'package:dio/dio.dart';
import 'package:koffi_unoesc/src/models/item_model.dart';

class ItemRepository {
  final _dio = Dio();
  final _url = "https://mock-coffee.vercel.app/api/mock";

  Future fetchType(String type) async {
    final response = await _dio.get("$_url/$type");

    final list = response.data as List;
    return list.map((item) => ItemModel.fromJson(item)).toList();
  }
}
