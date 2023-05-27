import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trazabilidad/api/domain/entities/index.dart';
import 'package:trazabilidad/presentation/providers/repository_provider.dart';

final dispositivoProvider =
    StateNotifierProvider<DisMapNotifer, Map<String, Dispositivo>>((ref) {
  final dispoRepository = ref.watch(trazaRepositoryProvider);

  return DisMapNotifer(getDis: dispoRepository.getDispositivoByLote);
});

typedef GetDisCallback = Future<Dispositivo> Function(String disId);

class DisMapNotifer extends StateNotifier<Map<String, Dispositivo>> {
  final GetDisCallback getDis;

  DisMapNotifer({
    required this.getDis,
  }) : super({});

  Future<void> loadDis(String disId) async {
    if (state[disId] != null) return;
    final dispo = await getDis(disId);

    state = {...state, disId: dispo};
  }
}
