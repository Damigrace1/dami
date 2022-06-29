IconButton(
icon:Icon(Icons.date_range),
onPressed: () async{ DateTime? chosenDate= await showDatePicker(
context: context, initialDate: date,
firstDate: DateTime(2000),
lastDate: DateTime(2023));
String dateX=DateFormat().add_yMMMEd().format(chosenDate!);
textEditingController.text=dateX;
setState(() {

});
},)

//github token; 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