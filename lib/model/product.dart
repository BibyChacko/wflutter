class Product{
  String _name;
  int _quantity;
  String _imageAddress;
  int _price;

  Product(this._name, this._quantity, this._imageAddress, this._price);

  int get price => _price;

  set price(int value) {
    _price = value;
  }

  String get imageAddress => _imageAddress;

  set imageAddress(String value) {
    _imageAddress = value;
  }

  int get quantity => _quantity;

  set quantity(int value) {
    _quantity = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }


}