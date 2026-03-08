import '../models/profile_model.dart';

class ProfileRepository {
  Future<ProfileModel> getProfile() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ProfileModel(
      nama: 'Admin D4TI',
      nip: '198901012015011001',
      email: 'admin.d4ti@politeknik.ac.id',
      jabatan: 'Administrator',
      institusi: 'Universitas Airlangga - D4 Teknik Informatika',
    );
  }
}