
import 'package:concierge/models/BillModel.dart';

class BillViewModel {
  List<BillModel> billList = [
    BillModel(
      "Biaya Air",
      "assets/images/pam.png",
      "#INV00002",
      "Rp 100.000",
      "01 Jul 2021",
      BillStatus.ondue,
      "Due in 5 days"
    ),
    BillModel(
        "Biaya Listrik",
        "assets/images/electric.png",
        "#INV00003",
        "Rp 50.000",
        "01 Jan 2021",
        BillStatus.overdue,
        "Overdue in 30 days"
    ),
    BillModel(
        "Biaya Listrik",
        "assets/images/electric.png",
        "#INV00001",
        "Rp 100.000",
        "13 Jun 2021",
        BillStatus.complated,
        "Completed"
    ),
    BillModel(
        "Biaya Listrik",
        "assets/images/electric.png",
        "#INV00003",
        "Rp 50.000",
        "01 Jan 2021",
        BillStatus.overdue,
        "Overdue in 30 days"
    ),
    BillModel(
        "Biaya Listrik",
        "assets/images/electric.png",
        "#INV00003",
        "Rp 50.000",
        "01 Jan 2021",
        BillStatus.overdue,
        "Overdue in 30 days"
    ),
    BillModel(
        "Biaya Air",
        "assets/images/pam.png",
        "#INV00002",
        "Rp 100.000",
        "01 Jul 2021",
        BillStatus.ondue,
        "Due in 5 days"
    ),
    BillModel(
        "Biaya Listrik",
        "assets/images/electric.png",
        "#INV00001",
        "Rp 100.000",
        "13 Jun 2021",
        BillStatus.complated,
        "Completed"
    ),
  ];
}