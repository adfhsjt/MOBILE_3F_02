void main(List<String> args) {
  // var list1 = [1, 2, 3];
  // var list2 = [0, ...list1];
  // print(list1);
  // print(list2);
  // print(list2.length);

  // List<int?> list1b = [1, 2, null];
  // print(list1b);
  // var list3 = [0, ...?list1b];
  // print(list3.length);

  // var promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);
  // promoActive = false;
  // var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav2);

  // var login = 'Manager';
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  // print(nav2);
  // login = 'User';
  // var nav3 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  // print(nav3);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
