import 'dart:io';


void main() {

  final String? nome = pegarInput('Calcule seu IMC. Primeiro, digite seu nome:', 'nome');

  final String? pesoString = pegarInput('Muito bem! Agora digite seu peso:', 'peso');

  final String? alturaString = pegarInput('Ótimo! $nome, por último, digite sua altura (considere"." para separar metros de centímetros):', 'altura');

//Conversão as Strings em numeros ára realizar o calculo em 'resultado'
  double peso = double.parse(pesoString!);
  double altura = double.parse(alturaString!);

//double armazena o resultado do calculo do IMC
  double resultado = calcularImc(peso, altura);

  print('\n\n'); //Para pular duas linhas

//A frase com a mensagem aparecerá de acordo com o resultado do calculo do IMC
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


//Função genérica para pegar os inputs - Nesse caso eu criei uma genérica que pode servir para os três inputs
String pegarInput(String frase, String input){
  print(frase);

  String? input = stdin.readLineSync();

  if(input == null) {
    return ('Null');
  } else{
    return input;
  }
}

//Função para calcular o peso
double calcularImc(double peso, double altura){
  return peso / (altura*altura);
}