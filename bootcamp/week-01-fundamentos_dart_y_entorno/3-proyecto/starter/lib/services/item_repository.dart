import '../models/item.dart';

// ============================================
// SERVICE: ItemRepository
// Simula una fuente de datos asíncrona (como sería una llamada a una API
// real desde semana 6 con Dio). Por ahora usa Future.delayed para simular
// la latencia de red sin depender de ningún servicio externo.
// ============================================
class ItemRepository {
  /// Obtiene la lista de elementos del dominio.
  ///
  /// TODO: Reemplaza los datos de ejemplo por elementos de TU dominio
  /// asignado. Mantén el `Future.delayed` — simula la latencia real que
  /// tendrás desde semana 6 al consumir una API de verdad.
  Future<List<Item>> fetchItems() {
    return Future.delayed(const Duration(milliseconds: 300), () {
      // TODO: Reemplaza esta lista de ejemplo por elementos de tu dominio.
      //
      // --- Implementación del aprendiz (Juan Pablo Castillo Velásquez) ---
      // Dominio: Radio comunitaria -> programación (programs) de la emisora.
      return <Item>[
        Item(
          id: 'prog_001',
          name: 'Despertar Comunitario',
          createdAt: DateTime(2024, 2, 5),
          host: 'Marta Gómez',
          schedule: 'Lun-Vie 06:00-08:00',
          sponsor: 'Panadería El Trigal',
        ),
        Item(
          id: 'prog_002',
          name: 'Voces del Barrio',
          createdAt: DateTime(2024, 3, 12),
          host: 'Carlos Rendón',
          schedule: 'Mar-Jue 18:00-19:00',
          sponsor: 'Ferretería San José',
        ),
        Item(
          id: 'prog_003',
          name: 'Ritmo Tropical',
          createdAt: DateTime(2024, 5, 20),
          host: 'Luisa Fernanda Ortiz',
          schedule: 'Sáb 10:00-12:00',
          sponsor: 'Almacén La Rebaja',
        ),
        Item(
          id: 'prog_004',
          name: 'Noticiero Local',
          createdAt: DateTime(2024, 6, 1),
          host: 'Andrés Pardo',
          schedule: 'Lun-Vie 12:00-12:30',
          sponsor: 'Droguería Central',
        ),
      ];
    });
  }

  /// Busca un elemento por id. Retorna `null` si no existe — practica
  /// null safety consumiendo este método desde `main.dart`.
  ///
  /// TODO: Implementa la búsqueda sobre el resultado de fetchItems().
  Future<Item?> findById(String id) async {
    // TODO: usa fetchItems(), luego busca el elemento con ese id.
    // Pista: List.where + firstOrNull, o un for con early return.
    //
    // --- Implementación del aprendiz (Juan Pablo Castillo Velásquez) ---
    final items = await fetchItems();
    for (final item in items) {
      if (item.id == id) return item;
    }
    return null;
  }
}
