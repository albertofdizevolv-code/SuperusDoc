// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Imports para geração de PDF, impressão e formatação de data
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:intl/intl.dart';

Future getPdfHistorico(List<VwHistoricoCompletoRow> tabela) async {
  // 1. Inicializa o documento PDF
  final doc = pw.Document();

  // 2. Define o formatador de data
  final DateFormat formatter = DateFormat('dd/MM/yyyy - HH:mm');

  // 3. Define os cabeçalhos da tabela
  final headers = [
    'Data/Hora',
    'Status', // O nome do cabeçalho pode continuar "Status"
    'Responsável',
    'Descrição',
  ];

  // --- ALTERAÇÃO 1: Captura o Status Atual ---
  // Pega o status atual do primeiro item da lista (assumindo que é o mesmo para todos)
  String statusAtual = 'N/A';
  if (tabela.isNotEmpty && tabela.first.nomeStatusAtual != null) {
    statusAtual = tabela.first.nomeStatusAtual!;
  }
  // ------------------------------------------

  // 4. Mapeia os dados da sua lista de 'VwHistoricoCompletoRow'
  final data = tabela.map((row) {
    final String dataFormatada =
        row.dataHora != null ? formatter.format(row.dataHora!) : 'N/A';

    return [
      dataFormatada,
      // --- ALTERAÇÃO 2: Usa o 'nomeStatusHistorico' para a linha ---
      row.nomeStatusHistorico ?? 'N/A',
      // -----------------------------------------------------------
      row.nomeResponsavel ?? 'N/A',
      row.descricao ?? '',
    ];
  }).toList();

  // 5. Adiciona uma página ao documento
  doc.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(32),
      build: (pw.Context context) {
        return [
          // --- ALTERAÇÃO 3: Título + Subtítulo (Status Atual) ---
          pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                'Histórico Completo da SSA',
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 4),
              pw.Text(
                'Status atual: $statusAtual', // Adicionado o status atual
                style: pw.TextStyle(
                  fontSize: 14,
                  color: PdfColors.grey700,
                ),
              ),
              pw.SizedBox(height: 20), // Espaçamento antes da tabela
            ],
          ),
          // ----------------------------------------------------

          // Tabela gerada a partir dos dados
          pw.Table.fromTextArray(
            headers: headers,
            data: data,
            headerStyle:
                pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 10),
            cellStyle: pw.TextStyle(fontSize: 9),
            border: pw.TableBorder.all(color: PdfColors.grey, width: 0.5),
            headerDecoration: pw.BoxDecoration(color: PdfColors.grey300),
            cellAlignment: pw.Alignment.centerLeft,
            cellAlignments: {
              0: pw.Alignment.centerLeft,
              1: pw.Alignment.centerLeft,
              2: pw.Alignment.centerLeft,
              3: pw.Alignment.centerLeft,
            },
            columnWidths: {
              0: pw.FlexColumnWidth(2.5), // Data/Hora
              1: pw.FlexColumnWidth(2), // Status
              2: pw.FlexColumnWidth(2), // Responsável
              3: pw.FlexColumnWidth(4), // Descrição
            },
          ),
        ];
      },
    ),
  );

  // 6. Exibe a tela de impressão/salvar PDF
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => doc.save(),
  );
}
// DO NOT REMOVE OR MODIFY THE CODE BELOW!
