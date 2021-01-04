import 'package:flutter/material.dart';
import 'package:projeto_arquitetura/app/models/api_produto_model.dart';
import 'package:projeto_arquitetura/app/pages/home/home_controller.dart';
import 'package:projeto_arquitetura/app/repositories/produtos_repository.dart';
import 'package:projeto_arquitetura/app/services/client_http_service.dart';
import 'package:projeto_arquitetura/app/viewmodels/api_produto_viewmodel.dart';
import 'components/custom_switch_widget.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = HomeController(
    ApiProdutoViewModel(
      ApiProdutoRepository(
        ClientHttpService(),
      )));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_circle),
        onPressed: (){
        controller.getProduto();
      }),
      body: Center(
        child: Column(
          children: [
            CustomSwitchWidget(),
            ValueListenableBuilder<ApiprodutoModel>(valueListenable: controller.produto,
             builder: (context, model, child){
               if(model ?.nome == null){
                 return Center(
                   child: CircularProgressIndicator(),
                   );
               }
               return Text(model.nome);
             })
          ],
        ),
      ),
    );
  }
}
