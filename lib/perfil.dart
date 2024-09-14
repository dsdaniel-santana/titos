import 'package:flutter/material.dart';
import 'package:titos/principal.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header com foto de perfil e informações do usuário
                _buildUserProfileHeader(),

                // Seção "Meus dados"
                _buildSectionTitle("Meus dados"),
                _buildUserDataInput("Nome completo"),
                _buildUserDataInput("Data de Nascimento"),
                _buildUserDataInput("CPF"),
                _buildUserDataInput("E-mail"),

                // Seção "Meus endereços"
                _buildSectionTitle("Meus endereços"),
                _buildAddressCard(),

                // Seção "Pagamentos"
                _buildSectionTitle("Pagamentos"),
                _buildPaymentCard(),
                _buildPaymentCard(), // Se houver mais pagamentos, adicione mais cards aqui
              ],
            ),
          ),
        ),
      ),

      // aqui inserimos o menu de rodapé - Fica depois do fechamento
      // do Safearea
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              color: Color(0xFFB50E22),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Principal()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.assignment),
              color: Color(0xFFB50E22),
              onPressed: () {
                // Adicione a ação para o ícone Search aqui
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              color: Color(0xFFB50E22),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Perfil()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.format_list_bulleted_sharp),
              color: Color(0xFFB50E22),
              onPressed: () {
                // Adicione a ação para o ícone Profile aqui
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserProfileHeader() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 37.5,
            backgroundImage: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Olá, Nome usuário",
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "email@email.com",
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 22),
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xFFB50E22),
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildUserDataInput(String label) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF2F2F2),
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 16),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget _buildAddressCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rua Tito, 54",
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Vila Romana",
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "Editar",
            style: TextStyle(
              color: Color(0xFF555555),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 13),
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        boxShadow: [
          BoxShadow(
            color: Color(0x40555555),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(13),
      child: Row(
        children: [
          CircleAvatar(
            radius: 17,
            backgroundImage: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
          ),
          SizedBox(width: 15),
          Text(
            "3589",
            style: TextStyle(
              color: Color(0xFF555555),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            "Editar",
            style: TextStyle(
              color: Color(0xFF555555),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
