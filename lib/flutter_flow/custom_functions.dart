import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

/// converter base 64 salvo no app state para upload e subir no supabase
FFUploadedFile? base64ToUpload(String base64) {
  final bytes = base64Decode(base64);
  final id = DateTime.now().millisecondsSinceEpoch.toString();

  // Corrigindo a extração da extensão
  final extension = base64.contains(';base64')
      ? base64.split(';')[0].split('/').last
      : 'png'; // Padrão para PNG caso não tenha extensão.

  final fileName = '$id.$extension';

  return FFUploadedFile(
    name: fileName, // Adicionando o nome do arquivo
    bytes: bytes,
  );
}

/// substituir virgula por ponto
double replaceCommaToDouble(String inputString) {
  final cleaned = inputString.trim().replaceAll(',', '.');
  // usa double.parse para expor erro se o valor for inválido (ajuda a detectar bugs)
  return double.parse(cleaned);
}

double sumListVisitaTecnica(List<double> listTotal) {
  return listTotal.fold(0.0, (sum, item) => sum + item);
}

double sumMetrosPecasVisitaTecnica(
  List<int> quantidadePrevista,
  List<double> tamanhos,
) {
  if (tamanhos.length != quantidadePrevista.length) {
    return 0;
  }

  double total = 0;

  for (int i = 0; i < tamanhos.length; i++) {
    total += tamanhos[i] * quantidadePrevista[i];
  }

  return total;
}

double calcularHorasTrabalhadas(
  DateTime horaInicio,
  DateTime horaTermino,
) {
  if (horaTermino.isBefore(horaInicio)) {
    return 0;
  }

  final diferenca = horaTermino.difference(horaInicio);
  return diferenca.inMinutes / 60.0;
}

double calcularTotalHomemHora(List<double> horasTotais) {
  if (horasTotais.isEmpty) {
    return 0;
  }

  return horasTotais.fold(0.0, (sum, item) => sum + item);
}

List<int> stringListToIntList(List<String> stringList) {
  if (stringList == null || stringList.isEmpty) {
    return [];
  }

  List<int> intList = [];

  for (String str in stringList) {
    try {
      // Remove espaços em branco
      String cleanStr = str.trim();

      // Tenta converter para int
      if (cleanStr.isNotEmpty) {
        // Se tiver ponto decimal, converte para double primeiro e depois para int
        if (cleanStr.contains('.') || cleanStr.contains(',')) {
          double doubleValue = double.parse(cleanStr.replaceAll(',', '.'));
          intList.add(doubleValue.toInt());
        } else {
          intList.add(int.parse(cleanStr));
        }
      }
    } catch (e) {
      // Ignora valores que não podem ser convertidos para int
      print('Não foi possível converter "$str" para int: $e');
    }
  }

  return intList;
}

DateTime? handleStringToTime(String? timeString) {
  if (timeString == null || timeString.isEmpty) {
    return null;
  }

  try {
    // Separa a string de hora (formato HH:mm:ss ou HH:mm)
    final parts = timeString.split(':');

    if (parts.length >= 2) {
      final hour = int.parse(parts[0]);
      final minute = int.parse(parts[1]);
      final second = parts.length >= 3 ? int.parse(parts[2]) : 0;

      // Cria um DateTime com a data de hoje e a hora especificada
      final now = DateTime.now();
      return DateTime(now.year, now.month, now.day, hour, minute, second);
    }

    return null;
  } catch (e) {
    print('Erro ao converter string para DateTime: $e');
    return null;
  }
}

int sumListInt(List<int> listTotal) {
  return listTotal.fold(0, (sum, item) => sum + item);
}
