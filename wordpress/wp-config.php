<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'mms' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'mms_admin' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', 'wordpress1' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '-;:_g=etKY/6WSUtQgVZ6IcX]m<w(YD5!,uwOO`swQL%8x#i /~aLNKeoLh9:6I<' );
define( 'SECURE_AUTH_KEY',  '104x7GR#a3{S=NU:VMoz|$Zv~pZx{v,57#[,}lev2>vZN92E1Oea161suwHq|0oA' );
define( 'LOGGED_IN_KEY',    '}B <Csvn%5bCe{OHu9wPki.Tg!<#/o`q:_[i?q8|J9X.MLL$0@id[|.cN32s0qy/' );
define( 'NONCE_KEY',        'q`*1Rtl/O^frZ==INc</?n5^U~P!j$yV-27?AgqhN->vXvrVfX+n4re!%4kMwt<l' );
define( 'AUTH_SALT',        'B7*(wc51m8;gjN~`[}pCy* Rmg|Cgfp+wYoSvvnM([JfXG;b>wcJVUSm]8Yx[.KG' );
define( 'SECURE_AUTH_SALT', 'YxCWnwt!z.nNmKaliLtAl.1Z:(3hGBzVvs%{-[ULzC5@/dK+TQ&Zv^oLIP0)|e,E' );
define( 'LOGGED_IN_SALT',   '7<&>Mec4kOro{K8[8{V.U+Gkf-gc)Z].xY9[I}i=?^y/7 c}H0$.{Qhv.3}Aqv&T' );
define( 'NONCE_SALT',       'Z5@/Y0eh]!Y#*QNOecNK@#8A6HY|t%y<ievmE)]p( ;$lcf96f$lplflDuM7(yfL' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
