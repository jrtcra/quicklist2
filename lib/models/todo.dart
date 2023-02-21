class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'test1', isDone: true),
      ToDo(id: '02', todoText: 'testing', isDone: false),
      ToDo(id: '03', todoText: 'test again', isDone: true),
      ToDo(id: '04', todoText: 'testing again', isDone: false),
      ToDo(id: '05', todoText: 'fifth test', isDone: false),
    ];
  }
}
