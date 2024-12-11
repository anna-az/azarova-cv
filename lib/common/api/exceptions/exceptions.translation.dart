// Project imports:
import '../../app-translation/translation.extensions.dart';
import '../../map/map.extensions.dart';

enum ExceptionTranslationNames implements Translation {
  deadlineExceeded,
  internalServerError,
  noInternetConnection,
  serviceUnavailable,
  unauthorized,
  unexpected,
  smthWentWrong,
  invalidCredentials,
}

final Map<String, String> en = <ExceptionTranslationNames, String>{
  ExceptionTranslationNames.deadlineExceeded:
      'The connection has timed out, please try again.',
  ExceptionTranslationNames.internalServerError:
      'Internal server error. Please try again later',
  ExceptionTranslationNames.noInternetConnection:
      'No internet connection detected, please try again.',
  ExceptionTranslationNames.serviceUnavailable: 'Service unavailable',
  ExceptionTranslationNames.unauthorized: 'Unauthorized',
  ExceptionTranslationNames.unexpected: 'Unexpected error occurred',
  ExceptionTranslationNames.smthWentWrong:
      'Oops! Something went wrong. Please try again later.',
  ExceptionTranslationNames.invalidCredentials: 'Invalid credentials',
}.st;

final Map<String, String> ru = <ExceptionTranslationNames, String>{
  ExceptionTranslationNames.deadlineExceeded:
      'Соединение прервалось, пожалуйста, попробуйте еще раз.',
  ExceptionTranslationNames.internalServerError:
      'Внутренняя ошибка сервера. Пожалуйста, повторите попытку позже',
  ExceptionTranslationNames.noInternetConnection:
      'Интернет-соединение не обнаружено, попробуйте еще раз.',
  ExceptionTranslationNames.serviceUnavailable: 'Сервис недоступен',
  ExceptionTranslationNames.unauthorized: 'Не авторизован',
  ExceptionTranslationNames.unexpected: 'Возникла непредвиденная ошибка',
  ExceptionTranslationNames.smthWentWrong:
      'Упс! Что-то пошло не так. Пожалуйста, повторите попытку позже.',
  ExceptionTranslationNames.invalidCredentials:
      'Недействительные учетные данные',
}.st;

final Map<String, String> uk = <ExceptionTranslationNames, String>{
  ExceptionTranslationNames.deadlineExceeded:
      'Закінчився час з\'єднання, будь ласка, спробуйте ще раз.',
  ExceptionTranslationNames.internalServerError:
      'Внутрішня помилка сервера. Будь ласка, повторіть спробу пізніше',
  ExceptionTranslationNames.noInternetConnection:
      'З\'єднання з інтернетом не виявлено, спробуйте ще раз.',
  ExceptionTranslationNames.serviceUnavailable: 'Сервіс недоступний',
  ExceptionTranslationNames.unauthorized: 'Не авторизований',
  ExceptionTranslationNames.unexpected: 'Виникла непередбачувана помилка',
  ExceptionTranslationNames.smthWentWrong:
      'Упс! Щось пішло не так. Будь ласка, спробуйте пізніше.',
  ExceptionTranslationNames.invalidCredentials: 'Невірні облікові дані',
}.st;
