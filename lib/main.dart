import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_ex/mobx/my_store.dart';
import 'package:mobx_ex/pagamentos/cartao.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myStore = MyStore();
  final _controller = TextEditingController();

  Pagar pagamento = Pagar();
  List<PagarStrategy> pagamentos = [
    CartaDeCredito(),
    CartaDeDebito(),
    Pix(),
    Boleto(),
    Dinheiro(),
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Exemplo MobX e de Strategy'),
          ),
          body: Center(
              child: Column(
            children: [
              const Text(
                'Valor a ser pago',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Observer(builder: (_) {
                return Column(
                  children: [
                    TextFormField(
                      controller: _controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: "Reais",
                          hintText: "Valor",
                          icon: Icon(Icons.phone_iphone)),
                    ),
                    const Text('Escolha a forma de pagamento'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            if (_controller.text.isNotEmpty) {
                              myStore.updateString(pagamento.pagarValor(
                                  CartaDeCredito(),
                                  double.parse(_controller.text)));
                            }
                          },
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          child: const Text('Crédito'),
                        ),
                        TextButton(
                          onPressed: () {
                            if (_controller.text.isNotEmpty) {
                              myStore.updateString(pagamento.pagarValor(
                                  CartaDeDebito(),
                                  double.parse(_controller.text)));
                            }
                          },
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          child: const Text('Débito'),
                        ),
                        TextButton(
                          onPressed: () {
                            if (_controller.text.isNotEmpty) {
                              myStore.updateString(pagamento.pagarValor(
                                  Boleto(), double.parse(_controller.text)));
                            }
                          },
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          child: const Text('Boleto'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            if (_controller.text.isNotEmpty) {
                              myStore.updateString(pagamento.pagarValor(
                                  Pix(), double.parse(_controller.text)));
                            }
                          },
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          child: const Text('Pix'),
                        ),
                        TextButton(
                          onPressed: () {
                            if (_controller.text.isNotEmpty) {
                              myStore.updateString(pagamento.pagarValor(
                                  Dinheiro(), double.parse(_controller.text)));
                            }
                          },
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          child: const Text('Dinheiro'),
                        ),
                      ],
                    ),
                    Text(myStore.nome)
                  ],
                );
              }),
            ],
          ))),
    );
  }
}
