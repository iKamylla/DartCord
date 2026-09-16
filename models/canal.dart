import 'mensagem.dart';

class Canal {
  final String nome;
  final List<Mensagem> _mensagens = [];

  Canal({required this.nome});

  List<Mensagem> get mensagens => _mensagens;

  void addMensagem(Mensagem mensagem) {
    _mensagens.add(mensagem);
  }
}
