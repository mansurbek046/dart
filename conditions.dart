void main() {
  bool cold=true;
  String message=cold ? "The weather is cold" : "The weather is ok";
  print(message);
  
  //with 2 question mark
  print(message ?? "Unknown");
}