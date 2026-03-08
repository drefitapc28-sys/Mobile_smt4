import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../mahasiswa_aktif/data/models/mahasiswa_aktif_model.dart';
import '../../../mahasiswa_aktif/data/repositories/mahasiswa_aktif_repository.dart';

final mahasiswaAktifRepositoryProvider = Provider<MahasiswaAktifRepository>((ref) => MahasiswaAktifRepository());

class MahasiswaAktifNotifier extends StateNotifier<AsyncValue<List<MahasiswaAktifModel>>> {
  final MahasiswaAktifRepository _repository;
  MahasiswaAktifNotifier(this._repository) : super(const AsyncValue.loading()) { load(); }
  Future<void> load() async {
    state = const AsyncValue.loading();
    try { state = AsyncValue.data(await _repository.getMahasiswaAktifList()); }
    catch (e, st) { state = AsyncValue.error(e, st); }
  }
  Future<void> refresh() async => await load();
}

final mahasiswaAktifNotifierProvider = StateNotifierProvider.autoDispose<MahasiswaAktifNotifier, AsyncValue<List<MahasiswaAktifModel>>>((ref) {
  return MahasiswaAktifNotifier(ref.watch(mahasiswaAktifRepositoryProvider));
});