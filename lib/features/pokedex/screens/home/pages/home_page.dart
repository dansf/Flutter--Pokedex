import 'package:flutter/material.dart';
import 'package:pokedex_app/common/models/pokemon.dart';
import 'package:pokedex_app/features/pokedex/screens/details/container/detail_container.dart';
import 'package:pokedex_app/features/pokedex/screens/home/pages/widgets/pokemon_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.list, required this.onItemTap}) : super(key: key);
  final List<Pokemon> list;
  final Function(String, DetailArguments) onItemTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, 
        backgroundColor: Colors.white, 
        centerTitle: false, 
        title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text('Pokedex', 
          style: TextStyle(
            color: Colors.black, 
            fontSize: 26),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          
          children: list.map((e) => PokemonItemWidget(pokemon: e, /*onTap: onItemTap*/)).toList()
        ),
      ),
    );
  }
}