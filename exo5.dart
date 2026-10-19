import 'dart:io';

class NombreNegatifException implements Exception {
String message;

NombreNegatifException(this.message);

@override
String toString() {
return message;
}
}

void verifierNombre(int nombre) {
if (nombre < 0) {
throw NombreNegatifException("Le nombre ne doit pas être négatif.");
}
}

void main() {
try {
print("Entrez un nombre :");
int nombre = int.parse(stdin.readLineSync()!);
verifierNombre(nombre);

int carre = nombre * nombre;
print("Le carré du nombre est : $carre");

} on FormatException {
print("Erreur : Veuillez entrer un nombre entier valide.");
} on NombreNegatifException catch (e) {
print("Erreur : $e");
} finally {
print("Fin d'opération");
}
}
