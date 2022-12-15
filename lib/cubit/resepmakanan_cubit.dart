import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:resepmakanan/model/detail_resepmakanan_model.dart';
import 'package:resepmakanan/request/resepmakanan_request.dart';
import '../model/resepmakanan_model.dart';
part 'resep_makananstate.dart';

class ResepMakananCubit extends Cubit<ResepMakananState> {
  ResepMakananCubit() : super(ResepMakananInitial());

  final MakananResepRequest resepMakananRequest = MakananResepRequest();

  ResepMakananModel resepMakananModel = ResepMakananModel();

  ResepDetailMakananModel detailResepMakananModel = ResepDetailMakananModel();

  getDataResepMakanan() async {
    emit(ResepMakananInitial());
    resepMakananModel = await resepMakananRequest.getResepMakanan();
    emit(DataResepMakanan(resepMakananModel));
  }

  getDetailDataResepMakanan(String key) async {
    emit(ResepMakananInitial());
    detailResepMakananModel =
        await resepMakananRequest.getDetailResepMakanan(key);
    emit(DataDetailResepMakanan(detailResepMakananModel));
  }
}