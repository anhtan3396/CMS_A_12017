<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'test');

/** MySQL database password */
define('DB_PASSWORD', '123456');

/** MySQL hostname */
define('DB_HOST', '192.168.100.41');


/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'YQq7Yey[q0*o9i#,&vKot3hDGP&~m~gqyY3<Dz8%SL0{;YYWTQjr QP_lmaWZw@m');
define('SECURE_AUTH_KEY',  '#; !Pc$Lr.?*]AK9T)f>PIyKPDv|[gb3%hh6)Ze!z<K ii=SU-oPkB>k RT1X!21');
define('LOGGED_IN_KEY',    'c[Ukd_(2R*p IZdH!}8){:h6MGReFJ||<v4)9^`${Q{)}jV>YMM8UqZLwX<zbFN{');
define('NONCE_KEY',        'Q2Hf$MZnlSf,+ti)^{Cu`>[%q_IgxNOV|Ah=sjn,lE`[#2.O%007+BU4Swu^pEN<');
define('AUTH_SALT',        'cpA8@;et$Es-.P<K3_]lvAK)rQzwbQNd}ddnOK4M. R*V7Kz&]pBbbu%<gc9_haQ');
define('SECURE_AUTH_SALT', ')%1z?$&pOdD6R>,B(ycRf)>S=4X_JQR0DvR3cC&Q6y%[o =d$Tz3bEEa{Az+s[&;');
define('LOGGED_IN_SALT',   'xu3M{zKnt#1v`$@&qE%bk*FSpD=P8A ::h<lqmB?&sVtvCG!9UO$a!.z)O&nJ*sV');
define('NONCE_SALT',       'a.YN3v2`>{)pa]3F*&~?m}Q[m:<e6%{(BdNoO8_02~ 5@W}GyoU#S@PF$`Mv*ND2');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
