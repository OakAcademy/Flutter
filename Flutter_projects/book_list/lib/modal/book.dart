class Book{
  final String bookName;
  final String bookAuthor;
  final String bookDetail;
  final String smallImage;
  final String bigImage;

  Book(this.bookName,
   this.bookAuthor,this.bookDetail, 
   this.smallImage, this.bigImage);

   @override
  String toString() {
   
    return '$bookName $bookAuthor';
  }

}