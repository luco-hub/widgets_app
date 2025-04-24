import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/app_router.dart';

class SnackBarScreen extends StatelessWidget {


  static const String nameRoute = 'snack_screen';

  const SnackBarScreen({super.key});

  void showCumtomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();
     var snackBar = SnackBar(content: const Text('Hola mundo'),
    action: SnackBarAction(label: 'OK!', onPressed: () {},),
    duration:const Duration(seconds: 2) ,
    );
     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  void openDialog(BuildContext context){
    
    showDialog(context: context, 
    barrierDismissible: false,
    barrierLabel: 'Perro',
    builder: (context) =>  AlertDialog(
      
      title:const Text('This is a Dialog') ,
      content: const Text('Aliquip labore exercitation aliqua aliqua. Minim esse voluptate voluptate voluptate sit labore sint. Sunt ea sint elit proident veniam dolor nulla culpa Lorem non id aliqua irure.'),
      actions: [
        TextButton(child: const Text('Close'),onPressed: ()=> context.pop(),),
        FilledButton(child: const Text('OK'),onPressed:()=> context.pop(),)
      ],
    
    )
    
    );


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Dialogs')),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.tonal(child: const Text('Licencias Usadas'),
              onPressed: (){
                showAboutDialog(context: context
                ,children: [
                  const Text('Do commodo cupidatat commodo dolore adipisicing fugiat ad ullamco amet ipsum anim mollit. Minim veniam reprehenderit labore dolore pariatur culpa ea deserunt culpa duis dolor incididunt enim sint. Do ea non cupidatat nostrud labore sit proident aliquip. Occaecat pariatur tempor et dolor culpa cillum eu. Anim ullamco sint do pariatur ad deserunt adipisicing commodo veniam reprehenderit. Ut minim dolore voluptate nostrud laborum laborum cillum adipisicing.')
                ]
                );
              }),
              FilledButton.tonal(
                child: const Text('Mostrar Dialogo'),
                onPressed: ()=>openDialog(context)),
            ],
          ),),
        floatingActionButton: FloatingActionButton.extended(
           label: const Text('Mostrar Snackbar'),
           icon: const Icon(Icons.remove_red_eye_outlined),
           onPressed: () => showCumtomSnackbar(context)
           ),
    );
    }
    
  
  }