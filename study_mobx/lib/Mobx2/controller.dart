import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{
  @observable
  String nome = '';
  
  @observable
  String sobrenome = '';

  @computed
  String get nameComplete => '$nome $sobrenome';

  @action
  changeName(String newName){
    nome = newName;
  }

  @action
  changeLastName(String newLastname){
     sobrenome = newLastname;
  }

}