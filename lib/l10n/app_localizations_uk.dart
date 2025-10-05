// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'MockIPTV Аудитор';

  @override
  String get educationalTool =>
      'Освітній інструмент для аудиторів мобільних додатків';

  @override
  String get appDescription =>
      'Цей освітній додаток демонструє поширені техніки, які використовують шкідливі програми для маскування під легітимні VPN, IPTV або утилітарні додатки. Навчіться розпізнавати червоні прапорці та підозрілі патерни в мобільних додатках.';

  @override
  String get openSampleAppPage => 'Відкрити сторінку зразка додатку';

  @override
  String get startAuditChecklist => 'Розпочати чек-лист аудиту';

  @override
  String get redFlagsGuide => 'Посібник з червоних прапорців';

  @override
  String get knowledgeQuiz => 'Вікторина знань';

  @override
  String get forInstructors => 'Для викладачів';

  @override
  String get educationalPurposeOnly => 'Тільки для освітніх цілей';

  @override
  String get safetyDisclaimer =>
      'Це безпечна, нефункціональна освітня демонстрація. Не використовуйте для шкідливих цілей.';

  @override
  String get superIPTV => 'SuperIPTV';

  @override
  String get ultraVPN => 'UltraVPN';

  @override
  String get unknownDeveloper => 'Невідомий розробник';

  @override
  String get suspiciousDescription =>
      'Дивіться тисячі IPTV каналів з усього світу. Доступ до преміум контенту та прямі трансляції спорту. Встановіть цей додаток для перегляду обмежених IPTV потоків - увімкніть SMS верифікацію для преміум доступу.';

  @override
  String get vpnDescription =>
      'Захистіть своє інтернет-з\'єднання нашим преміум VPN сервісом. Обходьте гео-обмеження та захистіть свою приватність. Безкоштовний пробний період з SMS верифікацією.';

  @override
  String get requestedPermissions => 'Запитувані дозволи (симуляція)';

  @override
  String get developerInformation => 'Інформація про розробника';

  @override
  String get reviews => 'Відгуки';

  @override
  String get screenshots => 'Скріншоти';

  @override
  String get description => 'Опис';

  @override
  String get permissionMismatchAnalysis => 'Аналіз невідповідності дозволів';

  @override
  String get claimedFunctionality => 'Заявлена функціональність';

  @override
  String get requestedPermissionsColumn => 'Запитувані дозволи';

  @override
  String get status => 'Статус';

  @override
  String get legitimate => 'Легітимний';

  @override
  String get suspicious => 'Підозрілий';

  @override
  String get critical => 'Критичний';

  @override
  String get redFlagsDetected => 'Виявлено червоні прапорці';

  @override
  String get auditRecommendations => 'Рекомендації з аудиту';

  @override
  String quizTitle(Object questionNumber) {
    return 'Вікторина - Питання $questionNumber/8';
  }

  @override
  String question(Object questionNumber) {
    return 'Питання $questionNumber';
  }

  @override
  String get correct => 'Правильно!';

  @override
  String get incorrect => 'Неправильно';

  @override
  String get explanation => 'Пояснення:';

  @override
  String get nextQuestion => 'Наступне питання';

  @override
  String get viewResults => 'Переглянути результати';

  @override
  String get quizResults => 'Результати вікторини';

  @override
  String yourScore(Object score, Object total) {
    return 'Ваш результат: $score з $total';
  }

  @override
  String get retakeQuiz => 'Перескласти вікторину';

  @override
  String get reviewRedFlagsGuide => 'Переглянути посібник з червоних прапорців';

  @override
  String get backToHome => 'Повернутися на головну';

  @override
  String get resetQuiz => 'Скинути вікторину';

  @override
  String get resetQuizConfirmation =>
      'Ви впевнені, що хочете скинути вікторину? Це очистить ваш поточний прогрес.';

  @override
  String get cancel => 'Скасувати';

  @override
  String get reset => 'Скинути';

  @override
  String get close => 'Закрити';

  @override
  String get copy => 'Копіювати';

  @override
  String get contentCopiedToClipboard => 'Контент скопійовано в буфер обміну';

  @override
  String get analyzing => 'Аналіз';

  @override
  String get developer => 'Розробник';

  @override
  String get permissionAnalysis => 'Аналіз дозволів';

  @override
  String get suspiciousPermissionsDetected => 'Виявлено підозрілі дозволи';

  @override
  String get viewRedFlagsGuide => 'Переглянути посібник з червоних прапорців';

  @override
  String get question1 =>
      'IPTV додаток запитує дозвіл на READ_SMS. Що ви повинні зробити?';

  @override
  String get question1Option1 =>
      'Дозволити - доступ до SMS потрібен для верифікації користувача';

  @override
  String get question1Option2 =>
      'Позначити для перевірки - доступ до SMS підозрілий для IPTV додатків';

  @override
  String get question1Option3 =>
      'Встановити все одно - дозвіл може бути для законної функції';

  @override
  String get question1Option4 =>
      'Спочатку перевірити, чи є у додатку хороші відгуки';

  @override
  String get question1Explanation =>
      'Доступ до SMS рідко потрібен для функціональності IPTV і є великим червоним прапорцем. Цей дозвіл може використовуватися для перехоплення 2FA кодів або крадіжки конфіденційної інформації. Завжди позначайте додатки з невідповідністю дозволів для ручної перевірки.';

  @override
  String get question1Reference =>
      'Посібник з червоних прапорців - Аналіз невідповідності дозволів';

  @override
  String get question2 =>
      'Який основний ризик додатків, що запитують дозвіл ACCESSIBILITY_SERVICE?';

  @override
  String get question2Option1 => 'Вони можуть отримати доступ до інтернету';

  @override
  String get question2Option2 =>
      'Вони можуть керувати іншими додатками та красти конфіденційні дані';

  @override
  String get question2Option3 => 'Вони можуть читати сховище пристрою';

  @override
  String get question2Option4 => 'Вони можуть здійснювати телефонні дзвінки';

  @override
  String get question2Explanation =>
      'Служби доступності можуть керувати іншими додатками, імітувати взаємодію користувача та красти конфіденційні дані з будь-якого додатку на пристрої. Це один з найнебезпечніших дозволів і ніколи не повинен надаватися неосновним додаткам.';

  @override
  String get question2Reference =>
      'Посібник з червоних прапорців - Зловживання службою доступності';

  @override
  String get question3 => 'VPN додаток запитує дозвіл на READ_CONTACTS. Це:';

  @override
  String get question3Option1 =>
      'Нормально - VPN додаткам потрібен доступ до контактів для безпеки';

  @override
  String get question3Option2 =>
      'Підозріло - VPN додаткам не потрібен доступ до контактів';

  @override
  String get question3Option3 => 'Необхідно - для автентифікації користувача';

  @override
  String get question3Option4 => 'Опціонально - залежить від VPN провайдера';

  @override
  String get question3Explanation =>
      'VPN додаткам не потрібен доступ до контактів. Це явний червоний прапорець, що вказує на потенційний збір даних або атаки соціальної інженерії. Легітимні VPN сервіси не вимагають доступу до контактів.';

  @override
  String get question3Reference =>
      'Посібник з червоних прапорців - Маскування VPN/IPTV';

  @override
  String get question4 =>
      'Що зазвичай вказує динамічне завантаження коду в мобільних додатках?';

  @override
  String get question4Option1 => 'Ефективну продуктивність додатку';

  @override
  String get question4Option2 => 'Спроба уникнути статичного аналізу';

  @override
  String get question4Option3 => 'Кращий користувацький досвід';

  @override
  String get question4Option4 => 'Зменшений розмір додатку';

  @override
  String get question4Explanation =>
      'Динамічне завантаження коду часто використовується шкідливими додатками для завантаження та виконання додаткових корисних навантажень після проходження початкових перевірок безпеки. Ця техніка допомагає шкідливому ПЗ уникнути інструментів статичного аналізу.';

  @override
  String get question4Reference =>
      'Посібник з червоних прапорців - Динамічне завантаження коду';

  @override
  String get question5 =>
      'Додаток з дуже невеликою кількістю відгуків (менше 10) та нещодавно створеним акаунтом розробника це:';

  @override
  String get question5Option1 => 'Новий легітимний додаток';

  @override
  String get question5Option2 =>
      'Потенційно підозрілий і повинен бути розслідований';

  @override
  String get question5Option3 => 'Нормально для малих розробників';

  @override
  String get question5Option4 => 'Ознака високої якості';

  @override
  String get question5Explanation =>
      'Додатки з мінімальними відгуками та нещодавно створеними акаунтами розробників є поширеними індикаторами технік уникнення магазину додатків. Шкідливі додатки часто використовують фальшиві або скомпрометовані акаунти розробників для обходу перевірок безпеки.';

  @override
  String get question5Reference =>
      'Посібник з червоних прапорців - Уникнення магазину додатків';

  @override
  String get question6 =>
      'Який основний ризик фішингу WebView в мобільних додатках?';

  @override
  String get question6Option1 => 'Повільніша продуктивність додатку';

  @override
  String get question6Option2 =>
      'Відображення фальшивих сторінок входу для крадіжки облікових даних';

  @override
  String get question6Option3 => 'Збільшене використання даних';

  @override
  String get question6Option4 => 'Поганий користувацький інтерфейс';

  @override
  String get question6Explanation =>
      'Фішинг WebView використовує компоненти WebView для відображення переконливих фальшивих сторінок входу, які крадуть облікові дані користувача. WebView може бути стилізований так, щоб виглядати точно як легітимні банківські або соціальні додатки.';

  @override
  String get question6Reference =>
      'Посібник з червоних прапорців - Фішинг WebView';

  @override
  String get question7 =>
      'Додаток запитує дозвіл REQUEST_INSTALL_PACKAGES. Для більшості додатків це:';

  @override
  String get question7Option1 => 'Необхідно для нормальної роботи';

  @override
  String get question7Option2 =>
      'Критичний червоний прапорець, що вказує на потенційне шкідливе ПЗ-дроппер';

  @override
  String get question7Option3 => 'Потрібно для оновлень додатку';

  @override
  String get question7Option4 => 'Стандартно для всіх Android додатків';

  @override
  String get question7Explanation =>
      'Дозвіл REQUEST_INSTALL_PACKAGES дозволяє додаткам встановлювати інші пакети. Це рідко потрібно і є великим червоним прапорцем для потенційного шкідливого ПЗ-дроппера, яке встановлює додаткові шкідливі додатки.';

  @override
  String get question7Reference =>
      'Посібник з червоних прапорців - Зловживання потоком встановлення';

  @override
  String get question8 =>
      'Що ви повинні зробити, якщо функціональність додатку не відповідає його запитаним дозволам?';

  @override
  String get question8Option1 =>
      'Встановити все одно - дозволи можуть бути для майбутніх функцій';

  @override
  String get question8Option2 =>
      'Позначити для ручної перевірки та розслідувати далі';

  @override
  String get question8Option3 =>
      'Перевірити відгуки користувачів, щоб побачити, чи були у інших проблеми';

  @override
  String get question8Option4 => 'Зв\'язатися з розробником для уточнення';

  @override
  String get question8Explanation =>
      'Невідповідність дозволів є великим червоним прапорцем і завжди повинна запускати ручну перевірку. Додатки повинні запитувати тільки ті дозволи, які безпосередньо пов\'язані з їх заявленою функціональністю. Це поширена техніка, яку використовують шкідливі додатки.';

  @override
  String get question8Reference =>
      'Посібник з червоних прапорців - Аналіз невідповідності дозволів';

  @override
  String get realExample => 'Реальний приклад';

  @override
  String get source => 'Джерело';

  @override
  String get auditIndicators => 'Індикатори аудиту';

  @override
  String get protectionRecommendations => 'Рекомендації з захисту';

  @override
  String get instructorResources => 'Ресурси для викладачів';

  @override
  String get instructorDescription =>
      'Цей розділ надає освітні матеріали, сценарії вправ та шаблони для навчання аудиту безпеки мобільних додатків.';

  @override
  String get exerciseScenarios => 'Сценарії вправ';

  @override
  String get quickReferenceMaterials => 'Швидкі довідкові матеріали';

  @override
  String get teachingTips => 'Поради для викладання';

  @override
  String get teachingTipsDescription =>
      'Найкращі практики для навчання аудиту безпеки мобільних додатків:';

  @override
  String get teachingTip1 =>
      'Почніть з базового аналізу дозволів перед переходом до розширених технік';

  @override
  String get teachingTip2 =>
      'Використовуйте реальні приклади та кейси для ілюстрації концепцій';

  @override
  String get teachingTip3 =>
      'Заохочуйте студентів думати як атакуючі, щоб зрозуміти мотивації';

  @override
  String get teachingTip4 =>
      'Практикуйтеся з прикладами як легітимних, так і шкідливих додатків';

  @override
  String get teachingTip5 =>
      'Підкреслюйте важливість контексту в аналізі безпеки';

  @override
  String get teachingTip6 =>
      'Використовуйте функцію вікторини для закріплення цілей навчання';

  @override
  String get teachingTip7 =>
      'Обговорюйте етичні аспекти та відповідальне розкриття';

  @override
  String get scenario1 => 'Сценарій 1: Статичний огляд APK';

  @override
  String get scenario1Subtitle => 'Аналіз маніфесту та ресурсів';

  @override
  String get scenario1Description =>
      'Студенти аналізують симульований маніфест APK та ресурси для виявлення підозрілих дозволів, активностей та ресурсів. Фокус на невідповідності дозволів та індикаторах обфускації.';

  @override
  String get scenario2 => 'Сценарій 2: Огляд магазину додатків';

  @override
  String get scenario2Subtitle => 'Аналіз сторінки магазину та скріншотів';

  @override
  String get scenario2Description =>
      'Студенти переглядають симульовані сторінки магазину додатків, описи та скріншоти для виявлення червоних прапорців у маркетингових матеріалах та контенті для користувачів.';

  @override
  String get scenario3 => 'Сценарій 3: Звіт про оцінку ризиків';

  @override
  String get scenario3Subtitle => 'Комплексний аналіз безпеки';

  @override
  String get scenario3Description =>
      'Студенти створюють детальні звіти про оцінку безпеки з пріоритизацією ризиків, збором доказів та рекомендаціями щодо виправлення.';

  @override
  String get auditChecklist => 'Чек-лист аудиту';

  @override
  String get auditChecklistDescription =>
      'Комплексний чек-лист для аудиту безпеки мобільних додатків';

  @override
  String get permissionAnalysisGuide => 'Посібник з аналізу дозволів';

  @override
  String get permissionAnalysisGuideDescription =>
      'Детальний посібник для аналізу дозволів Android';

  @override
  String get redFlagsSummary => 'Підсумок червоних прапорців';

  @override
  String get redFlagsSummaryDescription =>
      'Швидка довідка по поширеним червоним прапорцям безпеки';

  @override
  String get downloadManifestExample => 'Завантажити приклад маніфесту';

  @override
  String get downloadStoreExamples => 'Завантажити приклади магазину';

  @override
  String get downloadReportTemplate => 'Завантажити шаблон звіту';

  @override
  String get developerInformationMissing =>
      'Інформація про розробника відсутня або неповна';

  @override
  String get normalPermissions => 'Звичайні дозволи';

  @override
  String get smsAccess => 'Доступ до SMS';

  @override
  String get smsAccessDescription =>
      'Дозволяє додатку читати та надсилати SMS повідомлення.';

  @override
  String get installPackages => 'Встановлення пакетів';

  @override
  String get installPackagesDescription =>
      'Дозволяє додатку встановлювати інші додатки.';

  @override
  String get cameraAccess => 'Доступ до камери';

  @override
  String get cameraAccessDescription =>
      'Дозволяє додатку робити фотографії та записувати відео.';

  @override
  String get contactsAccess => 'Доступ до контактів';

  @override
  String get contactsAccessDescription =>
      'Дозволяє додатку читати ваші контакти.';

  @override
  String get locationAccess => 'Доступ до місцезнаходження';

  @override
  String get locationAccessDescription =>
      'Дозволяє додатку отримувати доступ до місцезнаходження вашого пристрою.';

  @override
  String get storageAccess => 'Доступ до сховища';

  @override
  String get storageAccessDescription =>
      'Дозволяє додатку читати та записувати в сховище вашого пристрою.';

  @override
  String get internetAccess => 'Доступ до інтернету';

  @override
  String get internetAccessDescription =>
      'Дозволяє додатку відкривати мережеві сокети.';

  @override
  String get networkStateAccess => 'Доступ до стану мережі';

  @override
  String get networkStateAccessDescription =>
      'Дозволяє додатку переглядати інформацію про мережеве з\'єднання.';

  @override
  String get wakeLock => 'Блокування сну';

  @override
  String get wakeLockDescription =>
      'Дозволяє додатку запобігати переходу пристрою в режим сну.';
}
