import 'package:dio/dio.dart';
import 'package:theme_app/core/models/product.dart';

class ProductsVm {

 
Future<List<Products>?> getProdcuts()async{
 Dio dio=Dio();
 try{
   Response res=await  dio.get("https://fakestoreapi.com/products") ;
   
      List<Products>? allProducts= res.data?.map<Products>((e)=>Products.fromJson(e)).toList();
    return allProducts;
 }catch (e){
  print(" errorrrrrrrrrrrrr: $e");

 }
 
    
    
    
    // Response res=await  dio.get("https://fakestoreapi.com/products");
    // List<Map<String,dynamic>> allProducts=res.data as List<Map<String,dynamic>>;
   // List<Products> allProducts= res.data!.map((e)=>Products.fromJson(e)).toList();

  
  }
}