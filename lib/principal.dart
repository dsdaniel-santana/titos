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
 
class Principal extends StatelessWidget {
  const Principal({super.key});
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
                  color: Color(0xFFFFFFFF),
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IntrinsicHeight(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 27),
                              width: double.infinity,
                              child: Stack(clipBehavior: Clip.none, children: [
                                Column(children: [
                                  Center(
                                    child: Container(
                                      width: double.infinity,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                                width: 231,
                                                height: 79,
                                                child: Image.network(
                                                  "/images/titoslogo.png",
                                                  fit: BoxFit.fill,
                                                )),
                                          ]),
                                    ),
                                  ),
                                ]),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  height: 54,
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(left: 54, right: 29),
                                    transform:
                                        Matrix4.translationValues(0, -40, 0),
                                    height: 54,
                                    width: double.infinity,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          IntrinsicHeight(
                                            child: Container(
                                              margin: EdgeInsets.only(top: 23),
                                              width: double.infinity,
                                              child: Row(children: [
                                                IntrinsicHeight(
                                                  child: Container(
                                                    padding: EdgeInsets.only(
                                                        left: 2, right: 2),
                                                    margin: EdgeInsets.only(
                                                        right: 1),
                                                    width: 25,
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: []),
                                                  ),
                                                ),
                                              ]),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 21, left: 26),
                            child: Text(
                              "Categorias",
                              style: TextStyle(
                                color: Color(0xFFB50E22),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              margin: EdgeInsets.only(
                                  bottom: 11, left: 22, right: 22),
                              width: double.infinity,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IntrinsicHeight(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xFFF2F2F2),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x40000000),
                                              blurRadius: 4,
                                              offset: Offset(0, 4),
                                            ),
                                          ],
                                        ),
                                        padding: EdgeInsets.only(
                                            top: 11,
                                            bottom: 11,
                                            left: 52,
                                            right: 52),
                                        width: 163,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 9),
                                                  height: 50,
                                                  width: double.infinity,
                                                  child: Image.network(
                                                    "https://i.imgur.com/1tMFzp8.png",
                                                    fit: BoxFit.fill,
                                                  )),
                                              Text(
                                                "Lanches",
                                                style: TextStyle(
                                                  color: Color(0xFF555555),
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    IntrinsicHeight(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xFFF2F2F2),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x40000000),
                                              blurRadius: 4,
                                              offset: Offset(0, 4),
                                            ),
                                          ],
                                        ),
                                        padding: EdgeInsets.only(
                                            top: 11,
                                            bottom: 11,
                                            left: 55,
                                            right: 55),
                                        width: 163,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 9),
                                                  height: 50,
                                                  width: double.infinity,
                                                  child: Image.network(
                                                    "https://i.imgur.com/1tMFzp8.png",
                                                    fit: BoxFit.fill,
                                                  )),
                                              Text(
                                                "Bebidas",
                                                style: TextStyle(
                                                  color: Color(0xFF555555),
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              margin: EdgeInsets.only(
                                  bottom: 23, left: 22, right: 22),
                              width: double.infinity,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IntrinsicHeight(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xFFF2F2F2),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x40000000),
                                              blurRadius: 4,
                                              offset: Offset(0, 4),
                                            ),
                                          ],
                                        ),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 13),
                                        width: 163,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 7,
                                                      left: 56,
                                                      right: 56),
                                                  height: 50,
                                                  width: double.infinity,
                                                  child: Image.network(
                                                    "https://i.imgur.com/1tMFzp8.png",
                                                    fit: BoxFit.fill,
                                                  )),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 36),
                                                child: Text(
                                                  "Sobremesas",
                                                  style: TextStyle(
                                                    color: Color(0xFF555555),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    IntrinsicHeight(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xFFF2F2F2),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x40000000),
                                              blurRadius: 4,
                                              offset: Offset(0, 4),
                                            ),
                                          ],
                                        ),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 13),
                                        width: 163,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 7,
                                                      left: 55,
                                                      right: 55),
                                                  height: 50,
                                                  width: double.infinity,
                                                  child: Image.network(
                                                    "https://i.imgur.com/1tMFzp8.png",
                                                    fit: BoxFit.fill,
                                                  )),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 8),
                                                child: Text(
                                                  "Acompanhamentos",
                                                  style: TextStyle(
                                                    color: Color(0xFF555555),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 18, left: 26),
                            child: Text(
                              "Últimos pedidos",
                              style: TextStyle(
                                color: Color(0xFFB50E22),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.only(
                                  top: 30, bottom: 19, left: 17, right: 17),
                              margin: EdgeInsets.only(
                                  bottom: 22, left: 24, right: 24),
                              width: double.infinity,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IntrinsicHeight(
                                      child: Container(
                                        margin:
                                            EdgeInsets.only(top: 3, right: 17),
                                        width: 37,
                                        child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "22",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF2A6826),
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ]),
                                              Positioned(
                                                bottom: 0,
                                                left: 0,
                                                width: 38.88671875,
                                                height: 20,
                                                child: Container(
                                                  transform:
                                                      Matrix4.translationValues(
                                                          -1, 17, 0),
                                                  child: Text(
                                                    "JUN",
                                                    style: TextStyle(
                                                      color: Color(0xFF2A6826),
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    Container(
                                      color: Color(0xFFF2F2F2),
                                      margin: EdgeInsets.only(right: 11),
                                      width: 1,
                                      height: 56,
                                      child: SizedBox(),
                                    ),
                                    Expanded(
                                      child: IntrinsicHeight(
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(top: 5, right: 4),
                                          width: double.infinity,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 16),
                                                  child: Text(
                                                    "Rua Tito, 54 - SP",
                                                    style: TextStyle(
                                                      color: Color(0xFF555555),
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 1),
                                                  child: Text(
                                                    "R\$ 110,90",
                                                    style: TextStyle(
                                                      color: Color(0xFF555555),
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 2),
                                        width: 50,
                                        height: 50,
                                        child: Image.network(
                                          "https://i.imgur.com/1tMFzp8.png",
                                          fit: BoxFit.fill,
                                        )),
                                  ]),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.only(
                                  top: 30, bottom: 19, left: 18, right: 18),
                              margin: EdgeInsets.only(
                                  bottom: 19, left: 24, right: 24),
                              width: double.infinity,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IntrinsicHeight(
                                      child: Container(
                                        margin:
                                            EdgeInsets.only(top: 3, right: 17),
                                        width: 36,
                               
                                      ),
                                    ),
                                    Container(
                                      color: Color(0xFFF2F2F2),
                                      margin: EdgeInsets.only(right: 11),
                                      width: 1,
                                      height: 56,
                                      child: SizedBox(),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 2),
                                        width: 50,
                                        height: 50,
                                        child: Image.network(
                                          "https://i.imgur.com/1tMFzp8.png",
                                          fit: BoxFit.fill,
                                        )),
                                  ]),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 18),
                            width: 342,
                            height: 106,
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}