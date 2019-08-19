import 'dart:ffi';

main() {
  var nombre = 'Miguel';
  print(nombre);
  nombre = 'CRistian';
  print(nombre);

  var nombre2;
  print(nombre2);
  conocerTipo(nombre2);
  nombre2 = 'Cristian';
  conocerTipo(nombre2);
  nombre2 = 21;
  conocerTipo(nombre2);
  nombre2 = true;
  conocerTipo(nombre2);
}


conocerTipo(dynamic variable){
  if(variable is String){
    variable = variable.toString() + ' ' + 2.toString();
    print('La variable nombre2 es de tipo String ${variable}');
  }
  if(variable is int){
    variable = variable + 2;
    print('La variable nombre2 es de tipo int ${variable}');
  }
  if(variable is bool){
    print('La variable nombre2 es de tipo booleano');
  }
  if(variable is !String && variable is !int && variable is !bool){
    print('La variable nombre2 es de otro tipo');
  }
}