// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:signature/signature.dart';
import 'dart:typed_data';
import 'dart:convert';

class Assinatura extends StatefulWidget {
  const Assinatura({
    super.key,
    this.width,
    this.height,
    required this.uploadBase64,
    required this.salvarAssinatura,
  });

  final double? width;
  final double? height;
  final String uploadBase64;
  final bool salvarAssinatura;

  @override
  State<Assinatura> createState() => _AssinaturaState();
}

class _AssinaturaState extends State<Assinatura> {
  late final SignatureController _signatureController;

  @override
  void initState() {
    super.initState();
    _signatureController = SignatureController(
      penStrokeWidth: 3,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
    );
  }

  @override
  void dispose() {
    _signatureController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant Assinatura oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (!oldWidget.salvarAssinatura && widget.salvarAssinatura) {
      _saveSignature();
    }
  }

  Future<void> _saveSignature() async {
    try {
      final Uint8List? data = await _signatureController.toPngBytes();
      if (data == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Assinatura vazia!")),
        );
        return;
      }

      final String base64Signature = base64Encode(data);

      FFAppState().update(() {
        FFAppState().uploadBase64 = base64Signature;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Assinatura salva com sucesso!")),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Erro ao salvar: $e")),
      );
    }
  }

  void _clearSignature() {
    _signatureController.clear();

    // 👇 ESSENCIAL: Limpa o estado salvo para permitir novo salvamento
    FFAppState().update(() {
      FFAppState().uploadBase64 = ''; // ou = null, se sua lógica aceitar
    });

    // 👇 Força rebuild interno (opcional, mas recomendado)
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Texto "Limpar" no canto superior direito
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 8),
            TextButton(
              onPressed: _clearSignature,
              child: Text(
                "Limpar",
                style: TextStyle(
                  color: const Color(0xFF1955E3),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),

        // Área de assinatura (lousa)
        Container(
          width: widget.width ?? double.infinity,
          height: widget.height ?? 200,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFBDC1CA)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Signature(
            controller: _signatureController,
            backgroundColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
