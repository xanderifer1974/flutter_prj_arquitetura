import 'package:flutter/foundation.dart';
import 'package:projeto_arquitetura/app/models/api_produto_model.dart';
import 'package:projeto_arquitetura/app/repositories/produtos_repository_interface.dart';

class ApiProdutoViewModel {
  final IApiProdutos repository;
  final apiprodutoModel = ValueNotifier<ApiprodutoModel>(null);

  ApiProdutoViewModel(this.repository);


  fill() async {

    apiprodutoModel.value = await repository.getProduct();
  }
}
