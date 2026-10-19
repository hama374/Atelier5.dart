class MotdepasseCourtException implements Exception{
  String message;
  MotdepasseCourtException(this.message);
  @override
  String toString(){
    return message;
  }
}
void verifierMOtdepasse(String mp){
  if(mp.length<6){
    throw MotdepasseCourtException(
      "Le mot de passe doit contenir au moins 6 caractéres.");
  }
}
void main(){
  try{
    verifierMOtdepasse("1234");
    print("Mot de passe valide.");
  } on MotdepasseCourtException catch(e){
    print("Erreur:$e");
  }
}