import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/menu/item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 100),
        opacity: showMenu ? 1 : 0,
        child: Container(
          height: _height * 0.55,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Image.network(
                  'https://pngimg.com/uploads/qr_code/qr_code_PNG38.png',
                  height: 100,
                  color: Colors.white,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Banco ',
                    children: [
                      TextSpan(
                        text: '260 - Nu Pagamentos S.A',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    text: 'Agência ',
                    children: [
                      TextSpan(
                        text: '0001',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    text: 'Conta ',
                    children: [
                      TextSpan(
                        text: '0000000-0',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      ItemMenu(
                        icon: Icons.info_outline,
                        text: 'Me ajuda',
                      ),
                      ItemMenu(
                        icon: Icons.person_outline,
                        text: 'Perfil',
                      ),
                      ItemMenu(
                        icon: Icons.settings,
                        text: 'Configurar Conta',
                      ),
                      ItemMenu(
                        icon: Icons.credit_card,
                        text: 'Configurar Cartão',
                      ),
                      ItemMenu(
                        icon: Icons.store_mall_directory,
                        text: 'Pedir conta PJ',
                      ),
                      ItemMenu(
                        icon: Icons.phone_android,
                        text: 'Configurações do app',
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.7, color: Colors.white54),
                        ),
                        child: RaisedButton(
                          color: Colors.purple[800],
                          highlightColor: Colors.transparent,
                          elevation: 0,
                          disabledElevation: 0,
                          focusElevation: 0,
                          highlightElevation: 0,
                          hoverElevation: 0,
                          splashColor: Colors.purple[900],
                          child: Text(
                            'SAIR DO APP',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
