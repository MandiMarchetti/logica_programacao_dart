import 'dart:io';


void main() {

  print('Calcule seu IMC. Primeiro, digite seu nome:');
  final String? nome = stdin.readLineSync();

  print('Muito bem! Agora digite seu peso:');
  final String? pesoString = stdin.readLineSync();

  print('Ótimo! $nome, por último, digite sua altura (considere"." para separar metros de centímetros):');
  final String? alturaString = stdin.readLineSync();


  double peso = double.parse(pesoString!);
  double altura = double.parse(alturaString!);

  double resultado = peso / (altura * altura);

  print('\n\n');

  if (resultado <= 18.5) {
    print('$nome, seu resultado é: $resultado - Baixo Peso');
  } else if (resultado <=24.9) {
    print('$nome, seu resultado é: $resultado - Peso Nomal');
  } else if (resultado <= 29.9) { 
    print('$nome, seu resultado é: $resultado - Sobrepeso');
  } else if (resultado <= 34.9) { 
    print('$nome, seu resultado é: $resultado - Obesidade Grau I');
  } else if (resultado <= 39.9) { 
    print('$nome, seu resultado é: $resultado - Obesidade Grau II');
  } else if (resultado > 40) { 
    print('$nome, seu resultado é: $resultado - Obesidade Grau III');
  }

   print('\n\n');
}
