import 'package:flutter/material.dart';
import '../themes/app_themes.dart';

class CyberCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final VoidCallback? onTap;
  final bool hasGlow;
  final Color? glowColor;

  const CyberCard({
    super.key,
    required this.child,
    this.padding,
    this.onTap,
    this.hasGlow = false,
    this.glowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemes.cardBackground,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppThemes.primaryGreen.withValues(alpha: 0.3),
          width: 1,
        ),
        boxShadow: hasGlow ? AppThemes.cyberGlow : AppThemes.cyberShadow,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: padding ?? const EdgeInsets.all(16),
            child: child,
          ),
        ),
      ),
    );
  }
}

class CyberButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isPrimary;
  final bool hasGlow;
  final double? width;

  const CyberButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.isPrimary = true,
    this.hasGlow = false,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        gradient: isPrimary ? AppThemes.primaryGradient : null,
        color: isPrimary ? null : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: isPrimary
            ? null
            : Border.all(
                color: AppThemes.primaryGreen,
                width: 2,
              ),
        boxShadow: hasGlow ? AppThemes.cyberGlow : null,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon,
                  color: isPrimary
                      ? AppThemes.darkBackground
                      : AppThemes.primaryGreen),
              const SizedBox(width: 8),
            ],
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  color: isPrimary
                      ? AppThemes.darkBackground
                      : AppThemes.primaryGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'monospace',
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CyberProgressIndicator extends StatelessWidget {
  final double value;
  final String? label;
  final Color? color;

  const CyberProgressIndicator({
    super.key,
    required this.value,
    this.label,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: const TextStyle(
              color: AppThemes.textSecondary,
              fontSize: 14,
              fontFamily: 'monospace',
            ),
          ),
          const SizedBox(height: 8),
        ],
        Container(
          height: 8,
          decoration: BoxDecoration(
            color: AppThemes.surfaceBackground,
            borderRadius: BorderRadius.circular(4),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: value,
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation<Color>(
                color ?? AppThemes.primaryGreen,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CyberBadge extends StatelessWidget {
  final String text;
  final Color? color;
  final IconData? icon;
  final bool isGlowing;

  const CyberBadge({
    super.key,
    required this.text,
    this.color,
    this.icon,
    this.isGlowing = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 200, // Ограничиваем максимальную ширину
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: 8, vertical: 4), // Уменьшаем padding
      decoration: BoxDecoration(
        color: (color ?? AppThemes.primaryGreen).withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(12), // Уменьшаем радиус
        border: Border.all(
          color: color ?? AppThemes.primaryGreen,
          width: 1,
        ),
        boxShadow: isGlowing ? AppThemes.cyberGlow : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 14, // Уменьшаем размер иконки
              color: color ?? AppThemes.primaryGreen,
            ),
            const SizedBox(width: 3), // Уменьшаем отступ
          ],
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                color: color ?? AppThemes.primaryGreen,
                fontSize: 11, // Уменьшаем размер шрифта
                fontWeight: FontWeight.bold,
                fontFamily: 'monospace',
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class CyberDivider extends StatelessWidget {
  final double? height;
  final Color? color;
  final bool isGlowing;

  const CyberDivider({
    super.key,
    this.height,
    this.color,
    this.isGlowing = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            color ?? AppThemes.primaryGreen,
            Colors.transparent,
          ],
          stops: const [0.0, 0.5, 1.0],
        ),
        boxShadow: isGlowing ? AppThemes.cyberGlow : null,
      ),
    );
  }
}

class CyberIcon extends StatelessWidget {
  final IconData icon;
  final double? size;
  final Color? color;
  final bool isGlowing;

  const CyberIcon({
    super.key,
    required this.icon,
    this.size,
    this.color,
    this.isGlowing = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isGlowing
          ? BoxDecoration(
              boxShadow: AppThemes.cyberGlow,
            )
          : null,
      child: Icon(
        icon,
        size: size ?? 24,
        color: color ?? AppThemes.primaryGreen,
      ),
    );
  }
}

class CyberText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool isGlowing;

  const CyberText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.isGlowing = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isGlowing
          ? BoxDecoration(
              boxShadow: AppThemes.cyberGlow,
            )
          : null,
      child: Text(
        text,
        style: style?.copyWith(
              fontFamily: 'monospace',
            ) ??
            const TextStyle(
              color: AppThemes.textPrimary,
              fontFamily: 'monospace',
            ),
        textAlign: textAlign,
        maxLines: maxLines,
      ),
    );
  }
}

class CyberContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final double borderRadius;
  final bool hasGlow;
  final List<BoxShadow>? customShadows;

  const CyberContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius = 12,
    this.hasGlow = false,
    this.customShadows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppThemes.cardBackground,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor ?? AppThemes.primaryGreen.withValues(alpha: 0.3),
          width: 1,
        ),
        boxShadow: customShadows ??
            (hasGlow ? AppThemes.cyberGlow : AppThemes.cyberShadow),
      ),
      child: child,
    );
  }
}
