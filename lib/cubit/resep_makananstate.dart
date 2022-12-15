part of 'resepmakanan_cubit.dart';

@immutable
abstract class ResepMakananState {}

class ResepMakananInitial extends ResepMakananState {}

class DataResepMakanan extends ResepMakananState {
  final ResepMakananModel data;
  DataResepMakanan(this.data);
}

class DataDetailResepMakanan extends ResepMakananState {
  final ResepDetailMakananModel data;
  DataDetailResepMakanan(this.data);
}