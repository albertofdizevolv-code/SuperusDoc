import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'comp_upload_img_list_model.dart';
export 'comp_upload_img_list_model.dart';

/// componente para subir upload
class CompUploadImgListWidget extends StatefulWidget {
  const CompUploadImgListWidget({
    super.key,
    required this.pathBucket,
    required this.arquivo,
    required this.url,
  });

  final PathBucket? pathBucket;
  final List<FFUploadedFile>? arquivo;
  final Future Function(List<String> url)? url;

  @override
  State<CompUploadImgListWidget> createState() =>
      _CompUploadImgListWidgetState();
}

class _CompUploadImgListWidgetState extends State<CompUploadImgListWidget> {
  late CompUploadImgListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompUploadImgListModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.arquivo!.length >= 1) {
        {
          safeSetState(
              () => _model.isDataUploading_arquivoFFUploadData28f = true);
          var selectedUploadedFiles = <FFUploadedFile>[];
          var selectedMedia = <SelectedFile>[];
          var downloadUrls = <String>[];
          try {
            selectedUploadedFiles = widget.arquivo!;
            selectedMedia = selectedFilesFromUploadedFiles(
              selectedUploadedFiles,
              storageFolderPath: widget.pathBucket?.name,
              isMultiData: true,
            );
            downloadUrls = await uploadSupabaseStorageFiles(
              bucketName: 'Superus',
              selectedFiles: selectedMedia,
            );
          } finally {
            _model.isDataUploading_arquivoFFUploadData28f = false;
          }
          if (selectedUploadedFiles.length == selectedMedia.length &&
              downloadUrls.length == selectedMedia.length) {
            safeSetState(() {
              _model.uploadedLocalFiles_arquivoFFUploadData28f =
                  selectedUploadedFiles;
              _model.uploadedFileUrls_arquivoFFUploadData28f = downloadUrls;
            });
          } else {
            safeSetState(() {});
            return;
          }
        }

        await widget.url?.call(
          _model.uploadedFileUrls_arquivoFFUploadData28f,
        );
      }
      Navigator.pop(context);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
