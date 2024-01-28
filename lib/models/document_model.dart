class Document {
  String? Doc_title;
  String? Doc_url;
  String? Doc_date;
  int? page_num;
  Document(this.Doc_title, this.Doc_url, this.Doc_date, this.page_num);
  static List<Document> Doc_List = [
    Document(
        "The Impact of Artificial Intelligence on Innovation",
        "https://www.nber.org/system/files/working_papers/w24449/w24449.pdf",
        "March 2018",
        40),
    Document(
        "The 8-Billions Lives On earth",
        "https://www.unfpa.org/sites/default/files/swop23/SWOP2023-ENGLISH-230329-web.pdf",
        "Feb 2023",
        192),
    Document(
        "buugga 1aad Computer",
        "file:///D:/Caamir%20International%20School%20(C.I.S)/Books/Important%20Books/Computer%20Books/buugga%201aad%20Computer.pdf",
        "November 2023",
        28),
  ];
}
