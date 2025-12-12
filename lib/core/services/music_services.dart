import 'package:spotify/features/models/music.dart';

class MusicOperation {
  MusicOperation._(){}
  static List<Music> getMusics(){
    return <Music>[
      Music(name:'Blinding Lights', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwNfOehiy_O1kGv01_dzSQQoNZTHrHKyiAfw&s', desc: 'The Weeknd', audioUrl: 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/d6/87/41/d687410c-4714-af1d-e055-3296d4777226/mzaf_16921438337215363475.plus.aac.p.m4a'),
      Music(name:'Levitating', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcllK9c-asQ_GMB_ylfo0wcFT-jFEPxeJm9g&s', desc: 'Dua Lipa', audioUrl: 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/50/fb/2a/50fb2a1f-fa8f-fd33-893c-52502dc4573f/mzaf_5452381426075756565.plus.aac.p.m4a'),
      Music(name:'Peaches', imageUrl: 'https://is4-ssl.mzstatic.com/image/thumb/Music126/v4/73/08/1a/73081a96-0f7c-b5f8-2757-5c17fb714323/12UMGIM31899.rgb.jpg/256x256bb.jpg', desc: 'Justin Bieber', audioUrl: 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/d6/87/41/d687410c-4714-af1d-e055-3296d4777226/mzaf_16921438337215363475.plus.aac.p.m4a'),
      Music(name:'Save Your Tears', imageUrl: 'https://c-cdnet.cdn.smule.com/rs-s78/arr/da/a6/539bb48f-560f-449b-8d86-ab1e107fec90.jpg', desc: 'The Weeknd', audioUrl: 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/d6/87/41/d687410c-4714-af1d-e055-3296d4777226/mzaf_16921438337215363475.plus.aac.p.m4a'),
    ];
  }
}