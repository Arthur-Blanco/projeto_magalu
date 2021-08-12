import 'package:flutter/material.dart';
import 'package:projeto_magalu/models/product.dart';
import 'package:projeto_magalu/provider/products.dart';
import 'package:projeto_magalu/style.dart';

class Home extends StatefulWidget{
  @override
 createState() => _HomeState();
  }

  class _HomeState extends State<Home>{
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: bluedarkTheme,
          title: Text("Ofertas do dia"),
          leading: Image.asset("assets/images/logo.jpg"),

        ),
        body: 

        Column(
          children: [
            Image.asset("assets/images/linha.jpg"),

            Expanded(child: 

            ListView.separated( 
              itemBuilder: (BuildContext context,int index){ 
            Product product = products.
            elementAt(index);
            return ListTile(
               trailing: IconButton(
                 icon: (product.isFavorite) 
                 ? Icon(Icons.favorite) 
                 : Icon(Icons.favorite_outline),
                 onPressed: (){
                   setState(() {
                     product.isFavorite = 
                     !product.isFavorite;
                   });
                 },
                 color: pinkTheme,
                 ),
                 title: Row(
                   children: [
                     ClipOval(
                       child: Image.asset(
                         product.photo,
                         width: 80,
                         height: 85,
                       ),
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.symmetric(
                             vertical: 8,
                           ),
                           child: Text(
                             product.name,
                             style: TextStyle(
                               fontSize: 9.5,
                             ),
                           ),
                         ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 1,
                            ),
                            child: Text(
                             product.names,
                             style: TextStyle(
                               fontSize: 10,
                             ),
                         ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Text(
                             product.description,
                             style: TextStyle(
                               fontSize: 8,
                             ),
                         ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Text(
                             product.price,
                             style: TextStyle(
                               fontSize: 12,
                               color: blueTheme,
                               fontWeight: FontWeight.bold,
                             ),
                         ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Text(
                             product.fees,
                             style: TextStyle(
                               fontSize: 9,
                               color: blueTheme,
                             ),
                         ),
                          )
                        
                       ],
                     ),
                   ],
                ),
               );
              },
  separatorBuilder: (BuildContext context, int index){
    return Divider();
  },
              itemCount: 7,
              ),
              ),
          ],
        ),
      );
    }
  }
