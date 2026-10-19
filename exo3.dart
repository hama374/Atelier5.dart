void verifierMOtdepasse(String mp){
  if(mp.length<6){
    throw Exception("Le mot de passe doit contenir au moins 6 caractéres.");
  }
}
void main(){
  try{
    verifierMOtdepasse("199907");
    print("Mot de passe valide.");
  }catch(e){
    print("Erreur:$e");
  }
}