import 'package:flutter/material.dart';
import 'package:theme_app/core/models/product.dart';
import 'package:theme_app/core/view_models/product_vm.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late List<Products> product;
  ProductsVm pvm =ProductsVm();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: FutureBuilder(
        future: pvm.getProdcuts(), 
        builder: 
        (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.done){
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (ctx,index){
                return Container(
                  child: Column(
                    children: [
                      Image.network(snapshot.data![index].image),
                      ListTile(
                        title: Text(snapshot.data![index].title),
                        
                        )
                    ],
                  ),
                );
              });
          }
          else{
                      return const Center(child:  CircularProgressIndicator(),);
          }
        }
        )

    );
  }
}