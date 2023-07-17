import 'package:champ_food_service/infrastructure/providers/home_data_provider/home_data_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeDataProvider = ChangeNotifierProvider<HomeDataProvider>((ref) => HomeDataProvider(ref));
