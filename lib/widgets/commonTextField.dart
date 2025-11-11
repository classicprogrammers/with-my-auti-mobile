import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import 'package:withmyauti/constants/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? errorText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool isPassword;
  final String? prefixSvgIcon;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.errorText,
    this.validator,
    this.keyboardType,
    this.maxLength,
    this.inputFormatters,
    this.isPassword = false,
    this.prefixSvgIcon,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r), // 👈 Added border radius
        boxShadow: [
          BoxShadow(
            color: AppColors.grey43474D.withOpacity(0.05),
            offset: const Offset(0, 12),
            blurRadius: 60,
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        maxLength: widget.maxLength,
        inputFormatters: widget.inputFormatters,
        obscureText: widget.isPassword ? _obscure : false,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return widget.errorText;
          }
          if (widget.validator != null) {
            return widget.validator!(value);
          }
          return null;
        },
        textAlign: TextAlign.left,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: AppColors.greyADB4C0,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            fontFamily: 'DMSans',
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none,
          ),
          counterText: '',
          contentPadding: EdgeInsets.only(
            left: 10,
            right: 10,
            top: 15,
            bottom: 15,
          ),

          prefixIcon:
              widget.prefixSvgIcon != null
                  ? Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 12,
                      left: 15,
                      right: 5,
                    ),
                    child: SvgPicture.asset(
                      widget.prefixSvgIcon!,
                      height: 20,
                      width: 20,
                      fit: BoxFit.contain,
                    ),
                  )
                  : null,

          suffixIcon:
              widget.isPassword
                  ? IconButton(
                    icon: Icon(
                      _obscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscure = !_obscure;
                      });
                    },
                  )
                  : null,
        ),
      ),
    );
  }
}
