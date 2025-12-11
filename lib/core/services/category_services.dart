
import 'package:spotify/features/models/category.dart';

class CategoryOpearation {
  
  CategoryOpearation._(){}
  
  static List<Category>getCategories(){
    return <Category>[
      Category(name:'Top Song', imageUrl: 'https://images.crunchbase.com/image/upload/c_pad,h_256,w_256,f_auto,q_auto:eco,dpr_1/vp5jhbgvt9byjwuc3ug8?ik-sanitizeSvg=true'),
      Category(name:'MJ Hits', imageUrl: 'https://media.plus.rtl.de/music-deezer/cover/b569f80afcfe4b720ad49f98d34263a6/256x256-000000-80-0-0.jpg?tr=f-auto,w-256'),
      Category(name:'Justin Bieber', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkvvqGTMgTyVgmLqwTdlB1DVDCsRCTfLqWzw&s'),
      Category(name:'Top Song', imageUrl: 'https://images.crunchbase.com/image/upload/c_pad,h_256,w_256,f_auto,q_auto:eco,dpr_1/vp5jhbgvt9byjwuc3ug8?ik-sanitizeSvg=true'),


    ];
  }
}
