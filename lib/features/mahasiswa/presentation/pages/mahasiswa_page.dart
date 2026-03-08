import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/core/widgets/common_widgets.dart';
import 'package:flutter_application_1/core/constants/app_constants.dart';
import '../providers/mahasiswa_provider.dart';
import '../widgets/mahasiswa_widget.dart';

class MahasiswaPage extends ConsumerWidget {
  const MahasiswaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mahasiswaNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Total Mahasiswa'),
        elevation: 0,
        actions: [IconButton(icon: const Icon(Icons.refresh_rounded), onPressed: () => ref.invalidate(mahasiswaNotifierProvider))],
      ),
      body: state.when(
        loading: () => const LoadingWidget(),
        error: (e, st) => CustomErrorWidget(message: 'Gagal memuat data: $e', onRetry: () => ref.read(mahasiswaNotifierProvider.notifier).refresh()),
        data: (list) => RefreshIndicator(
          onRefresh: () async => ref.invalidate(mahasiswaNotifierProvider),
          child: ListView.builder(
            padding: const EdgeInsets.all(AppConstants.paddingMedium),
            itemCount: list.length,
            itemBuilder: (ctx, i) => MahasiswaCard(
              mahasiswa: list[i],
              gradientColors: AppConstants.dashboardGradients[i % AppConstants.dashboardGradients.length],
            ),
          ),
        ),
      ),
    );
  }
}