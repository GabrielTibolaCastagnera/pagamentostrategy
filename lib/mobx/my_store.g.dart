// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyStore on MyStoreX, Store {
  Computed<String>? _$nomeComputed;

  @override
  String get nome => (_$nomeComputed ??=
          Computed<String>(() => super.nome, name: 'MyStoreX.nome'))
      .value;

  late final _$_nomeAtom = Atom(name: 'MyStoreX._nome', context: context);

  @override
  String get _nome {
    _$_nomeAtom.reportRead();
    return super._nome;
  }

  @override
  set _nome(String value) {
    _$_nomeAtom.reportWrite(value, super._nome, () {
      super._nome = value;
    });
  }

  late final _$MyStoreXActionController =
      ActionController(name: 'MyStoreX', context: context);

  @override
  void updateString(String nome) {
    final _$actionInfo =
        _$MyStoreXActionController.startAction(name: 'MyStoreX.updateString');
    try {
      return super.updateString(nome);
    } finally {
      _$MyStoreXActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome}
    ''';
  }
}
