



class ProduitModel {
  int? pid;
  String? imgUrl;
  String? title;
  String? prix;
  String? description;
  String? longDescription;
  int? review;
  double? rating;
  bool isSelected;
  int qty;

  ProduitModel({
    this.pid,
    this.imgUrl,
    this.title,
    this.prix,
    this.description,
    this.longDescription,
    this.review,
    this.rating,
    this.isSelected=false,
    this.qty=1,
  });


}

