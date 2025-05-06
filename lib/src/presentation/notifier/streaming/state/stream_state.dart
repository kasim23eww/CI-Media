
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'stream_state.freezed.dart';

@freezed
class StreamState with _$StreamState {
  factory StreamState({
    @Default("") String token,
    @Default("") String chanel,
    @Default(null) int? localUserId,
    @Default(false) bool liveUser,
    @Default(null) RtcEngine? engine,

  }) = _StreamState;
}