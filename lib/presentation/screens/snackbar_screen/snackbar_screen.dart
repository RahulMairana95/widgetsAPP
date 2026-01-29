
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();
      final snakback = SnackBar(
        content: const Text('Hola Mundo'),
        action: SnackBarAction(label: 'Ok!', onPressed: (){}),
        duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snakback);
  }

  void openDialog(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Tempor ipsum cupidatat fugiat est non veniam laborum. Enim eu ipsum dolor tempor est cillum tempor laboris proident. Est elit ullamco reprehenderit ut sint. Sit esse in adipisicing eiusmod reprehenderit consequat in laboris culpa dolor laborum. Elit enim dolor aliquip minim. Tempor consectetur deserunt cillum ex ut nisi sunt non laborum officia sint occaecat voluptate velit. Qui sit in reprehenderit dolore dolor.'),
        actions: [
          TextButton(onPressed: ()=> context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar y Diálogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Dolore commodo commodo cupidatat fugiat in labore do do culpa elit. Aliquip laboris adipisicing ut ullamco. Pariatur id adipisicing nostrud sunt esse ea velit. Cillum est duis aute magna consequat laboris laborum.'),

                  ]
                );
              }, child: const Text('Licencias usadas'),
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogo'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}