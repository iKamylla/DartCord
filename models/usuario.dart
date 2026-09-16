class Usuario {
  final String nome;
  final String apelido;
  bool online;

  int _advertencias = 0;
  int get advertencias => _advertencias;

  Usuario({required this.nome, required this.apelido, this.online = false});

  void advertir() {
    _advertencias++;
  }

  String obterStatus() {
    return online ? 'online' : 'offline';
  }
}
