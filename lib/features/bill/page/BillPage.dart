import 'package:concierge/Utils/Navigator.dart';
import 'package:concierge/features/bill/viewmodel/BillViewModel.dart';
import 'package:concierge/models/BillModel.dart';
import 'package:concierge/style/AssetColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BillPageState();
  }
}

class _BillPageState extends State<BillPage> {
  late BillViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    this._viewModel = BillViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "Pay My Bill",
              style: TextStyle(color: Colors.white)
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigation.pop(context),
          ),
        ),
        body: Column(
            children: [
              Container(
                height: 42,
                color: AssetColors.containerFilter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("New Bill", textAlign: TextAlign.left),
                    ),

                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () => null,
                              icon: Icon(Icons.filter_list_alt, color: AssetColors.buttonFilter),
                              padding: EdgeInsets.all(1),
                            ),
                            Text("Filter",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AssetColors.buttonFilter
                              ),
                            )
                          ],
                        )
                    ),
                  ],
                ),
              ),

              Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: this._viewModel.billList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: 32,
                                            width: 32,
                                            child: Image.asset(this._viewModel.billList[index].image, width: 32, height: 32)
                                        ),

                                        Expanded(child: Padding(
                                            padding: EdgeInsets.only(left: 8, right: 8),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(this._viewModel.billList[index].name,
                                                  style: TextStyle(
                                                      color: AssetColors.fontColorPrimary,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),

                                                Text(this._viewModel.billList[index].billNumber,
                                                  style: TextStyle(
                                                      color: AssetColors.fontColorSecondary,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                  ),
                                                )
                                              ],
                                            )
                                        )),

                                        Card(
                                            elevation: 0,
                                            color: this._getContainerStatusColor(this._viewModel.billList[index].status),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: Padding(
                                                padding: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                                                child: Text(this._viewModel.billList[index].statusDesc,
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      color: this._getLabelStatusColor(this._viewModel.billList[index].status),
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                )
                                            )
                                        )
                                      ],
                                    )
                                ),

                                Container(height: 1, color: AssetColors.divider),

                                Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Text("Amount",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: AssetColors.fontColorSecondary,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400
                                                ),
                                              ),

                                              Text(this._viewModel.billList[index].billAmount,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: AssetColors.fontColorPrimary,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                            ],
                                          ),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text("Billing Date",
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                    color: AssetColors.fontColorSecondary,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400
                                                ),
                                              ),

                                              Text(this._viewModel.billList[index].billDate,
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                    color: AssetColors.fontColorPrimary,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),

                                      SizedBox(height: 16),

                                      Card(
                                          color: AssetColors.buttonFilter,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                          elevation: 0,
                                          child: Padding(
                                              padding: EdgeInsets.only(left: 16, right: 16, top: 4, bottom: 4),
                                              child: Text("View",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white
                                                ),
                                              )
                                          )
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                  )
              ),
            ]
        )
    );
  }

  Color _getContainerStatusColor(BillStatus status) {
    switch (status) {
      case BillStatus.ondue: return AssetColors.statusOnDueColor.withAlpha(30);
      case BillStatus.overdue: return AssetColors.statusOverdueColor.withAlpha(30);
      default: return AssetColors.statusCompletedColor.withAlpha(30);
    }
  }

  Color _getLabelStatusColor(BillStatus status) {
    switch (status) {
      case BillStatus.ondue: return AssetColors.statusOnDueColor;
      case BillStatus.overdue: return AssetColors.statusOverdueColor;
      default: return AssetColors.statusCompletedColor;
    }
  }
}