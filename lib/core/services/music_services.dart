import 'package:spotify/features/models/music.dart';

class MusicOperation {
  MusicOperation._(){}
  static List<Music> getMusics(){
    return <Music>[
      Music(name:'Blinding Lights', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwNfOehiy_O1kGv01_dzSQQoNZTHrHKyiAfw&s', desc: 'The Weeknd'),
      Music(name:'Levitating', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcllK9c-asQ_GMB_ylfo0wcFT-jFEPxeJm9g&s', desc: 'Dua Lipa'),
      Music(name:'Peaches', imageUrl: 'https://is4-ssl.mzstatic.com/image/thumb/Music126/v4/73/08/1a/73081a96-0f7c-b5f8-2757-5c17fb714323/12UMGIM31899.rgb.jpg/256x256bb.jpg', desc: 'Justin Bieber'),
      Music(name:'Save Your Tears', imageUrl: 'https://c-cdnet.cdn.smule.com/rs-s78/arr/da/a6/539bb48f-560f-449b-8d86-ab1e107fec90.jpg', desc: 'The Weeknd'),
    ];
  }
}