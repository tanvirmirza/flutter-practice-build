import 'package:flutter/material.dart';
import 'package:practice_projects/projects/DailyTrackers/WaterTracker/button.dart';
import 'package:intl/intl.dart';

import 'model.dart';

class ExpenseTracker extends StatefulWidget {
  const ExpenseTracker({super.key});

  @override
  State<ExpenseTracker> createState() => _ExpenseTrackerState();
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  final List<Expense> expense = [];
  final List<String> category = ['Food', 'Transport', 'Entertainment', 'Bill'];

  double total = 0.0;

  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  void addExpense(String title, double amount, DateTime date, String category) {
    setState(() {
      expense.add(Expense(
          title: title, amount: amount, date: date, category: category));
      total += amount;
    });
  }

  void deleteExpense(int index) {
    setState(() {
      total -= expense[index].amount;
      expense.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    String selectedCategory = category.first;
    DateTime selectedDate = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        backgroundColor: Colors.deepPurple.shade200,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Card(
              margin: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "Total: \$${total}",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: expense.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(expense[index].hashCode.toString()),
                    background: Container(color: Colors.red),
                    onDismissed: (direction) => deleteExpense(index),
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(
                                "${expense[index].category[0]}${expense[index].category[expense[index].category.length - 1].toUpperCase()}")),
                        title: Text(expense[index].title),
                        subtitle: Text(
                            "${DateFormat.yMMMd().format(expense[index].date)} - ${DateFormat.jm().format(expense[index].date)}"),
                        trailing: Text(
                          "\$${expense[index].amount}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(hintText: 'Title'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: amountController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Amount',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField(
                        autofocus: false,
                        focusColor: Colors.transparent,
                        // hint: Text('Caregory'),
                        items: category
                            .map((category) => DropdownMenuItem(
                                value: category, child: Text(category)))
                            .toList(),
                        decoration: InputDecoration(hintText: 'Category'),
                        onChanged: (value) {
                          selectedCategory = value!;
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                        text: 'Add Expense',
                        onPressed: () {
                          if (titleController.text.isEmpty ||
                              double.tryParse(amountController.text) == null) {
                            return;
                          }

                          addExpense(
                              titleController.text,
                              double.parse(amountController.text),
                              selectedDate,
                              selectedCategory);
                          titleController.clear();
                          amountController.clear();
                          Navigator.pop(context);
                        }),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
