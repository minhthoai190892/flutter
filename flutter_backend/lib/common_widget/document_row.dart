import 'package:flutter/material.dart';

import '../common/color_extension.dart';

enum DocumentStatus { upload, uploading, uploaded }

class DocumentRow extends StatelessWidget {
  const DocumentRow(
      {super.key,
      required this.dObj,
      required this.onPressed,
      required this.onInfo,
      required this.onUpload,
      required this.onAction,
      required this.status});
  final Map dObj;
  final VoidCallback onPressed;
  final VoidCallback onInfo;
  final VoidCallback onUpload;
  final VoidCallback onAction;
  final DocumentStatus status;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            dObj['name'] as String? ?? "",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: TColor.primaryText, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: onInfo,
                            child: Image.network(
                              'https://img.icons8.com/?size=100&id=63308&format=png&color=000000',
                              width: 15,
                              height: 15,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        dObj['detail'] as String? ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: TColor.secondaryText, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                if (status == DocumentStatus.uploaded)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(
                        'https://img.icons8.com/?size=100&id=sz8cPVwzLrMP&format=png&color=000000',
                        width: 20,
                        height: 20,
                      ),
                      InkWell(
                        onTap: onAction,
                        child: Image.network(
                          'https://img.icons8.com/?size=100&id=13746&format=png&color=000000',
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ],
                  )
                else if (status == DocumentStatus.uploading)
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: CircularProgressIndicator(
                      value: 0.3,
                      backgroundColor: TColor.lightGray,
                      color: TColor.primary,
                    ),
                  )
                else
                  TextButton(
                    onPressed: onUpload,
                    child: Text(
                      "Upload",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
              ],
            ),
          ),
          // const Divider()
        ],
      ),
    );
  }
}
