import 'package:projeto_arquitetura/app/interface/client_http_interface.dart';
import 'package:projeto_arquitetura/app/models/api_produto_model.dart';
import 'package:projeto_arquitetura/app/repositories/produtos_repository_interface.dart';

class ApiProdutoRepository implements IApiProdutos{

  final IClientHttp client;

  ApiProdutoRepository(this.client);

  @override
  Future<ApiprodutoModel> getProduct()  async{  
    //10.0.2.2 deve ser utilizado no lugar do localhost, para fazer testes em api local.
    var json = await client.get('http://10.0.2.2:3000/Produtos');

    ApiprodutoModel model = ApiprodutoModel.fromJson(json[0]);
    return model;

  }

}