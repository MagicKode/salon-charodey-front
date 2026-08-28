/// Переключай одной константой:
/// true  — для эмулятора (Android Emulator)
/// false — для реального телефона (или другого устройства)
const bool isEmulator = true;
// const bool isEmulator = false;

/// IP-адрес для эмулятора (стандартный 10.0.2.2)
const String emulatorHost = '10.0.2.2';

/// IP-адрес вашего реального телефона в локальной сети
/// (узнайте его в настройках Wi-Fi телефона)
const String realDeviceHost = '192.168.1.223'; // замените на ваш IP

/// Текущий хост, который будет использоваться в коде
String get baseHost => isEmulator ? emulatorHost : realDeviceHost;

/// Пример URL для API (пока не используется, но для будущих нужд)
String get apiBaseUrl => 'http://$baseHost:8080/api/v1';