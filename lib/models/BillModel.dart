class BillModel {
  late String image;
  late String name;
  late String billNumber;
  late String billAmount;
  late String billDate;
  late BillStatus status;
  late String statusDesc;

  BillModel(
      this.name,
      this.image,
      this.billNumber,
      this.billAmount,
      this.billDate,
      this.status,
      this.statusDesc
  );
}

enum BillStatus {
  ondue, overdue, complated
}