/*
run build: flutter pub run build_runner build
run watch: flutter pub run build_runner watch
*/

import 'package:mobx/mobx.dart';

part 'my_store.g.dart';

class MyStore = MyStoreX with _$MyStore;

abstract class MyStoreX with Store {

  @observable
  String _nome = '';


  @action
  void updateString(String nome) {
    try{_nome = nome;}catch(e){throw Exception(e);}
    
  }

  @computed
  String get nome => _nome;
}
