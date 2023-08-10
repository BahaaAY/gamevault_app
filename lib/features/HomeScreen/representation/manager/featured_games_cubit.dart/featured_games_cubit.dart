import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'featured_games_state.dart';

class FeaturedGamesCubit extends Cubit<FeaturedGamesState> {
  FeaturedGamesCubit() : super(FeaturedGamesInitial());
  


}
