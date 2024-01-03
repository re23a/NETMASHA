import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/favorite_bloc/favorite_bloc.dart';
import 'package:netmasha/blocs/favorite_bloc/favorite_event.dart';
import 'package:netmasha/blocs/favorite_bloc/favorite_state.dart';
import 'package:netmasha/models/experience_model.dart';
import 'package:netmasha/screens/details_screen.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';

class Activities extends StatelessWidget {
  const Activities({
    super.key,
    required this.experience,
  });
  final ExperienceModel experience;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 280,
          height: 320,
          decoration: ShapeDecoration(
            color: lightPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: 160,
                  width: 260,
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Image.network(
                    experience.photoUrl.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      experience.title.toString(),
                      style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      experience.description.toString(),
                      style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          txt: 'احجز',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                          experience: experience,
                                        )));
                          },
                          isBigButten: false,
                          inHomePage: true,
                        ),
                        BlocBuilder<FavoriteBloc, FavoriteState>(
                          builder: (context, state) {
                            return IconButton(
                                onPressed: () {
                                  if (state.favorites.contains(experience.id)) {
                                    context.read<FavoriteBloc>().add(
                                        RemoveFavoriteEvent(
                                            id: experience.id!));
                                  } else {
                                    context.read<FavoriteBloc>().add(
                                        AddFavoriteEvent(id: experience.id!));
                                  }
                                },
                                icon: Icon(
                                    state.favorites.contains(experience.id)
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        state.favorites.contains(experience.id)
                                            ? Colors.redAccent
                                            : Colors.black));
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
