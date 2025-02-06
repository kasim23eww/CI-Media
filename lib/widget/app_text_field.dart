import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/constants/app_fonts.dart';

import '../gen/assets.gen.dart';
import '../theme/app_color.dart';
import '../utils/common_methods.dart';

class CommonTextField extends StatelessWidget {
  final bool allowAnimation;
  final AutovalidateMode? autoValidateMode;
  final bool autofocus;
  final bool expands;
  final bool readOnly;
  final bool enabled;
  final bool filled;
  final Color? filledColor;
  final TextEditingController? textEditingController;
  final Color textColor;
  final TextAlign textAlign;
  final String? suffixIcon;
  final String? prefixIcon;
  final bool obscureText;
  final EdgeInsets contentPadding;

  final double? letterSpacing;
  final double? wordSpacing;
  final double? inputFontSize;
  final FontWeight inputFontWeight;
  final double? headerFontSize;
  final FontWeight? headerFontWeight;
  final String fontFamily;
  final String? headerText;
  final String? counterText;
  final String? hintText;
  final Color hintColor;
  final double? hintFontSize;
  final FontWeight? hintFontWeight;
  final Color? borderColor;
  final double borderRadius;
  final Function? onEditingComplete;
  final Function? onFieldSubmitted;
  final Function(String)? onChanged;
  final Function? onTap;

  /// validation
  final bool allowValidation;
  final String? errorMessage;
  final String? validationMessage;
  final String? validationRegex;
  final int? value;
  final int? length;
  final String? prefixText;
  final String? lengthMessage;
  final FocusNode? focusNode;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter> inputFormat;
  final TextInputType textInputType;

  final TextInputAction textInputAction;
  final FocusNode? nextFocusNode;
  final TextCapitalization textCapitalization;

  const CommonTextField({
    super.key,
    this.allowAnimation = true,
    this.autoValidateMode,
    this.autofocus = false,
    this.expands = false,
    this.readOnly = false,
    this.enabled = true,
    this.filled = true,
    this.filledColor,
    this.textEditingController,
    this.textColor = AppColors.blackColor,
    this.textAlign = TextAlign.start,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.contentPadding =
    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
    this.letterSpacing,
    this.wordSpacing,
    this.inputFontSize,
    this.inputFontWeight = AppFontWeight.medium,
    this.headerFontSize,
    this.headerFontWeight,
    this.fontFamily = AppFontFamily.fontName,
    this.headerText,
    this.counterText,
    this.hintText,
    this.hintColor = AppColors.hintColor,
    this.hintFontSize,
    this.hintFontWeight,
    this.borderColor = AppColors.lightEmptyFilledColor,
    this.borderRadius = 12,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onChanged,
    this.onTap,
    this.allowValidation = true,
    this.errorMessage,
    this.validationMessage,
    this.validationRegex,
    this.value,
    this.length,
    this.prefixText,
    this.lengthMessage,
    this.focusNode,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.inputFormat = const [],
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.nextFocusNode,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autoValidateMode,
      validator: (text) {
        if (textEditingController!.text.trim().isEmpty && allowValidation) {
          return errorMessage ?? "Invalid errorMessage";
        } else if (value != null && (int.parse(textEditingController!.text.trim().trim()) > value!)) {
          return validationMessage ?? "Invalid value";
        } else if (length != null && lengthMessage != null) {
          if (textEditingController!.text.trim().length < length! ||
              textEditingController!.text.trim().length > length!) {
            return lengthMessage;
          }
        } else if (validationRegex != null) {
          if (!RegExp(validationRegex!).hasMatch(text!.trim())) {
            return validationMessage ?? "Invalid Validation Message";
          }
        }
        return null;
      },
      textAlign: textAlign,
      controller: textEditingController,
      enabled: enabled,
      readOnly: readOnly,
      expands: expands,
      obscureText: obscureText,
      obscuringCharacter: "*",
      autofocus: autofocus,
      focusNode: focusNode,
      maxLength: maxLength,
      minLines: minLines,
      maxLines: maxLines,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      inputFormatters: inputFormat.isEmpty ? null : inputFormat,

      decoration: InputDecoration(
        contentPadding: contentPadding,
        counterStyle: const TextStyle(color: AppColors.greyColor),
        counterText: counterText,
        fillColor: filledColor ?? AppColors.whiteColor,
        filled: filled,
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintColor,
          fontSize: hintFontSize ?? AppFontSize.font_14,
          fontWeight: hintFontWeight ?? inputFontWeight,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
        ),
        errorStyle: const TextStyle(
          color: AppColors.redColor,
        ),
        errorMaxLines: 3,
        prefixIcon: prefixIcon == null
            ? null
            : Transform.scale(
            scale: 0.4,
            child: SvgPicture.asset(prefixIcon!)
        ),
        suffixIcon: suffixIcon == null
            ? null
            : Transform.scale(
          scale: 0.4,
            child: SvgPicture.asset(suffixIcon!)
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor ?? AppColors.whiteColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor ?? Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor ?? Colors.transparent,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor ?? Colors.transparent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor ?? Colors.transparent,
          ),
        ),
      ),
      cursorColor: AppColors.blackColor,
      // cursorHeight: 16,
      style: TextStyle(
        fontSize: inputFontSize,
        color: enabled == false ? textColor.withOpacity(0.3) : textColor,
        fontWeight: inputFontWeight,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
      ),

      onChanged: (value) {
        onChanged?.call(value);
      },
      onTap: () {
        onTap?.call();
      },
      onEditingComplete: () {
        onEditingComplete?.call();
      },
      onFieldSubmitted: (value) {
        onFieldSubmitted?.call();
        if (textInputAction == TextInputAction.done) {
          CommonMethods().hideKeyboard(context);
        } else if (textInputAction == TextInputAction.next) {
          FocusScope.of(context).requestFocus(
            nextFocusNode,
          );
        }
      },
      onTapOutside: (event) => CommonMethods().hideKeyboard(context),
    );
  }
}
