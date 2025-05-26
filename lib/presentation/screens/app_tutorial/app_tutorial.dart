import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/app_router.dart';


class SlideInfo {
  String title;
  String caption;
  String imageUrl;
  SlideInfo(this.title,this.caption,this.imageUrl);
}

final slides = <SlideInfo> [
  SlideInfo('Busca la comnida', 'Nulla in in Lorem in aliquip nostrud nulla mollit dolore irure Lorem cupidatat adipisicing.', 'assets/images/1.png'),
  SlideInfo('Entrega Rapida', 'Consequat enim nisi quis in aliqua exercitation ad.', 'assets/images/2.png'),
  SlideInfo('Disfurta La comida', 'Nulla fugiat proident nisi sint adipisicing.', 'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {


  static const String nameRoute = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {


  final PageController pageviewController = PageController();
  bool endReache = false;


  @override
  void initState() {
    super.initState();
    pageviewController.addListener((){
      final page = pageviewController.page ?? 0;
      if (!endReache && page >= (slides.length -1.5)){

        setState(() {
          endReache = true;
        });
      }


    });
  }

  @override
  void dispose() {
    super.dispose();
    pageviewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children:slides.map(
              (siledeData) => _Slide(
                title: siledeData.title, 
                caption: siledeData.caption, 
                imageUrl: siledeData.imageUrl)
              ).toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
                onPressed: () => context.pop(),
                child: const Text('Skip'),
               
               )),
           endReache ?Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration( seconds: 1),
              
              child: FilledButton(
                onPressed: () => context.pop(), 
                child: const Text('Start')),
            ))
              : const SizedBox()    
        ],
      ),
    );
    }
}

  class _Slide extends StatelessWidget {

    final String title;
    final String caption;
    final String imageUrl;
     const _Slide(
       {required this.title, 
       required this.caption, 
       required this.imageUrl}
      
     );
  
    @override
    Widget build(BuildContext context) {
      final titleStyle = Theme.of(context).textTheme.titleLarge;
      final captionStyle = Theme.of(context).textTheme.bodyLarge;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage(imageUrl)),
              const SizedBox(height: 20,),
              Text(title,style: titleStyle, ),
              const SizedBox(height: 10,),
              Text( caption, style: captionStyle,)
            ],
          ),
        ),
        );
    }
  }