import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trazabilidad/api/domain/entities/index.dart';
import 'package:trazabilidad/presentation/providers/dispositivo_provider.dart';

class ResumeLoteScreen extends ConsumerStatefulWidget {
  static const String name = 'resume_lote_screen';

  final String lote;
  const ResumeLoteScreen({super.key, required this.lote});

  @override
  ResumeDataScreenState createState() => ResumeDataScreenState();
}

class ResumeDataScreenState extends ConsumerState<ResumeLoteScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(dispositivoProvider.notifier).loadDis(widget.lote);
  }

  @override
  Widget build(BuildContext context) {
    final Dispositivo? dispo = ref.watch(dispositivoProvider)[widget.lote];

    if (dispo == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumen del dispositivo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_DisResume(dis: dispo), const SizedBox(width: 10)],
        ),
      ),
    );
  }
}

class _DisResume extends StatelessWidget {
  final Dispositivo dis;
  const _DisResume({
    required this.dis,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Nombre: ${dis.equipo}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      const SizedBox(height: 8.0),
      Text(
        'Modelo: ${dis.modelo}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      const SizedBox(height: 16.0),
      Text(
        'Marca: ${dis.marca}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      const SizedBox(height: 8.0),
      Text(
        'Recinto: ${dis.recinto}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      const SizedBox(height: 16.0),
      Text(
        'Fabricante: ${dis.dirfabricante}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      const SizedBox(height: 8.0),
      Text(
        'Instrucciones: ${dis.instrucciones}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      const SizedBox(height: 16.0),
      Text(
        'Uso correcto: ${dis.usocorrecto}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      const SizedBox(height: 16.0),
      Text(
        'finalidad: ${dis.finaprevista} ',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
    ]);
  }
}
