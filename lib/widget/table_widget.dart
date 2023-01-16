import 'package:app_calc_imc/constant/constant.dart';
import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
   
  const TableWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns:  [
        DataColumn(
          label: Text(ConstantInfo.columnOne,style: Theme.of(context).textTheme.titleMedium),
        ),
        DataColumn(
          label: Text(ConstantInfo.columnTwo,style: Theme.of(context).textTheme.titleMedium,),
          
        ),
        
      ], 
      rows: [
        DataRow(
          cells: [
            DataCell(Text(ConstantInfo.rowOne[0],style: Theme.of(context).textTheme.bodyMedium)),
            DataCell(Text(ConstantInfo.rowOne[1],style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text(ConstantInfo.rowTwo[0],style: Theme.of(context).textTheme.bodyMedium)),
            DataCell(Text(ConstantInfo.rowTwo[1],style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text(ConstantInfo.rowThree[0],style: Theme.of(context).textTheme.bodyMedium)),
            DataCell(Text(ConstantInfo.rowThree[1],style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text(ConstantInfo.rowFour[0],style: Theme.of(context).textTheme.bodyMedium)),
            DataCell(Text(ConstantInfo.rowFour[1],style: Theme.of(context).textTheme.bodyMedium)),
          ],
        )
      ]
    
    );
  }
}