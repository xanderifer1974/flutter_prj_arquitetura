import 'package:flutter/cupertino.dart';
import 'package:projeto_arquitetura/app/models/api_produto_model.dart';
import 'package:projeto_arquitetura/app/viewmodels/api_produto_viewmodel.dart';

class HomeController{

  final ApiProdutoViewModel viewModel;

  HomeController(this.viewModel);

  ValueNotifier<ApiprodutoModel> get produto => viewModel.apiprodutoModel; 

  getProduto(){
    viewModel.fill();
  }

}