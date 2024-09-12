import 'package:flutter/material.dart';
import 'cadastro.dart'; // Certifique-se de importar a página de cadastro
class Logintito extends StatelessWidget {
  const Logintito({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    padding: EdgeInsets.only(top: 117, bottom: 231),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(bottom: 86, left: 51, right: 51),
                          height: 143,
                          width: double.infinity,
                          child: Image.network(
                            "/image/logo.png", // Substitua pela URL real ou use assets
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFF2F2F2),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFFFFF),
                          ),
                          padding: EdgeInsets.only(
                              top: 19, bottom: 19, left: 13, right: 13),
                          margin:
                              EdgeInsets.only(bottom: 27, left: 24, right: 24),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Usuário",
                                style: TextStyle(
                                  color: Color(0xFFB50E22),
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 8),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFF2F2F2),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFFFFF),
                          ),
                          padding: EdgeInsets.only(
                              top: 19, bottom: 19, left: 13, right: 13),
                          margin:
                              EdgeInsets.only(bottom: 37, left: 24, right: 24),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Senha",
                                style: TextStyle(
                                  color: Color(0xFFB50E22),
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 8),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 32),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFB50E22),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 22),
                          margin:
                              EdgeInsets.only(bottom: 32, left: 24, right: 24),
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "ENTRAR",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CadastroPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Cadastre-se",
                              style: TextStyle(
                                color: Color(0xFF555555),
                                fontSize: 16,
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
}