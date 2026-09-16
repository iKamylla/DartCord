import 'models/usuario.dart';
import 'models/moderador.dart';
import 'models/mensagem.dart';
import 'models/canal.dart';

void main() {
    final usuario = Usuario(
        nome: 'Pedro',
        apelido: 'PG',
        online: true,
    );

    final moderador = Moderador(
        nome: 'Kamylla',
        apelido: 'Kamy',
        online: true,
    );

    usuario.advertir();

    final List<Usuario> usuarios = [usuario, moderador];

    final canais = ['geral', 'dart', 'flutter'];

    final canalDart = Canal(nome: 'dart');

    final msg1 = Mensagem(autor: usuario, texto: 'Olá, DartCord!');
    final msg2 = Mensagem(autor: moderador, texto: 'Pratiquem! Pratiquem!');

    canalDart.addMensagem(msg1);
    canalDart.addMensagem(msg2);

    print('DARTCORD\nServidor: Programação Mobile');

    print('\nUsuários online:');
    for (final user in usuarios) {
        if (user.online) {
            print(user.apelido);
        }
    }

    print('\nCanais:');
    for (final canal in canais) {
        print('#$canal');
    }

    print('\nExibindo mensagens do canal:');
    print('#${canalDart.nome}');
    for (final msg in canalDart.mensagens) {
        print('${msg.autor.apelido}: ${msg.texto}');
    }
}