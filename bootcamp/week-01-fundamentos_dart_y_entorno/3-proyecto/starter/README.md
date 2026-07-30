# Semana 01 — Modelador de Dominio en Consola

**Aprendiz:** Juan Pablo Castillo Velásquez
**Repositorio:** bc-expressjs
**Dominio asignado:** 📻 Radio comunitaria

## Descripción del dominio

La entidad principal (`Item`) representa un **programa** de una emisora de
radio comunitaria. Cada programa tiene, además de `id`, `name` y
`createdAt`:

- `host`: presentador/a del programa
- `schedule`: horario de transmisión (ej. `Lun-Vie 06:00-08:00`)
- `sponsor`: patrocinador principal del programa

Este modelo es una simplificación del dominio completo de una radio
comunitaria (programs, hosts, schedules, sponsors), enfocada en lo que
pide el proyecto de semana 1: una entidad con datos propios del dominio,
un repositorio con carga asíncrona simulada, y búsqueda por id con null
safety.

## Cómo ejecutar

```bash
dart pub get
dart run lib/main.dart
```

## Validar con Docker

```bash
docker compose run --rm flutter dart pub get
docker compose run --rm flutter dart analyze
docker compose run --rm flutter dart test
```

## Entregables cubiertos

- [x] `Item` extendido con 3 propiedades del dominio (`host`, `schedule`, `sponsor`)
- [x] `fetchItems()` con 4 programas de ejemplo del dominio
- [x] `findById()` implementado con null safety (retorna `null`, no excepción)
- [x] `main.dart` completo: carga, maneja lista vacía, imprime, prueba `findById` en ambos casos
- [x] `dart analyze` sin errores / `dart test` pasando
