import 'package:tienda_pos/core/state/data_state.dart';

/// A generic interface for CRUD (Create, Read, Update, Delete) operations in the repository layer.
///
/// This interface provides basic methods for managing entities in a data store (e.g., database, API).
/// It can be implemented for different entities with specific data management logic.
abstract class EntityRepository<Entity> {
  /// Inserts a new entity into the data store.
  ///
  /// Returns a [DataState] containing a `bool` that indicates whether the operation
  /// was successful or not.
  ///
  /// - [entity]: The entity to be inserted.
  Future<DataState<bool>> insert(Entity entity) {
    return Future.value(DataState.error('Repository insert not implemented'));
  }

  /// Inserts multiple entities into the data store.
  ///
  /// Returns a [DataState] containing a `bool` indicating whether the operation
  /// was successful.
  ///
  /// - [entities]: The list of entities to be inserted.
  Future<DataState<bool>> insertAll(List<Entity> entities) {
    return Future.value(
        DataState.error('Repository insertAll not implemented'));
  }

  /// Updates an existing entity in the data store.
  ///
  /// Returns a [DataState] containing a `bool` that indicates whether the operation
  /// was successful or not.
  ///
  /// - [entity]: The entity with updated values to be saved.
  Future<DataState<bool>> update(Entity entity) {
    return Future.value(DataState.error('Repository update not implemented'));
  }

  /// Deletes an entity from the data store by its unique identifier.
  ///
  /// Returns a [DataState] containing a `bool` that indicates whether the operation
  /// was successful or not.
  ///
  /// - [id]: The unique identifier of the entity to be deleted.
  Future<DataState<bool>> delete(int id) {
    return Future.value(DataState.error('Repository delete not implemented'));
  }

  /// Retrieves a list of all entities from the data store.
  ///
  /// Returns a [DataState] containing a `List` of [Entity] objects. If no entities are found,
  /// an empty list may be returned in a success state.
  Future<DataState<List<Entity>>> getList() {
    return Future.value(DataState.error('Repository getList not implemented'));
  }

  /// Retrieves a single entity from the data store by its unique identifier.
  ///
  /// Returns a [DataState] containing the [Entity] if found, or an error state
  /// if the entity does not exist or the operation fails.
  ///
  /// - [id]: The unique identifier of the entity to retrieve.
  Future<DataState<Entity?>> getById(int id) {
    return Future.value(DataState.error('Repository getById not implemented'));
  }

  /// Searches for entities in the data store that match a given query string.
  ///
  /// Returns a [DataState] containing a `List` of [Entity] objects that match the
  /// search criteria. If no entities match, an empty list may be returned in a success state.
  ///
  /// - [query]: The query string used to filter or search for entities.
  Future<DataState<List<Entity>>> search(String query) {
    return Future.value(DataState.error('Repository search not implemented'));
  }
}
