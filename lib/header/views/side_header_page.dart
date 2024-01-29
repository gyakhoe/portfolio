import 'package:flutter/material.dart';

import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class SiderHeaderPage extends StatelessWidget {
  const SiderHeaderPage({
    Key? key,
    required Alignment alignment,
    required Color color,
    required bool isEmailHeader,
  })  : _alignment = alignment,
        _color = color,
        _isEmailHeader = isEmailHeader,
        super(key: key);

  final Alignment _alignment;
  final Color _color;
  final bool _isEmailHeader;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Align(
      alignment: _alignment,
      child: Container(
        color: _color,
        width: 70,
        height: MediaQuery.of(context).size.height * 0.7,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: _isEmailHeader
            ? Column(
                children: [
                  _headerVerticalDivider(),
                  Center(
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: TextButton(
                        onPressed: () => appsSendEmail(context: context),
                        child: Text(
                          l10n.contactUserEmail,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  _headerVerticalDivider(),
                  Column(
                    children: socialWidget(l10n: l10n),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _headerVerticalDivider() {
    return const Expanded(
      child: VerticalDivider(
        color: Colors.white,
        width: 5,
        indent: 50,
        endIndent: 50,
      ),
    );
  }
}
