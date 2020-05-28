import 'package:la_banquera/src/com/hht/models/botes.dart';
import 'package:la_banquera/src/com/hht/utils/dummy_data.dart';

class BotesService {

List<Botes> botes = DUMMY_DATA.toList();

  
List<Botes> get fetchBotes {
  return List.of(botes);
}


}