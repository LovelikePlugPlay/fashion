// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:intl/intl.dart';

Future gerarPDFResultadoConsolidado(
    List<DtRelatorioConsolidadoStruct> resultados) async {
  print('Número de resultados recebidos: ${resultados.length}');

  if (resultados.isEmpty) {
    print('Erro: A lista de resultados está vazia');
    return;
  }

  // Função para formatar valores no padrão R$ xxx.xxx,xx
  String formatarMoeda(double? valor) {
    if (valor == null) return 'N/A';
    final formatoMoeda = NumberFormat.currency(
      locale: 'pt_BR',
      symbol: 'R\$',
      decimalDigits: 2,
    );
    return formatoMoeda.format(valor);
  }

  try {
    final pdf = pw.Document();

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text('Relatório Consolidado Fatura Visa',
                    style: pw.TextStyle(
                        fontSize: 18, fontWeight: pw.FontWeight.bold)),
                pw.Text(
                    'Valor Fatura: ${formatarMoeda(resultados[0].valorFatura)}',
                    style: pw.TextStyle(
                        fontSize: 16, fontWeight: pw.FontWeight.bold)),
              ],
            ),
            pw.SizedBox(height: 20),
            pw.Table(
              border: pw.TableBorder.all(),
              children: [
                // Cabeçalho da tabela
                pw.TableRow(
                  children: [
                    'Tipo Cobrança',
                    'Quantidade de Transações',
                    'Valor da Tarifa',
                    'Valor Utilizado',
                    'Valor para Visa',
                  ]
                      .map((header) => pw.Container(
                            alignment: pw.Alignment.center,
                            padding: pw.EdgeInsets.all(5),
                            child: pw.Text(header,
                                style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold)),
                          ))
                      .toList(),
                ),
                // Dados da tabela
                ...resultados.map((resultado) {
                  print(
                      'Processando resultado: ${resultado.tipoCobranca}'); // Log para debug
                  return pw.TableRow(
                    children: [
                      resultado.tipoCobranca ?? 'N/A',
                      resultado.quantidadeTransacoes?.toString() ?? 'N/A',
                      formatarMoeda(resultado.valorTarifa),
                      formatarMoeda(resultado.valorTotalCompras),
                      formatarMoeda(resultado.valorVisa),
                    ]
                        .map((data) => pw.Container(
                              alignment: pw.Alignment.center,
                              padding: pw.EdgeInsets.all(5),
                              child: pw.Text(data),
                            ))
                        .toList(),
                  );
                }),
              ],
            ),
          ];
        },
      ),
    );

    final pdfSaved = await pdf.save();

    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdfSaved);

    print('PDF gerado com sucesso');
  } catch (e) {
    print('Erro ao gerar PDF: $e');
    print(e.toString()); // Imprime a stack trace completa
  }
}
