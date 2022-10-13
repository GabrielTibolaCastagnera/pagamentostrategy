abstract class PagarStrategy { // Strategy
  String pagar(double valor);
  String name = 'Crédito';
}

class Pagar {//interface
  String pagarValor(PagarStrategy metodo, double valor) {
    return metodo.pagar(valor);
  }
}

class CartaDeCredito implements PagarStrategy {
  @override
  String pagar(double valor) {
    return "Pagou no Crédito o valor ${valor.toString()}";
  }

  @override
  String name = 'Crédito';
}

class CartaDeDebito implements PagarStrategy {
  @override
  String pagar(double valor) {
    return "Pagou no Débito o valor ${valor.toString()}";
  }

  @override
  String name = 'Débito';
}

class Pix implements PagarStrategy {
  @override
  String pagar(double valor) {
    return "Pagou no Pix o valor ${valor.toString()}";
  }
  @override
  String name = 'Pix';

}
class Boleto implements PagarStrategy {
  @override
  String pagar(double valor) {
    return "Pagou no Boleto o valor ${valor.toString()}";
  }

  @override
  String name = 'Boleto';
}
class Dinheiro implements PagarStrategy {
  @override
  String pagar(double valor) {
    return "Pagou em dinheiro o valor ${valor.toString()}";
  }

  @override
  String name = 'Dinheiro';
}
