// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_camp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BloodCampEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookCampRequest request) bookCamp,
    required TResult Function() getBloodCampHistory,
    required TResult Function() getBloodBanks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookCampRequest request)? bookCamp,
    TResult? Function()? getBloodCampHistory,
    TResult? Function()? getBloodBanks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookCampRequest request)? bookCamp,
    TResult Function()? getBloodCampHistory,
    TResult Function()? getBloodBanks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookCamp value) bookCamp,
    required TResult Function(GetBloodCampHistory value) getBloodCampHistory,
    required TResult Function(GetBloodBanks value) getBloodBanks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookCamp value)? bookCamp,
    TResult? Function(GetBloodCampHistory value)? getBloodCampHistory,
    TResult? Function(GetBloodBanks value)? getBloodBanks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookCamp value)? bookCamp,
    TResult Function(GetBloodCampHistory value)? getBloodCampHistory,
    TResult Function(GetBloodBanks value)? getBloodBanks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodCampEventCopyWith<$Res> {
  factory $BloodCampEventCopyWith(
          BloodCampEvent value, $Res Function(BloodCampEvent) then) =
      _$BloodCampEventCopyWithImpl<$Res, BloodCampEvent>;
}

/// @nodoc
class _$BloodCampEventCopyWithImpl<$Res, $Val extends BloodCampEvent>
    implements $BloodCampEventCopyWith<$Res> {
  _$BloodCampEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BookCampCopyWith<$Res> {
  factory _$$BookCampCopyWith(
          _$BookCamp value, $Res Function(_$BookCamp) then) =
      __$$BookCampCopyWithImpl<$Res>;
  @useResult
  $Res call({BookCampRequest request});

  $BookCampRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$BookCampCopyWithImpl<$Res>
    extends _$BloodCampEventCopyWithImpl<$Res, _$BookCamp>
    implements _$$BookCampCopyWith<$Res> {
  __$$BookCampCopyWithImpl(_$BookCamp _value, $Res Function(_$BookCamp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$BookCamp(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as BookCampRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCampRequestCopyWith<$Res> get request {
    return $BookCampRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$BookCamp implements BookCamp {
  const _$BookCamp({required this.request});

  @override
  final BookCampRequest request;

  @override
  String toString() {
    return 'BloodCampEvent.bookCamp(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookCamp &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookCampCopyWith<_$BookCamp> get copyWith =>
      __$$BookCampCopyWithImpl<_$BookCamp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookCampRequest request) bookCamp,
    required TResult Function() getBloodCampHistory,
    required TResult Function() getBloodBanks,
  }) {
    return bookCamp(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookCampRequest request)? bookCamp,
    TResult? Function()? getBloodCampHistory,
    TResult? Function()? getBloodBanks,
  }) {
    return bookCamp?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookCampRequest request)? bookCamp,
    TResult Function()? getBloodCampHistory,
    TResult Function()? getBloodBanks,
    required TResult orElse(),
  }) {
    if (bookCamp != null) {
      return bookCamp(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookCamp value) bookCamp,
    required TResult Function(GetBloodCampHistory value) getBloodCampHistory,
    required TResult Function(GetBloodBanks value) getBloodBanks,
  }) {
    return bookCamp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookCamp value)? bookCamp,
    TResult? Function(GetBloodCampHistory value)? getBloodCampHistory,
    TResult? Function(GetBloodBanks value)? getBloodBanks,
  }) {
    return bookCamp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookCamp value)? bookCamp,
    TResult Function(GetBloodCampHistory value)? getBloodCampHistory,
    TResult Function(GetBloodBanks value)? getBloodBanks,
    required TResult orElse(),
  }) {
    if (bookCamp != null) {
      return bookCamp(this);
    }
    return orElse();
  }
}

abstract class BookCamp implements BloodCampEvent {
  const factory BookCamp({required final BookCampRequest request}) = _$BookCamp;

  BookCampRequest get request;
  @JsonKey(ignore: true)
  _$$BookCampCopyWith<_$BookCamp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBloodCampHistoryCopyWith<$Res> {
  factory _$$GetBloodCampHistoryCopyWith(_$GetBloodCampHistory value,
          $Res Function(_$GetBloodCampHistory) then) =
      __$$GetBloodCampHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBloodCampHistoryCopyWithImpl<$Res>
    extends _$BloodCampEventCopyWithImpl<$Res, _$GetBloodCampHistory>
    implements _$$GetBloodCampHistoryCopyWith<$Res> {
  __$$GetBloodCampHistoryCopyWithImpl(
      _$GetBloodCampHistory _value, $Res Function(_$GetBloodCampHistory) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBloodCampHistory implements GetBloodCampHistory {
  const _$GetBloodCampHistory();

  @override
  String toString() {
    return 'BloodCampEvent.getBloodCampHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBloodCampHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookCampRequest request) bookCamp,
    required TResult Function() getBloodCampHistory,
    required TResult Function() getBloodBanks,
  }) {
    return getBloodCampHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookCampRequest request)? bookCamp,
    TResult? Function()? getBloodCampHistory,
    TResult? Function()? getBloodBanks,
  }) {
    return getBloodCampHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookCampRequest request)? bookCamp,
    TResult Function()? getBloodCampHistory,
    TResult Function()? getBloodBanks,
    required TResult orElse(),
  }) {
    if (getBloodCampHistory != null) {
      return getBloodCampHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookCamp value) bookCamp,
    required TResult Function(GetBloodCampHistory value) getBloodCampHistory,
    required TResult Function(GetBloodBanks value) getBloodBanks,
  }) {
    return getBloodCampHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookCamp value)? bookCamp,
    TResult? Function(GetBloodCampHistory value)? getBloodCampHistory,
    TResult? Function(GetBloodBanks value)? getBloodBanks,
  }) {
    return getBloodCampHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookCamp value)? bookCamp,
    TResult Function(GetBloodCampHistory value)? getBloodCampHistory,
    TResult Function(GetBloodBanks value)? getBloodBanks,
    required TResult orElse(),
  }) {
    if (getBloodCampHistory != null) {
      return getBloodCampHistory(this);
    }
    return orElse();
  }
}

abstract class GetBloodCampHistory implements BloodCampEvent {
  const factory GetBloodCampHistory() = _$GetBloodCampHistory;
}

/// @nodoc
abstract class _$$GetBloodBanksCopyWith<$Res> {
  factory _$$GetBloodBanksCopyWith(
          _$GetBloodBanks value, $Res Function(_$GetBloodBanks) then) =
      __$$GetBloodBanksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBloodBanksCopyWithImpl<$Res>
    extends _$BloodCampEventCopyWithImpl<$Res, _$GetBloodBanks>
    implements _$$GetBloodBanksCopyWith<$Res> {
  __$$GetBloodBanksCopyWithImpl(
      _$GetBloodBanks _value, $Res Function(_$GetBloodBanks) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBloodBanks implements GetBloodBanks {
  const _$GetBloodBanks();

  @override
  String toString() {
    return 'BloodCampEvent.getBloodBanks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBloodBanks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookCampRequest request) bookCamp,
    required TResult Function() getBloodCampHistory,
    required TResult Function() getBloodBanks,
  }) {
    return getBloodBanks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookCampRequest request)? bookCamp,
    TResult? Function()? getBloodCampHistory,
    TResult? Function()? getBloodBanks,
  }) {
    return getBloodBanks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookCampRequest request)? bookCamp,
    TResult Function()? getBloodCampHistory,
    TResult Function()? getBloodBanks,
    required TResult orElse(),
  }) {
    if (getBloodBanks != null) {
      return getBloodBanks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookCamp value) bookCamp,
    required TResult Function(GetBloodCampHistory value) getBloodCampHistory,
    required TResult Function(GetBloodBanks value) getBloodBanks,
  }) {
    return getBloodBanks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookCamp value)? bookCamp,
    TResult? Function(GetBloodCampHistory value)? getBloodCampHistory,
    TResult? Function(GetBloodBanks value)? getBloodBanks,
  }) {
    return getBloodBanks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookCamp value)? bookCamp,
    TResult Function(GetBloodCampHistory value)? getBloodCampHistory,
    TResult Function(GetBloodBanks value)? getBloodBanks,
    required TResult orElse(),
  }) {
    if (getBloodBanks != null) {
      return getBloodBanks(this);
    }
    return orElse();
  }
}

abstract class GetBloodBanks implements BloodCampEvent {
  const factory GetBloodBanks() = _$GetBloodBanks;
}

/// @nodoc
mixin _$BloodCampState {
  BloodCampStatus get status => throw _privateConstructorUsedError;
  List<BloodCampHistoryModel> get campHistory =>
      throw _privateConstructorUsedError;
  List<BloodCampHistoryModel> get upComingCamps =>
      throw _privateConstructorUsedError;
  List<BloodBankModel> get bloodBanks => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BloodCampStateCopyWith<BloodCampState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodCampStateCopyWith<$Res> {
  factory $BloodCampStateCopyWith(
          BloodCampState value, $Res Function(BloodCampState) then) =
      _$BloodCampStateCopyWithImpl<$Res, BloodCampState>;
  @useResult
  $Res call(
      {BloodCampStatus status,
      List<BloodCampHistoryModel> campHistory,
      List<BloodCampHistoryModel> upComingCamps,
      List<BloodBankModel> bloodBanks,
      String? errorMsg});
}

/// @nodoc
class _$BloodCampStateCopyWithImpl<$Res, $Val extends BloodCampState>
    implements $BloodCampStateCopyWith<$Res> {
  _$BloodCampStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? campHistory = null,
    Object? upComingCamps = null,
    Object? bloodBanks = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BloodCampStatus,
      campHistory: null == campHistory
          ? _value.campHistory
          : campHistory // ignore: cast_nullable_to_non_nullable
              as List<BloodCampHistoryModel>,
      upComingCamps: null == upComingCamps
          ? _value.upComingCamps
          : upComingCamps // ignore: cast_nullable_to_non_nullable
              as List<BloodCampHistoryModel>,
      bloodBanks: null == bloodBanks
          ? _value.bloodBanks
          : bloodBanks // ignore: cast_nullable_to_non_nullable
              as List<BloodBankModel>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BloodCampStateCopyWith<$Res>
    implements $BloodCampStateCopyWith<$Res> {
  factory _$$_BloodCampStateCopyWith(
          _$_BloodCampState value, $Res Function(_$_BloodCampState) then) =
      __$$_BloodCampStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BloodCampStatus status,
      List<BloodCampHistoryModel> campHistory,
      List<BloodCampHistoryModel> upComingCamps,
      List<BloodBankModel> bloodBanks,
      String? errorMsg});
}

/// @nodoc
class __$$_BloodCampStateCopyWithImpl<$Res>
    extends _$BloodCampStateCopyWithImpl<$Res, _$_BloodCampState>
    implements _$$_BloodCampStateCopyWith<$Res> {
  __$$_BloodCampStateCopyWithImpl(
      _$_BloodCampState _value, $Res Function(_$_BloodCampState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? campHistory = null,
    Object? upComingCamps = null,
    Object? bloodBanks = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_$_BloodCampState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BloodCampStatus,
      campHistory: null == campHistory
          ? _value._campHistory
          : campHistory // ignore: cast_nullable_to_non_nullable
              as List<BloodCampHistoryModel>,
      upComingCamps: null == upComingCamps
          ? _value._upComingCamps
          : upComingCamps // ignore: cast_nullable_to_non_nullable
              as List<BloodCampHistoryModel>,
      bloodBanks: null == bloodBanks
          ? _value._bloodBanks
          : bloodBanks // ignore: cast_nullable_to_non_nullable
              as List<BloodBankModel>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BloodCampState implements _BloodCampState {
  const _$_BloodCampState(
      {required this.status,
      final List<BloodCampHistoryModel> campHistory = const [],
      final List<BloodCampHistoryModel> upComingCamps = const [],
      final List<BloodBankModel> bloodBanks = const [],
      this.errorMsg})
      : _campHistory = campHistory,
        _upComingCamps = upComingCamps,
        _bloodBanks = bloodBanks;

  @override
  final BloodCampStatus status;
  final List<BloodCampHistoryModel> _campHistory;
  @override
  @JsonKey()
  List<BloodCampHistoryModel> get campHistory {
    if (_campHistory is EqualUnmodifiableListView) return _campHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_campHistory);
  }

  final List<BloodCampHistoryModel> _upComingCamps;
  @override
  @JsonKey()
  List<BloodCampHistoryModel> get upComingCamps {
    if (_upComingCamps is EqualUnmodifiableListView) return _upComingCamps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upComingCamps);
  }

  final List<BloodBankModel> _bloodBanks;
  @override
  @JsonKey()
  List<BloodBankModel> get bloodBanks {
    if (_bloodBanks is EqualUnmodifiableListView) return _bloodBanks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bloodBanks);
  }

  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'BloodCampState(status: $status, campHistory: $campHistory, upComingCamps: $upComingCamps, bloodBanks: $bloodBanks, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BloodCampState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._campHistory, _campHistory) &&
            const DeepCollectionEquality()
                .equals(other._upComingCamps, _upComingCamps) &&
            const DeepCollectionEquality()
                .equals(other._bloodBanks, _bloodBanks) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_campHistory),
      const DeepCollectionEquality().hash(_upComingCamps),
      const DeepCollectionEquality().hash(_bloodBanks),
      errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BloodCampStateCopyWith<_$_BloodCampState> get copyWith =>
      __$$_BloodCampStateCopyWithImpl<_$_BloodCampState>(this, _$identity);
}

abstract class _BloodCampState implements BloodCampState {
  const factory _BloodCampState(
      {required final BloodCampStatus status,
      final List<BloodCampHistoryModel> campHistory,
      final List<BloodCampHistoryModel> upComingCamps,
      final List<BloodBankModel> bloodBanks,
      final String? errorMsg}) = _$_BloodCampState;

  @override
  BloodCampStatus get status;
  @override
  List<BloodCampHistoryModel> get campHistory;
  @override
  List<BloodCampHistoryModel> get upComingCamps;
  @override
  List<BloodBankModel> get bloodBanks;
  @override
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$_BloodCampStateCopyWith<_$_BloodCampState> get copyWith =>
      throw _privateConstructorUsedError;
}
