// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/services.dart';

class BrasilTextField extends StatefulWidget {
  const BrasilTextField({
    Key? key,
    this.width,
    this.height,
    this.value,
    required this.filledColor,
    required this.fontSize,
    required this.colorText,
    required this.borderColor,
    required this.focusedBorderColor,
    required this.autoFocus,
    this.hintText,
    required this.labelText,
    required this.borderRadius,
    required this.borderSize,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? value;
  final Color filledColor;
  final double fontSize;
  final Color colorText;
  final Color borderColor;
  final Color focusedBorderColor;
  final bool autoFocus;
  final String? hintText;
  final String labelText;
  final int borderRadius;
  final int borderSize;

  @override
  _BrasilTextFieldState createState() => _BrasilTextFieldState();
}

class _BrasilTextFieldState extends State<BrasilTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.value ?? '',
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final labelStyle = Theme.of(context).textTheme.titleMedium?.copyWith(
          color: widget.colorText,
        );

    return TextFormField(
      controller: _controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        CurrencyTextInputFormatter(
          locale: 'pt_BR',
          decimalDigits: 2,
          symbol: 'R\$',
          enableNegative: true,
        ),
        LengthLimitingTextInputFormatter(16),
      ],
      style: TextStyle(
        fontWeight: FontWeight.normal,
        color: widget.colorText,
        fontSize: widget.fontSize,
      ),
      autofocus: widget.autoFocus,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: labelStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius.toDouble()),
          borderSide: BorderSide(
            color: widget.borderColor,
            width: widget.borderSize.toDouble(),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius.toDouble()),
          borderSide: BorderSide(
            color: widget.focusedBorderColor,
            width: widget.borderSize.toDouble(),
          ),
        ),
        filled: true,
        fillColor: widget.filledColor,
      ),
      onChanged: (text) {
        updateValues(text);
      },
    );
  }

  void updateValues(String text) {
    double? parsedValue = parseCurrency(text);
    if (parsedValue != null) {
      FFAppState().valueFormat =
          text; // Altere para o nome do seu AppState de valor formatado (string)
      FFAppState().valueDouble =
          parsedValue; // Altere para o nome do seu AppState de valor em double
    }
  }

  double? parseCurrency(String text) {
    try {
      // Remove o símbolo 'R$' e pontos de milhar
      String sanitizedValue =
          text.replaceAll('R\$', '').replaceAll('.', '').replaceAll(',', '.');

      // Verifica se o valor tem casas decimais, se não, adiciona ".00"
      if (!sanitizedValue.contains('.')) {
        sanitizedValue = '$sanitizedValue.00';
      } else {
        // Garante que há exatamente duas casas decimais
        List<String> parts = sanitizedValue.split('.');
        if (parts[1].length == 1) {
          sanitizedValue = '${parts[0]}.${parts[1]}0';
        }
      }

      double value = double.parse(sanitizedValue);
      return value;
    } catch (e) {
      // Manejo de exceção
      print('Erro ao analisar o valor da moeda: $e');
      return null;
    }
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
