import 'dart:ui';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/Data/Color/color.dart';
import 'package:myapp/Data/Fonts/fonts.dart';
import 'package:myapp/Features/Home/homeobjects.dart';
import 'package:myapp/Features/Navigation/bottom_nav.dart';
import 'package:myapp/Features/Navigation/index.dart';
import 'package:myapp/Features/Screen/screen.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();
  String imagePath = "";
  Uint8List? imageBytes;
  bool showImage = false;
  void getImage() async {
    ImagePicker selectImage =  ImagePicker();
    final imageSource = await selectImage.pickImage(source: ImageSource.gallery, imageQuality: 100);
    if (imageSource != null) 
    {
      XFile imageFile = XFile(imageSource.path);
      imageBytes = await imageFile.readAsBytes();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        leading: Image.asset("lib/Data/Assets/Images/logo.png"),
        leadingWidth: 70.0,

        actions: [
          SizedBox(
            width: screenWidth(context) * 0.65,
            height: screenHeight(context) * 0.062,
            child: TextField(
              controller: search,
              cursorColor: buttonColor,
              cursorHeight: 20.0,
              style: minorFont.copyWith(color: white),
              //onTapOutside: FocusManager.instance.primaryFocus?.unfocus(),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Sàwárí nibi...",
                hintStyle: minorFont.copyWith(color: white.withOpacity(0.2)),
                filled: true,
                fillColor: white.withOpacity(0.1),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide.none,
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          SizedBox(width: 10.w),

          GestureDetector(
            onTap: () {
              getImage();
            },
            child: SizedBox(
              child: CircleAvatar(
                radius: 25, 
                backgroundColor: Colors.grey[100],
                child: Icon( 
                  Icons.person, 
                  color: Colors.grey[600],
                  size: 30,)
                
                ),
            ),
          ),

          SizedBox(width: 10.w),
        ],
      ),


      body: Stack(
        children: <Widget>
        [

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                  Padding(
            padding: const EdgeInsets.only(left:10.0,top:5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text("Àkọsílẹ̀ orin pàtàkì",style: majorFont.copyWith(color:white,fontSize:20.0),textAlign: TextAlign.start ,),
                SizedBox(height: 5.w,),
      
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                     rowSongCard(song1),SizedBox(width: 10.w,),
                     rowSongCard(song2),SizedBox(width: 10.w,),
                     rowSongCard(song3),SizedBox(width: 10.w,),
                     rowSongCard(song4),
                     rowSongCard(song3),SizedBox(width: 10.w,),
                     rowSongCard(song4),SizedBox(width: 10.w,),
                     rowSongCard(song2),SizedBox(width: 10.w,),
                     rowSongCard(song1),
                    ],
                  ),
      
                )
              ]
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.only(left:10.0,top:10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text("Àkọsílẹ̀ orin pàtàkì",style: majorFont.copyWith(color:white,fontSize:20.0),textAlign: TextAlign.start ,),
                SizedBox(height: 5.w,),
      
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                     rowSongCard(song4),SizedBox(width: 10.w,),
                     rowSongCard(song3),SizedBox(width: 10.w,),
                     rowSongCard(song2),SizedBox(width: 10.w,),
                     rowSongCard(song1),
                     rowSongCard(song4),SizedBox(width: 10.w,),
                     rowSongCard(song3),SizedBox(width: 10.w,),
                     rowSongCard(song2),SizedBox(width: 10.w,),
                     rowSongCard(song1),
                    ],
                  ),
      
                )
        
              ]
            ),
          ),
      
          SizedBox(height: 20.h,),
          ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
            child: Container(
              width: screenWidth(context)*0.9,
              height: screenHeight(context)*0.45,
              color: white.withOpacity(0.2),
              child:  
                      CardSwiper(
                      cardBuilder: (context, index, percentThresholdX, percentThresholdY) => swipeCards()[index],
                      cardsCount: swipeCards().length),
            ),
          ),
          ),
        SizedBox(height: 30.h,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                Text("Ìrú orin",style: majorFont.copyWith(color:white,fontSize:20.0),textAlign: TextAlign.start ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.only(left:0.0),
                  child: Row(
                    children: [
                    Column(
                      children: 
                      [
                        for (int i=0;i<3;i++) songType(title[i])
                      ],
                    ),
                  
                    SizedBox(width: 10.w,),
                    
                    Column(
                      children: 
                      [
                          for (int j=4;j<7;j++) songType(title[j])
                      ],
                    ),
                    ]
                  ),
                )
              ],
            ),
          )
              ],
            ) ,
          ),

        Positioned(
        bottom:0.0,
        child: bottomNavBar(homePage,context))
        ],
      ),
    
      
    );
  }
}
