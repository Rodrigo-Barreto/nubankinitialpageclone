import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _cashVisible = true;

  void cashVisible() {
    setState(
      () {
        _cashVisible = !_cashVisible;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 175,
              color: Colors.deepPurpleAccent[700],
              child: Column(
                children: [
                  Divider(
                    height: 40,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.deepPurpleAccent,
                      child: Icon(Icons.person_outlined, color: Colors.white),
                    ),
                    trailing: Container(
                      width: 150,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () => cashVisible(),
                            icon: Icon(
                              _cashVisible
                                  ? Icons.remove_red_eye_sharp
                                  : Icons.remove_rounded,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.help_outline_outlined),
                              color: Colors.white),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.email_outlined),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 25),
                    child: Row(
                      children: [
                        Text(
                          'Olá, Rodrigo',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 120,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              'Conta',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_right,
                                size: 25,
                              ))
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        _cashVisible
                            ? Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  'R\$ 2,500',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.only(left: 15),
                                height: 30,
                                width: MediaQuery.of(context).size.width * 0.7,
                                color: Colors.grey[300],
                              ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          maxRadius: 37,
                          child: InkWell(
                            onTap: () {
                              print('ola');
                            },
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 15,
            ),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(Icons.credit_card),
                    ),
                    Container(
                      width: 20,
                    ),
                    Text(
                      'Meus Cartões',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 90,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          width: 300,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ActionsCard(cashVisible: _cashVisible),
            ActionsCardInvestiment(),
            ActionsCardLifeSegurity(),
            CardSliderAboutMore(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class CardSliderAboutMore extends StatelessWidget {
  const CardSliderAboutMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, bottom: 14),
                child: Text(
                  'Descubra mais',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          height: 150,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      width: 300,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ActionsCard extends StatelessWidget {
  final bool _cashVisible;
  const ActionsCard({Key? key, required bool cashVisible})
      : _cashVisible = cashVisible,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              width: 2,
              color: Color(0xFFD6D6D6D6),
            ),
          ),
        ),
        height: 260,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 15,
                    bottom: 5,
                  ),
                  child: Icon(
                    Icons.credit_card,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Cartão de Credito',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        size: 25,
                      ))
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text("Fatura Fechada"),
              ),
            ),
            Row(
              children: [
                _cashVisible
                    ? Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'R\$ 2,500',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.only(left: 20),
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.7,
                        color: Colors.grey[300],
                      ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text("Vencimento dia 03"),
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Pagar fatura"),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Pacelar",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFD6D6D6D6),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ActionsCardInvestiment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 220,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 15,
                    bottom: 5,
                  ),
                  child: Icon(
                    Icons.signal_cellular_alt_outlined,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Investimento',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        size: 25,
                      ))
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                    "A revolução roxa começou. Invista de /n/n maneira simples, sem burocracia e 100% digital"),
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Conhecer"),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.deepPurpleAccent),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ActionsCardLifeSegurity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              width: 2,
              color: Color(0xFFD6D6D6D6),
            ),
          ),
        ),
        height: 150,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 15,
                    bottom: 5,
                  ),
                  child: Icon(
                    Icons.favorite_outline,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Seguro de vida',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        size: 25,
                      ))
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                    "Conheça a nubank vida: um seguro simples e que cabe no bolso."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
