import 'package:flutter/material.dart';

class PermissionInfo {
  final String name;
  final String description;
  final IconData icon;
  final bool isSuspicious;
  final String explanation;

  const PermissionInfo({
    required this.name,
    required this.description,
    required this.icon,
    required this.isSuspicious,
    required this.explanation,
  });
}

class AppData {
  final String name;
  final String developer;
  final String description;
  final String rating;
  final String downloads;
  final int reviewCount;
  final List<String> screenshots;
  final List<PermissionInfo> permissions;

  AppData({
    required this.name,
    required this.developer,
    required this.description,
    required this.rating,
    required this.downloads,
    required this.reviewCount,
    required this.screenshots,
    required this.permissions,
  });

  static AppData getAppData(String appName, dynamic l10n) {
    switch (appName) {
      case 'SuperIPTV':
        return AppData(
          name: 'SuperIPTV',
          developer: 'Unknown Developer',
          description:
              'Watch thousands of IPTV channels from around the world. Access premium content and live sports. Install this app to view restricted IPTV streams - enable SMS verification for premium access.',
          rating: '2.1',
          downloads: '10K+',
          reviewCount: 3,
          screenshots: ['screenshot1', 'screenshot2', 'screenshot3'],
          permissions: [
            PermissionInfo(
              name: l10n?.smsAccess ?? 'SMS Access',
              description: l10n?.smsAccessDescription ??
                  'Allows the app to read and send SMS messages.',
              icon: Icons.sms,
              isSuspicious: true,
              explanation:
                  'SMS access is rarely required for IPTV or VPN apps and is a significant red flag, often indicating attempts to intercept OTPs or send premium SMS messages.',
            ),
            PermissionInfo(
              name: l10n?.installPackages ?? 'Install Packages',
              description: l10n?.installPackagesDescription ??
                  'Allows the app to install other applications.',
              icon: Icons.install_mobile,
              isSuspicious: true,
              explanation:
                  'An IPTV or VPN app should not need to install other packages. This is a critical red flag, often used by malware to install additional malicious payloads.',
            ),
            PermissionInfo(
              name: l10n?.cameraAccess ?? 'Camera Access',
              description: l10n?.cameraAccessDescription ??
                  'Allows the app to take pictures and record videos.',
              icon: Icons.camera_alt,
              isSuspicious: true,
              explanation:
                  'Camera access is highly unusual for IPTV or VPN apps. This could be used for surveillance or to capture sensitive information.',
            ),
            PermissionInfo(
              name: l10n?.contactsAccess ?? 'Contacts Access',
              description: l10n?.contactsAccessDescription ??
                  'Allows the app to read your contacts.',
              icon: Icons.contacts,
              isSuspicious: true,
              explanation:
                  'Access to contacts is not necessary for IPTV or VPN functionality. This is a red flag for data exfiltration.',
            ),
            PermissionInfo(
              name: l10n?.locationAccess ?? 'Location Access',
              description: l10n?.locationAccessDescription ??
                  'Allows the app to access your device\'s location.',
              icon: Icons.location_on,
              isSuspicious: true,
              explanation:
                  'While some VPNs might use location for server selection, persistent or background location access for an IPTV app is suspicious and could be used for tracking.',
            ),
            PermissionInfo(
              name: l10n?.storageAccess ?? 'Storage Access',
              description: l10n?.storageAccessDescription ??
                  'Allows the app to read and write to your device\'s storage.',
              icon: Icons.storage,
              isSuspicious: true,
              explanation:
                  'Some media apps need storage, but excessive or unnecessary storage access can be a red flag for data exfiltration or storing malicious files.',
            ),
          ],
        );
      case 'UltraVPN':
        return AppData(
          name: 'UltraVPN',
          developer: 'Tech Solutions Ltd',
          description:
              'Secure your internet connection with our premium VPN service. Bypass geo-restrictions and protect your privacy. Free trial available with SMS verification.',
          rating: '3.8',
          downloads: '100K+',
          reviewCount: 47,
          screenshots: ['screenshot1', 'screenshot2', 'screenshot3'],
          permissions: [
            PermissionInfo(
              name: l10n?.internetAccess ?? 'Internet Access',
              description: l10n?.internetAccessDescription ??
                  'Allows the app to open network sockets.',
              icon: Icons.wifi,
              isSuspicious: false,
              explanation:
                  'Essential for any online app, including VPNs and IPTV. Not suspicious on its own.',
            ),
            PermissionInfo(
              name: l10n?.networkStateAccess ?? 'Network State Access',
              description: l10n?.networkStateAccessDescription ??
                  'Allows the app to view network connection information.',
              icon: Icons.network_check,
              isSuspicious: false,
              explanation:
                  'Needed to determine connection status and switch between networks. This is normal for VPN apps.',
            ),
            PermissionInfo(
              name: l10n?.wakeLock ?? 'Wake Lock',
              description: l10n?.wakeLockDescription ??
                  'Allows the app to prevent the device from sleeping.',
              icon: Icons.battery_charging_full,
              isSuspicious: false,
              explanation:
                  'Wake lock is needed to prevent screen from turning off during video playback. This is normal for media apps.',
            ),
          ],
        );
      default:
        return getAppData('SuperIPTV', l10n);
    }
  }
}
