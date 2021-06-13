
import 'package:concierge/models/ItemGridViewModel.dart';

class ConciergeViewModel {

  List<ItemGridViewModel> beauty = [
    ItemGridViewModel("Salon", "assets/images/salon.png"),
    ItemGridViewModel("Scrub", "assets/images/scrub.png"),
    ItemGridViewModel("Massage", "assets/images/massage.png"),
    ItemGridViewModel("Shiatsu", "assets/images/shiatsu.png"),
    ItemGridViewModel("Refleksiologi", "assets/images/refleksiologi.png"),
    ItemGridViewModel("Totok Wajah", "assets/images/totok_wajah.png")
  ];

  List<ItemGridViewModel> helps = [
    ItemGridViewModel("Service AC", "assets/images/services_ac.png"),
    ItemGridViewModel("Laundry", "assets/images/laundry.png"),
    ItemGridViewModel("General Cleaning", "assets/images/general_cleaning.png"),
    ItemGridViewModel("Otomotif", "assets/images/otomotif.png"),
    ItemGridViewModel("Inspect Control", "assets/images/inspect_control.png"),
    ItemGridViewModel("Deep Cleaning", "assets/images/deep_cleaning.png"),
    ItemGridViewModel("Garden", "assets/images/garden.png"),
    ItemGridViewModel("Foging Antivirus", "assets/images/foging_antivirus.png")
  ];

  List<String> promos = [
    "assets/images/promo.png",
    "assets/images/promo.png",
    "assets/images/promo.png"
  ];

  List<String> news = [
    "https://www.coe.int/documents/21360261/22767669/Online+education/8b1d70d7-ec6a-7cf1-9e86-775e81df1900"
  ];

}