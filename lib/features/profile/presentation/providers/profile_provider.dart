import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../profile/data/models/profile_model.dart';
import '../../../profile/data/repositories/profile_repository.dart';

final profileRepositoryProvider = Provider<ProfileRepository>((ref) => ProfileRepository());

final profileProvider = FutureProvider.autoDispose<ProfileModel>((ref) async {
  return ref.watch(profileRepositoryProvider).getProfile();
});