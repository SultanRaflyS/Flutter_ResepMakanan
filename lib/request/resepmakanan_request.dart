import 'package:dio/dio.dart';
import 'package:resepmakanan/model/detail_resepmakanan_model.dart';
import '../model/resepmakanan_model.dart';

class MakananResepRequest {
  Future<ResepMakananModel> getResepMakanan() async {
    Response response = await Dio()
        .get('https://masak-apa-tomorisakura.vercel.app/api/recipes');
    return ResepMakananModel.fromJson(response.data);
  }

  Future<ResepDetailMakananModel> getDetailResepMakanan(String key) async {
    Response response = await Dio()
        .get('https://masak-apa-tomorisakura.vercel.app/api/recipe/' + key);
    return ResepDetailMakananModel.fromJson(response.data);
  }
}