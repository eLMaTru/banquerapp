

class Result {
  final String id;
  final int type;
  final String name;
  final String description;
  final String winningNumbers;
  final DateTime drawingDate;
  final String logo;
  

  Result(
      {this.id,
      this.type,
      this.name,
      this.description,
      this.winningNumbers,
      this.drawingDate, this.logo});
}
