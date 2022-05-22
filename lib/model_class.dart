class Covid {
  String? location;
  int? cases;
  int? deaths;

  Covid({
    this.location,
    this.cases,
    this.deaths,
  });

  factory Covid.fromJson(Map<String, dynamic> json){
    return Covid(
      location: json["loc"],
      cases: json["confirmedCasesIndian"],
      deaths: json["deaths"],
    );

  }
}