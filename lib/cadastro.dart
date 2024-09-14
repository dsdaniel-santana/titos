// cadastro.dart
// No pubscep.yaml
// depois rode no terminal: flutter pub get
// Como estamos trabalhando com Api externa, execute o APP
// com o comando abaixo:
// Veja no pubspec.yaml se você tem a dependencia:
//  cupertino_icons: ^1.0.2
//  http: ^1.2.0
// flutter run --web-browser-flag "--disable-web-security"
// Se não desabilitar a segurança, não vai exibir os dados. Só no celular
// por causa do navegador
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  // Controladores para capturar os valores dos campos de texto
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _dataNascimentoController =
      TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmarSenhaController =
      TextEditingController();

  // Função que chamará a API para realizar o cadastro
  Future<void> _cadastrar() async {
    final nome = _nomeController.text;
    final dataNascimento = _dataNascimentoController.text;
    final cpf = _cpfController.text;
    final email = _emailController.text;
    final senha = _senhaController.text;
    final confirmarSenha = _confirmarSenhaController.text;

    // Validação simples
    if (senha != confirmarSenha) {
      // Exibir uma mensagem de erro caso as senhas não coincidam
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("As senhas não coincidem")),
      );
      return;
    }

    // Chamada da API para registrar o usuário (ajustar para
    // o endpoint correto)
    try {
      // TODO: Incluir a lógica para chamar a API de cadastro aqui
      // Exemplo de código para chamada de API (usar pacote http ou Dio):
      /*
      final response = await http.post(
        Uri.parse('https://suaapi.com/cadastro'),
        body: {
          'nome': nome,
          'dataNascimento': dataNascimento,
          'cpf': cpf,
          'email': email,
          'senha': senha,
        },
      );

      if (response.statusCode == 200) {
        // Sucesso no cadastro
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Cadastro realizado com sucesso")),
        );
      } else {
        // Exibir erro
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Erro ao realizar o cadastro")),
        );
      }
      */
    } catch (e) {
      // Tratamento de erros
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Erro ao realizar o cadastro: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // widget Scaffold implementa a estrutura do layout visual
    // do Material Design básico e permite definir outros widgets
    // do Material Design no seu interior

    return Scaffold(
      body: SafeArea(
        // O widget SafeArea adiciona automaticamente preenchimento
        //suficiente ao widget filho para evitar invasões do sistema
        //operacional.
        child: Container(
          constraints: BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Color(0xFFF2F2F2),
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 6, bottom: 75),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Imagem do logo
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 36),
                            width: 292,
                            height: 76,
                            child: Image.network(
                              "/images/titoslogo.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),

                        // Título da página
                        Container(
                          margin: EdgeInsets.only(bottom: 43, left: 28),
                          child: Text(
                            "Cadastre-se",
                            style: TextStyle(
                              color: Color(0xFF555555),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        // Campos de texto
                        buildTextField("Nome completo", _nomeController),
                        buildTextField(
                            "Data de Nascimento", _dataNascimentoController),
                        buildTextField("CPF", _cpfController),
                        buildTextField("E-mail", _emailController),
                        buildTextField("Senha", _senhaController,
                            obscureText: true),
                        buildTextField(
                            "Confirmar senha", _confirmarSenhaController,
                            obscureText: true),

                        // Botão de cadastro
                        GestureDetector(
                          onTap: _cadastrar,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFB50E22),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 20),
                            margin: EdgeInsets.symmetric(horizontal: 23),
                            width: double.infinity,
                            child: Center(
                              child: Text(
                                "CADASTRAR",
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller,
      {bool obscureText = false}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFFFFFF),
      ),
      padding: EdgeInsets.symmetric(vertical: 17, horizontal: 20),
      margin: EdgeInsets.only(bottom: 26, left: 22, right: 22),
      width: double.infinity,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Color(0xFFB50E22),
            fontSize: 20,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
