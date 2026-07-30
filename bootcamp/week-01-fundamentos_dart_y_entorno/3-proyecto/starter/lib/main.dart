import 'services/item_repository.dart';

// ============================================
// Modelador de Dominio en Consola — Proyecto Semana 1
// ============================================
//
// NOTA PARA EL APRENDIZ:
// Este programa lista los elementos de tu dominio asignado, simulando una
// carga asíncrona (como si vinieran de una API). Adapta `Item` en
// lib/models/item.dart y los datos en lib/services/item_repository.dart
// a tu dominio antes de completar los TODOs de aquí.

Future<void> main() async {
  final repository = ItemRepository();

  print('Cargando elementos de tu dominio...');

  // TODO: usa `await` para obtener la lista de items desde `repository.fetchItems()`
  // y guárdala en una variable `items`.
  // --- Implementación del aprendiz (Juan Pablo Castillo Velásquez) ---
  final items = await repository.fetchItems();

  // TODO: si `items` está vacía, imprime un mensaje indicándolo (usa null
  // safety / .isEmpty, no asumas que siempre habrá datos).
  if (items.isEmpty) {
    print('No hay programas registrados en la emisora todavía.');
    return;
  }

  // TODO: recorre `items` e imprime cada uno (usa el `toString()` ya
  // definido en Item, o formatea el output como prefieras).
  print('\n📻 Programación de Radio Comunitaria:');
  for (final item in items) {
    print('- $item');
  }

  // TODO: usa `repository.findById(...)` con un id que SÍ exista y otro que
  // NO exista, e imprime el resultado en ambos casos (debe manejar el caso
  // null sin lanzar excepción).
  print('\n🔎 Buscando programa existente (id: prog_002):');
  final existing = await repository.findById('prog_002');
  print(existing != null ? 'Encontrado -> $existing' : 'No encontrado.');

  print('\n🔎 Buscando programa inexistente (id: prog_999):');
  final missing = await repository.findById('prog_999');
  print(missing != null ? 'Encontrado -> $missing' : 'No encontrado.');
}
