import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/core/widgets/common_widgets.dart';
import 'package:flutter_application_1/core/constants/app_constants.dart';
import '../providers/mahasiswa_aktif_provider.dart';
import '../widgets/mahasiswa_aktif_widget.dart';

class MahasiswaAktifPage extends ConsumerWidget {
  const MahasiswaAktifPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mahasiswaAktifNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mahasiswa Aktif'),
        elevation: 0,
        actions: [IconButton(icon: const Icon(Icons.refresh_rounded), onPressed: () => ref.invalidate(mahasiswaAktifNotifierProvider))],
      ),
      body: state.when(
        loading: () => const LoadingWidget(),
        error: (e, st) => CustomErrorWidget(message: 'Gagal memuat data: $e', onRetry: () => ref.read(mahasiswaAktifNotifierProvider.notifier).refresh()),
        data: (list) => RefreshIndicator(
          onRefresh: () async => ref.invalidate(mahasiswaAktifNotifierProvider),
          child: ListView.builder(
            padding: const EdgeInsets.all(AppConstants.paddingMedium),
            itemCount: list.length,
            itemBuilder: (ctx, i) => MahasiswaAktifCard(
              mahasiswa: list[i],
              gradientColors: AppConstants.dashboardGradients[i % AppConstants.dashboardGradients.length],
            ),
          ),
        ),
      ),
    );
  }
}