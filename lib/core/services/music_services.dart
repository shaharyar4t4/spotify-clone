import 'package:spotify/features/models/music.dart';

class MusicOperation {
  MusicOperation._(){}
  static List<Music> getMusics(){
    return <Music>[
      Music(name:'Blinding Lights', imageUrl: 'https://i.scdn.co/image/ab67616d0000b273c5e8f3f4f4e4e4e4e4e4e4e4', desc: 'The Weeknd'),
      Music(name:'Levitating', imageUrl: 'https://i.scdn.co/image/ab67616d0000b273d4e4e4e4e4e4e4e4e4e4e4e', desc: 'Dua Lipa'),
      Music(name:'Peaches', imageUrl: 'https://i.scdn.co/image/ab67616d0000b273a1a1a1a1a1a1a1a1a1a1a1a', desc: 'Justin Bieber'),
      Music(name:'Save Your Tears', imageUrl: 'https://i.scdn.co/image/ab67616d0000b273b2b2b2b2b2b2b2b2b2b2b2b', desc: 'The Weeknd'),
    ];
  }
}