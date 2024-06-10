String formatRupiah(int nominal) {
  final String nominalString = nominal.toString();
  String result = '';
  for (int i = 0; i < nominalString.length; i++) {
    if (i > 0 && (nominalString.length - i) % 3 == 0) {
      result += '.';
    }
    result += nominalString[i];
  }
  return 'Rp $result';
}
