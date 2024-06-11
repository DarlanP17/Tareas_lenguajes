class Tarea{
  // Propiedades
  final String titulo;
  final String descripcion;
  bool estaCompleta;

  // constructor
  Tarea({required this.titulo, required this.descripcion, this.estaCompleta = false});

  List<Tarea> tareas = [];

  // metodos
  void Marcarcomocompletada() => this.estaCompleta = true;

}

void main(){
  final tarea1 = Tarea(titulo: 'Barrer', descripcion: 'Barrer la sala de la casa');
  final tarea2 = Tarea(titulo: 'Cocinar', descripcion: 'Barrer la sala de la casa');
  final tarea3 = Tarea(titulo: 'Trapear', descripcion: 'Barrer la sala de la casa');
  final tarea4 = Tarea(titulo: 'Estudiar', descripcion: 'Barrer la sala de la casa');

  List<Tarea> tareas = [
    tarea1,
    tarea2,
    tarea3
  ];

  tareas.add(tarea4);

  tarea1.Marcarcomocompletada();

  tareas.forEach((Tarea){
    print({Tarea.titulo,Tarea.descripcion,'${Tarea.estaCompleta ? 'Completa' : 'Incompleta'}'});
  });
  
  tareas.remove(tarea1);
  print('');
  tareas.forEach((Tarea){
    print({Tarea.titulo,Tarea.descripcion,'${Tarea.estaCompleta ? 'Completa' : 'Incompleta'}'});
  });

}
  