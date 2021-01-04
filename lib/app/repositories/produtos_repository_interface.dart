import 'package:projeto_arquitetura/app/models/api_produto_model.dart';

abstract class IApiProdutos{
 Future<ApiprodutoModel> getProduct();
}