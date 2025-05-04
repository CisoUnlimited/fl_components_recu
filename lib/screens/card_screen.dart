import 'package:fl_components/widgets/custom_card_tipo_2.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://images7.alphacoders.com/928/thumb-1920-928770.jpg', nombre: 'Final Fantasy VII',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://www.nintendo.com/eu/media/images/10_share_images/games_15/game_boy_4/H2x1_GB_PokemonRed_esES_image1600w.jpg', nombre: 'Pokémon Rojo Fuego',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://static.wikia.nocookie.net/leagueoflegends/images/3/3d/Portada_-_League_of_Legends.jpg/revision/latest/scale-to-width-down/1200?cb=20220723200236&path-prefix=es',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://cdn2.unrealengine.com/ac2-gamename-store-landscape-2560x1440-2560x1440-aa944fa0e8c6.jpg',),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
