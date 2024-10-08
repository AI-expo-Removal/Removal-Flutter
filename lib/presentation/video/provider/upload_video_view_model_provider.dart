import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:removal_flutter/domain/models/video/upload_video_response_model.dart';
import 'package:removal_flutter/domain/use_cases/video_use_case_provider.dart';
import 'package:removal_flutter/presentation/video/provider/view_model/upload_video_view_model.dart';

final uploadVideoViewModelProvider = StateNotifierProvider.autoDispose<UploadVideoViewModel, UploadVideoResponseModel>((ref) {
  return UploadVideoViewModel(videoUseCase: ref.watch(videoUseCaseProvider));
});
