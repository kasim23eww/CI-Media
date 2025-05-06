// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streaming_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$streamNotifierHash() => r'40c6989d9cf268e2b3470e8d8d1a7f6520b33c29';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$StreamNotifier
    extends BuildlessAutoDisposeNotifier<StreamState> {
  late final String id;

  StreamState build(
    String id,
  );
}

/// See also [StreamNotifier].
@ProviderFor(StreamNotifier)
const streamNotifierProvider = StreamNotifierFamily();

/// See also [StreamNotifier].
class StreamNotifierFamily extends Family<StreamState> {
  /// See also [StreamNotifier].
  const StreamNotifierFamily();

  /// See also [StreamNotifier].
  StreamNotifierProvider call(
    String id,
  ) {
    return StreamNotifierProvider(
      id,
    );
  }

  @override
  StreamNotifierProvider getProviderOverride(
    covariant StreamNotifierProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'streamNotifierProvider';
}

/// See also [StreamNotifier].
class StreamNotifierProvider
    extends AutoDisposeNotifierProviderImpl<StreamNotifier, StreamState> {
  /// See also [StreamNotifier].
  StreamNotifierProvider(
    String id,
  ) : this._internal(
          () => StreamNotifier()..id = id,
          from: streamNotifierProvider,
          name: r'streamNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$streamNotifierHash,
          dependencies: StreamNotifierFamily._dependencies,
          allTransitiveDependencies:
              StreamNotifierFamily._allTransitiveDependencies,
          id: id,
        );

  StreamNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  StreamState runNotifierBuild(
    covariant StreamNotifier notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(StreamNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: StreamNotifierProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<StreamNotifier, StreamState>
      createElement() {
    return _StreamNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StreamNotifierProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StreamNotifierRef on AutoDisposeNotifierProviderRef<StreamState> {
  /// The parameter `id` of this provider.
  String get id;
}

class _StreamNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<StreamNotifier, StreamState>
    with StreamNotifierRef {
  _StreamNotifierProviderElement(super.provider);

  @override
  String get id => (origin as StreamNotifierProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
