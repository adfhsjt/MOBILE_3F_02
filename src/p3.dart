void main(List<String> args) {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  // print(gifts);
  // print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  gifts['nama'] = 'Ahmad Dzul Fadhli Hannan';
  gifts['nim'] = '2341720106';
  print(gifts['nama']);
  print(gifts['nim']);
  nobleGases[1] = 'Ahmad Dzul Fadhli Hannan';
  nobleGases[0] = '2341720106';
  print(nobleGases[1]);
  print(nobleGases[0]);
  mhs1['nama'] = 'Ahmad Dzul Fadhli Hannan';
  mhs1['nim'] = '2341720106';
  print(mhs1['nama']);
  print(mhs1['nim']);
  mhs2[1] = 'Ahmad Dzul Fadhli Hannan';
  mhs2[0] = '2341720106';
  print(mhs2[1]);
  print(mhs2[0]);


}
