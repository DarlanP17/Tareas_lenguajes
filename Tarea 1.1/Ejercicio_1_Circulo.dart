import 'dart:math';

class Circulo{
  // Propiedades
  final int radio;
  final String color;

  // constructor
  Circulo({required this.radio, required this.color});

  //metodos

  int calcularArea() => (pi * pow(this.radio, 2)).toInt();

  int calcularPerimetro() => (2 * pi * this.radio).toInt();

}

void main(){
  final circulo1 = Circulo(radio: 3, color: "Amarillo");

  print('El area del circulo es: ${circulo1.calcularArea()}');
  print('El perimetro es: ${circulo1.calcularPerimetro()}');  
  print('El color del circulo es: ${circulo1.color}');
}