import 'package:appflowy/generated/flowy_svgs.g.dart';
import 'package:appflowy/plugins/document/presentation/editor_plugins/image/image_placeholder.dart';
import 'package:appflowy/plugins/document/presentation/editor_plugins/plugins.dart';
import 'package:appflowy_editor/appflowy_editor.dart';
import 'package:flutter/material.dart';

final imageMobileToolbarItem = MobileToolbarItem.action(
  itemIcon: const FlowySvg(FlowySvgs.m_toolbar_imae_lg),
  actionHandler: (editorState, selection) async {
    final imagePlaceholderKey = GlobalKey<ImagePlaceholderState>();
    await editorState.insertEmptyImageBlock(imagePlaceholderKey);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      imagePlaceholderKey.currentState?.showUploadImageMenu();
    });
  },
);
