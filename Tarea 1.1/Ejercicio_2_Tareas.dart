class Tarea{
  // Propiedades
  final String titulo;
  final String descripcion;
  bool estaCompleta;

  // constructor
  Tarea({required this.titulo, required this.descripcion, this.estaCompleta = false});

  // metodos

  void AgregarTarea(List<Tarea> tareas) => tareas.add(this);

  void EliminarTarea(List<Tarea> tareas) => tareas.remove(this);

  void Marcarcomocompletada() => this.estaCompleta = true;

}

void main(){
  final tarea1 = Tarea(titulo: 'Barrer', descripcion: 'Barrer la sala de la casa');
  final tarea2 = Tarea(titulo: 'Cocinar', descripcion: 'Barrer la sala de la casa');
  final tarea3 = Tarea(titulo: 'Trapear', descripcion: 'Barrer la sala de la casa');
  final tarea4 = Tarea(titulo: 'Estudiar', descripcion: 'Barrer la sala de la casa');

  final List<Tarea> tareas = [];

  tarea1.AgregarTarea(tareas);
  tarea3.AgregarTarea(tareas);
  tarea2.AgregarTarea(tareas);
  tarea4.Marcarcomocompletada();
  tarea4.AgregarTarea(tareas);

  tareas.forEach((Tarea){
    print({Tarea.titulo,Tarea.descripcion,'${Tarea.estaCompleta ? 'Completa' : 'Incompleta'}'});
  });

  tarea4.EliminarTarea(tareas);

  print('');
  tareas.forEach((Tarea){
    print({Tarea.titulo,Tarea.descripcion,'${Tarea.estaCompleta ? 'Completa' : 'Incompleta'}'});
  });
  
  

  

  

}
  