import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'comp_upload_img_model.dart';
export 'comp_upload_img_model.dart';

/// componente para subir upload
class CompUploadImgWidget extends StatefulWidget {
  const CompUploadImgWidget({
    super.key,
    required this.pathBucket,
    required this.arquivo,
    required this.url,
  });

  final PathBucket? pathBucket;
  final FFUploadedFile? arquivo;
  final Future Function(String url)? url;

  @override
  State<CompUploadImgWidget> createState() => _CompUploadImgWidgetState();
}

class _CompUploadImgWidgetState extends State<CompUploadImgWidget> {
  late CompUploadImgModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompUploadImgModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.arquivo != null &&
          (widget.arquivo?.bytes?.isNotEmpty ?? false)) {
        {
          safeSetState(
              () => _model.isDataUploading_arquivoFFUploadData24f = true);
          var selectedUploadedFiles = <FFUploadedFile>[];
          var selectedMedia = <SelectedFile>[];
          var downloadUrls = <String>[];
          try {
            selectedUploadedFiles = widget.arquivo!.bytes!.isNotEmpty
                ? [widget.arquivo!]
                : <FFUploadedFile>[];
            selectedMedia = selectedFilesFromUploadedFiles(
              selectedUploadedFiles,
              storageFolderPath: widget.pathBucket?.name,
            );
            downloadUrls = await uploadSupabaseStorageFiles(
              bucketName: 'Superus',
              selectedFiles: selectedMedia,
            );
          } finally {
            _model.isDataUploading_arquivoFFUploadData24f = false;
          }
          if (selectedUploadedFiles.length == selectedMedia.length &&
              downloadUrls.length == selectedMedia.length) {
            safeSetState(() {
              _model.uploadedLocalFile_arquivoFFUploadData24f =
                  selectedUploadedFiles.first;
              _model.uploadedFileUrl_arquivoFFUploadData24f =
                  downloadUrls.first;
            });
          } else {
            safeSetState(() {});
            return;
          }
        }

        await widget.url?.call(
          _model.uploadedFileUrl_arquivoFFUploadData24f,
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
