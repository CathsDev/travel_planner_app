import 'package:aa_travel_planner/src/data/favorites_repository.dart';
import 'package:aa_travel_planner/src/features/favorites/widgets/favorite_card.dart';
import 'package:aa_travel_planner/src/models/destination.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  final FavoritesRepository favoritesRepository;

  const FavoritesScreen({super.key, required this.favoritesRepository});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    List<Destination> favorites = widget.favoritesRepository.getFavorites();

    return ListView.builder(
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        final destination = favorites[index];
        return FavoriteCard(
          destination: destination,
          favoritesRepository: widget.favoritesRepository,
          onRemove: () {
            setState(() {});
          },
        );
      },
    );
  }
}
