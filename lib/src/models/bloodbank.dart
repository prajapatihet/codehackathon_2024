class BloodBank {
  String? name;
  String? loc;
  String? add;
  String? type;
  double? lat;
  double? long;

  BloodBank({this.name, this.loc, this.add, this.type, this.lat, this.long});

  BloodBank.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    loc = json['loc'];
    add = json['add'];
    type = json['type'];
    lat = json['lat'];
    long = json['long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['loc'] = loc;
    data['add'] = add;
    data['type'] = type;
    data['lat'] = lat;
    data['long'] = long;
    return data;
  }
}
