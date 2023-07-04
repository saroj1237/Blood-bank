// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BloodServicesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBloodStock,
    required TResult Function(BloodRequest request) requestBlood,
    required TResult Function(
            String name, String phoneNumber, String dob, String hospitalName)
        donateBlood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBloodStock,
    TResult? Function(BloodRequest request)? requestBlood,
    TResult? Function(
            String name, String phoneNumber, String dob, String hospitalName)?
        donateBlood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBloodStock,
    TResult Function(BloodRequest request)? requestBlood,
    TResult Function(
            String name, String phoneNumber, String dob, String hospitalName)?
        donateBlood,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBloodStock value) getBloodStock,
    required TResult Function(RequestBlood value) requestBlood,
    required TResult Function(DonateBlood value) donateBlood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBloodStock value)? getBloodStock,
    TResult? Function(RequestBlood value)? requestBlood,
    TResult? Function(DonateBlood value)? donateBlood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBloodStock value)? getBloodStock,
    TResult Function(RequestBlood value)? requestBlood,
    TResult Function(DonateBlood value)? donateBlood,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodServicesEventCopyWith<$Res> {
  factory $BloodServicesEventCopyWith(
          BloodServicesEvent value, $Res Function(BloodServicesEvent) then) =
      _$BloodServicesEventCopyWithImpl<$Res, BloodServicesEvent>;
}

/// @nodoc
class _$BloodServicesEventCopyWithImpl<$Res, $Val extends BloodServicesEvent>
    implements $BloodServicesEventCopyWith<$Res> {
  _$BloodServicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$BloodServicesEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'BloodServicesEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBloodStock,
    required TResult Function(BloodRequest request) requestBlood,
    required TResult Function(
            String name, String phoneNumber, String dob, String hospitalName)
        donateBlood,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBloodStock,
    TResult? Function(BloodRequest request)? requestBlood,
    TResult? Function(
            String name, String phoneNumber, String dob, String hospitalName)?
        donateBlood,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBloodStock,
    TResult Function(BloodRequest request)? requestBlood,
    TResult Function(
            String name, String phoneNumber, String dob, String hospitalName)?
        donateBlood,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBloodStock value) getBloodStock,
    required TResult Function(RequestBlood value) requestBlood,
    required TResult Function(DonateBlood value) donateBlood,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBloodStock value)? getBloodStock,
    TResult? Function(RequestBlood value)? requestBlood,
    TResult? Function(DonateBlood value)? donateBlood,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBloodStock value)? getBloodStock,
    TResult Function(RequestBlood value)? requestBlood,
    TResult Function(DonateBlood value)? donateBlood,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements BloodServicesEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$GetBloodStockCopyWith<$Res> {
  factory _$$GetBloodStockCopyWith(
          _$GetBloodStock value, $Res Function(_$GetBloodStock) then) =
      __$$GetBloodStockCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBloodStockCopyWithImpl<$Res>
    extends _$BloodServicesEventCopyWithImpl<$Res, _$GetBloodStock>
    implements _$$GetBloodStockCopyWith<$Res> {
  __$$GetBloodStockCopyWithImpl(
      _$GetBloodStock _value, $Res Function(_$GetBloodStock) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBloodStock implements GetBloodStock {
  const _$GetBloodStock();

  @override
  String toString() {
    return 'BloodServicesEvent.getBloodStock()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBloodStock);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBloodStock,
    required TResult Function(BloodRequest request) requestBlood,
    required TResult Function(
            String name, String phoneNumber, String dob, String hospitalName)
        donateBlood,
  }) {
    return getBloodStock();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBloodStock,
    TResult? Function(BloodRequest request)? requestBlood,
    TResult? Function(
            String name, String phoneNumber, String dob, String hospitalName)?
        donateBlood,
  }) {
    return getBloodStock?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBloodStock,
    TResult Function(BloodRequest request)? requestBlood,
    TResult Function(
            String name, String phoneNumber, String dob, String hospitalName)?
        donateBlood,
    required TResult orElse(),
  }) {
    if (getBloodStock != null) {
      return getBloodStock();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBloodStock value) getBloodStock,
    required TResult Function(RequestBlood value) requestBlood,
    required TResult Function(DonateBlood value) donateBlood,
  }) {
    return getBloodStock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBloodStock value)? getBloodStock,
    TResult? Function(RequestBlood value)? requestBlood,
    TResult? Function(DonateBlood value)? donateBlood,
  }) {
    return getBloodStock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBloodStock value)? getBloodStock,
    TResult Function(RequestBlood value)? requestBlood,
    TResult Function(DonateBlood value)? donateBlood,
    required TResult orElse(),
  }) {
    if (getBloodStock != null) {
      return getBloodStock(this);
    }
    return orElse();
  }
}

abstract class GetBloodStock implements BloodServicesEvent {
  const factory GetBloodStock() = _$GetBloodStock;
}

/// @nodoc
abstract class _$$RequestBloodCopyWith<$Res> {
  factory _$$RequestBloodCopyWith(
          _$RequestBlood value, $Res Function(_$RequestBlood) then) =
      __$$RequestBloodCopyWithImpl<$Res>;
  @useResult
  $Res call({BloodRequest request});

  $BloodRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$RequestBloodCopyWithImpl<$Res>
    extends _$BloodServicesEventCopyWithImpl<$Res, _$RequestBlood>
    implements _$$RequestBloodCopyWith<$Res> {
  __$$RequestBloodCopyWithImpl(
      _$RequestBlood _value, $Res Function(_$RequestBlood) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$RequestBlood(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as BloodRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BloodRequestCopyWith<$Res> get request {
    return $BloodRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$RequestBlood implements RequestBlood {
  const _$RequestBlood({required this.request});

  @override
  final BloodRequest request;

  @override
  String toString() {
    return 'BloodServicesEvent.requestBlood(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestBlood &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestBloodCopyWith<_$RequestBlood> get copyWith =>
      __$$RequestBloodCopyWithImpl<_$RequestBlood>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBloodStock,
    required TResult Function(BloodRequest request) requestBlood,
    required TResult Function(
            String name, String phoneNumber, String dob, String hospitalName)
        donateBlood,
  }) {
    return requestBlood(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBloodStock,
    TResult? Function(BloodRequest request)? requestBlood,
    TResult? Function(
            String name, String phoneNumber, String dob, String hospitalName)?
        donateBlood,
  }) {
    return requestBlood?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBloodStock,
    TResult Function(BloodRequest request)? requestBlood,
    TResult Function(
            String name, String phoneNumber, String dob, String hospitalName)?
        donateBlood,
    required TResult orElse(),
  }) {
    if (requestBlood != null) {
      return requestBlood(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBloodStock value) getBloodStock,
    required TResult Function(RequestBlood value) requestBlood,
    required TResult Function(DonateBlood value) donateBlood,
  }) {
    return requestBlood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBloodStock value)? getBloodStock,
    TResult? Function(RequestBlood value)? requestBlood,
    TResult? Function(DonateBlood value)? donateBlood,
  }) {
    return requestBlood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBloodStock value)? getBloodStock,
    TResult Function(RequestBlood value)? requestBlood,
    TResult Function(DonateBlood value)? donateBlood,
    required TResult orElse(),
  }) {
    if (requestBlood != null) {
      return requestBlood(this);
    }
    return orElse();
  }
}

abstract class RequestBlood implements BloodServicesEvent {
  const factory RequestBlood({required final BloodRequest request}) =
      _$RequestBlood;

  BloodRequest get request;
  @JsonKey(ignore: true)
  _$$RequestBloodCopyWith<_$RequestBlood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DonateBloodCopyWith<$Res> {
  factory _$$DonateBloodCopyWith(
          _$DonateBlood value, $Res Function(_$DonateBlood) then) =
      __$$DonateBloodCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String phoneNumber, String dob, String hospitalName});
}

/// @nodoc
class __$$DonateBloodCopyWithImpl<$Res>
    extends _$BloodServicesEventCopyWithImpl<$Res, _$DonateBlood>
    implements _$$DonateBloodCopyWith<$Res> {
  __$$DonateBloodCopyWithImpl(
      _$DonateBlood _value, $Res Function(_$DonateBlood) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? dob = null,
    Object? hospitalName = null,
  }) {
    return _then(_$DonateBlood(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      hospitalName: null == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DonateBlood implements DonateBlood {
  const _$DonateBlood(
      {required this.name,
      required this.phoneNumber,
      required this.dob,
      required this.hospitalName});

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String dob;
  @override
  final String hospitalName;

  @override
  String toString() {
    return 'BloodServicesEvent.donateBlood(name: $name, phoneNumber: $phoneNumber, dob: $dob, hospitalName: $hospitalName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonateBlood &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.hospitalName, hospitalName) ||
                other.hospitalName == hospitalName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phoneNumber, dob, hospitalName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonateBloodCopyWith<_$DonateBlood> get copyWith =>
      __$$DonateBloodCopyWithImpl<_$DonateBlood>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBloodStock,
    required TResult Function(BloodRequest request) requestBlood,
    required TResult Function(
            String name, String phoneNumber, String dob, String hospitalName)
        donateBlood,
  }) {
    return donateBlood(name, phoneNumber, dob, hospitalName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBloodStock,
    TResult? Function(BloodRequest request)? requestBlood,
    TResult? Function(
            String name, String phoneNumber, String dob, String hospitalName)?
        donateBlood,
  }) {
    return donateBlood?.call(name, phoneNumber, dob, hospitalName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBloodStock,
    TResult Function(BloodRequest request)? requestBlood,
    TResult Function(
            String name, String phoneNumber, String dob, String hospitalName)?
        donateBlood,
    required TResult orElse(),
  }) {
    if (donateBlood != null) {
      return donateBlood(name, phoneNumber, dob, hospitalName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBloodStock value) getBloodStock,
    required TResult Function(RequestBlood value) requestBlood,
    required TResult Function(DonateBlood value) donateBlood,
  }) {
    return donateBlood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBloodStock value)? getBloodStock,
    TResult? Function(RequestBlood value)? requestBlood,
    TResult? Function(DonateBlood value)? donateBlood,
  }) {
    return donateBlood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBloodStock value)? getBloodStock,
    TResult Function(RequestBlood value)? requestBlood,
    TResult Function(DonateBlood value)? donateBlood,
    required TResult orElse(),
  }) {
    if (donateBlood != null) {
      return donateBlood(this);
    }
    return orElse();
  }
}

abstract class DonateBlood implements BloodServicesEvent {
  const factory DonateBlood(
      {required final String name,
      required final String phoneNumber,
      required final String dob,
      required final String hospitalName}) = _$DonateBlood;

  String get name;
  String get phoneNumber;
  String get dob;
  String get hospitalName;
  @JsonKey(ignore: true)
  _$$DonateBloodCopyWith<_$DonateBlood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BloodServicesState {
  BloodServiceStatus get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get bloodStock => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BloodServicesStateCopyWith<BloodServicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodServicesStateCopyWith<$Res> {
  factory $BloodServicesStateCopyWith(
          BloodServicesState value, $Res Function(BloodServicesState) then) =
      _$BloodServicesStateCopyWithImpl<$Res, BloodServicesState>;
  @useResult
  $Res call({BloodServiceStatus status, Map<String, dynamic> bloodStock});
}

/// @nodoc
class _$BloodServicesStateCopyWithImpl<$Res, $Val extends BloodServicesState>
    implements $BloodServicesStateCopyWith<$Res> {
  _$BloodServicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? bloodStock = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BloodServiceStatus,
      bloodStock: null == bloodStock
          ? _value.bloodStock
          : bloodStock // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BloodServicesStateCopyWith<$Res>
    implements $BloodServicesStateCopyWith<$Res> {
  factory _$$_BloodServicesStateCopyWith(_$_BloodServicesState value,
          $Res Function(_$_BloodServicesState) then) =
      __$$_BloodServicesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BloodServiceStatus status, Map<String, dynamic> bloodStock});
}

/// @nodoc
class __$$_BloodServicesStateCopyWithImpl<$Res>
    extends _$BloodServicesStateCopyWithImpl<$Res, _$_BloodServicesState>
    implements _$$_BloodServicesStateCopyWith<$Res> {
  __$$_BloodServicesStateCopyWithImpl(
      _$_BloodServicesState _value, $Res Function(_$_BloodServicesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? bloodStock = null,
  }) {
    return _then(_$_BloodServicesState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BloodServiceStatus,
      bloodStock: null == bloodStock
          ? _value._bloodStock
          : bloodStock // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_BloodServicesState implements _BloodServicesState {
  const _$_BloodServicesState(
      {this.status = BloodServiceStatus.initial,
      final Map<String, dynamic> bloodStock = const {}})
      : _bloodStock = bloodStock;

  @override
  @JsonKey()
  final BloodServiceStatus status;
  final Map<String, dynamic> _bloodStock;
  @override
  @JsonKey()
  Map<String, dynamic> get bloodStock {
    if (_bloodStock is EqualUnmodifiableMapView) return _bloodStock;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_bloodStock);
  }

  @override
  String toString() {
    return 'BloodServicesState(status: $status, bloodStock: $bloodStock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BloodServicesState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._bloodStock, _bloodStock));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_bloodStock));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BloodServicesStateCopyWith<_$_BloodServicesState> get copyWith =>
      __$$_BloodServicesStateCopyWithImpl<_$_BloodServicesState>(
          this, _$identity);
}

abstract class _BloodServicesState implements BloodServicesState {
  const factory _BloodServicesState(
      {final BloodServiceStatus status,
      final Map<String, dynamic> bloodStock}) = _$_BloodServicesState;

  @override
  BloodServiceStatus get status;
  @override
  Map<String, dynamic> get bloodStock;
  @override
  @JsonKey(ignore: true)
  _$$_BloodServicesStateCopyWith<_$_BloodServicesState> get copyWith =>
      throw _privateConstructorUsedError;
}
