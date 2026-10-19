import 'dart:io';

void main() {
try {
print("Entrez votre âge :");
String? age = stdin.readLineSync();

int ageConverti = int.parse(age!);

print("Votre âge est : $ageConverti");

} on FormatException {
print("Format invalide. Veuillez saisir un nombre entier.");
} finally {
print("Fin d'opération");
}
}
