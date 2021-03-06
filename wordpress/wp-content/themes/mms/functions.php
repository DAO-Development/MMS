<?php
/**
 * MMS functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package MMS
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

if ( ! function_exists( 'mms_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function mms_setup() {

		add_theme_support(
			'custom-logo',
			array(
				'height'               => 80,
				'width'                => 80,
				'flex-width'           => true,
				'flex-height'          => true,
				'unlink-homepage-logo' => true,
			)
		);
		
		add_theme_support('post-thumbnails', array('post', 'promotions', 'services', 'specialists', 'feedback', 'instagram', 'offices'));
		add_image_size('promotions', 350, 490, false);
		add_image_size('specialists', 294, 184, false);
		add_image_size('instagram', 258, 432, false);

	}
endif;


add_action( 'after_setup_theme', 'mms_setup' );
add_action( 'after_setup_theme', 'theme_register_nav_menu' );
add_action( 'wp_enqueue_scripts', 'mms_scripts' );

add_theme_support( 'custom-logo' );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
/*function mms_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'mms' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'mms' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'mms_widgets_init' );*/

function mms_scripts() {
	wp_enqueue_style( 'mms-style', get_stylesheet_uri()/*, array(), _S_VERSION */);
	wp_enqueue_style('slick-style', get_template_directory_uri(), '/slick.css');
	// wp_style_add_data( 'mms-style', 'rtl', 'replace' );

	// wp_enqueue_script( 'mms-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );

	//if ( is_singular() && comments_open() && get_option( 'thread_comments' ) //) {
	//	wp_enqueue_script( 'comment-reply' );
	//}
}

function theme_register_nav_menu() {
	register_nav_menu( 'top', '???????? ?? ??????????' );
	register_nav_menu( 'footer-services', '???????? ?? ?????????????? ????????????' );
	register_nav_menu( 'footer-info', '???????? ?? ?????????????? ????????????????????' );
	register_nav_menu( 'footer-company', '???????? ?? ?????????????? ????????????????' );
}

/*?????????????????????? ???????????? ???????? ???????????? ?????? ??????????*/
add_action( 'init', 'register_post_types' );
function register_post_types(){
	register_post_type( 'promotions', [
		'label'  => null,
		'labels' => [
			'name'               => '??????????', // ???????????????? ???????????????? ?????? ???????? ????????????
			'singular_name'      => '??????????', // ???????????????? ?????? ?????????? ???????????? ?????????? ????????
			'add_new'            => '???????????????? ??????????', // ?????? ???????????????????? ?????????? ????????????
			'add_new_item'       => '???????????????????? ??????????', // ?????????????????? ?? ?????????? ?????????????????????? ???????????? ?? ??????????-????????????.
			'edit_item'          => '???????????????????????????? ??????????', // ?????? ???????????????????????????? ???????? ????????????
			'new_item'           => '?????????? ??????????', // ?????????? ?????????? ????????????
			'view_item'          => '???????????????? ??????????', // ?????? ?????????????????? ???????????? ?????????? ????????.
			'search_items'       => '???????????? ??????????', // ?????? ???????????? ???? ???????? ?????????? ????????????
			'not_found'          => '???? ??????????????', // ???????? ?? ???????????????????? ???????????? ???????????? ???? ???????? ??????????????
			'not_found_in_trash' => '???? ?????????????? ?? ??????????????', // ???????? ???? ???????? ?????????????? ?? ??????????????
			'parent_item_colon'  => '', // ?????? ?????????????????? (?? ?????????????????????? ??????????)
			'menu_name'          => '??????????', // ???????????????? ????????
		],
		'description'         => '?????????? ?? ?????????????????????? Mio Massage Studio',
		'public'              => true,
		// 'publicly_queryable'  => null, // ?????????????? ???? public
		// 'exclude_from_search' => null, // ?????????????? ???? public
		// 'show_ui'             => null, // ?????????????? ???? public
		// 'show_in_nav_menus'   => null, // ?????????????? ???? public
		'show_in_menu'        => true, // ???????????????????? ???? ?? ???????? ????????????
		// 'show_in_admin_bar'   => null, // ?????????????? ???? show_in_menu
		'show_in_rest'        => true, // ???????????????? ?? REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 4,
		'menu_icon'           => null,
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // ???????????? ???????????????????????????? ???????? ?????? ?????????? ???????? ????????????
		//'map_meta_cap'      => null, // ???????????? true ?????????? ???????????????? ?????????????????? ???????????????????? ?????????????????????? ????????
		'hierarchical'        => false,
		'supports'            => [ 'title', 'editor', 'thumbnail' ], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => [],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	] );
	register_post_type( 'services', [
		'label'  => null,
		'labels' => [
			'name'               => '????????????', // ???????????????? ???????????????? ?????? ???????? ????????????
			'singular_name'      => '????????????', // ???????????????? ?????? ?????????? ???????????? ?????????? ????????
			'add_new'            => '???????????????? ????????????', // ?????? ???????????????????? ?????????? ????????????
			'add_new_item'       => '???????????????????? ????????????', // ?????????????????? ?? ?????????? ?????????????????????? ???????????? ?? ??????????-????????????.
			'edit_item'          => '???????????????????????????? ????????????', // ?????? ???????????????????????????? ???????? ????????????
			'new_item'           => '?????????? ????????????', // ?????????? ?????????? ????????????
			'view_item'          => '???????????????? ????????????', // ?????? ?????????????????? ???????????? ?????????? ????????.
			'search_items'       => '???????????? ????????????', // ?????? ???????????? ???? ???????? ?????????? ????????????
			'not_found'          => '???? ??????????????', // ???????? ?? ???????????????????? ???????????? ???????????? ???? ???????? ??????????????
			'not_found_in_trash' => '???? ?????????????? ?? ??????????????', // ???????? ???? ???????? ?????????????? ?? ??????????????
			'parent_item_colon'  => '', // ?????? ?????????????????? (?? ?????????????????????? ??????????)
			'menu_name'          => '????????????', // ???????????????? ????????
		],
		'description'         => '???????????? Mio Massage Studio',
		'public'              => true,
		// 'publicly_queryable'  => null, // ?????????????? ???? public
		// 'exclude_from_search' => null, // ?????????????? ???? public
		// 'show_ui'             => null, // ?????????????? ???? public
		// 'show_in_nav_menus'   => null, // ?????????????? ???? public
		'show_in_menu'        => true, // ???????????????????? ???? ?? ???????? ????????????
		// 'show_in_admin_bar'   => null, // ?????????????? ???? show_in_menu
		'show_in_rest'        => true, // ???????????????? ?? REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 5,
		'menu_icon'           => null,
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // ???????????? ???????????????????????????? ???????? ?????? ?????????? ???????? ????????????
		//'map_meta_cap'      => null, // ???????????? true ?????????? ???????????????? ?????????????????? ???????????????????? ?????????????????????? ????????
		'hierarchical'        => false,
		'supports'            => [ 'title', 'editor', 'thumbnail', 'custom-fields' ], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => [],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	] );

	register_post_type( 'specialists', [
		'label'  => null,
		'labels' => [
			'name'               => '??????????????????????', // ???????????????? ???????????????? ?????? ???????? ????????????
			'singular_name'      => '????????????????????', // ???????????????? ?????? ?????????? ???????????? ?????????? ????????
			'add_new'            => '???????????????? ??????????????????????', // ?????? ???????????????????? ?????????? ????????????
			'add_new_item'       => '???????????????????? ??????????????????????', // ?????????????????? ?? ?????????? ?????????????????????? ???????????? ?? ??????????-????????????.
			'edit_item'          => '???????????????????????????? ??????????????????????', // ?????? ???????????????????????????? ???????? ????????????
			'new_item'           => '?????????? ????????????????????', // ?????????? ?????????? ????????????
			'view_item'          => '???????????????? ??????????????????????', // ?????? ?????????????????? ???????????? ?????????? ????????.
			'search_items'       => '???????????? ????????????????????????', // ?????? ???????????? ???? ???????? ?????????? ????????????
			'not_found'          => '???? ??????????????', // ???????? ?? ???????????????????? ???????????? ???????????? ???? ???????? ??????????????
			'not_found_in_trash' => '???? ?????????????? ?? ??????????????', // ???????? ???? ???????? ?????????????? ?? ??????????????
			'parent_item_colon'  => '', // ?????? ?????????????????? (?? ?????????????????????? ??????????)
			'menu_name'          => '??????????????????????', // ???????????????? ????????
		],
		'description'         => '?????????????????????? Mio Massage Studio',
		'public'              => true,
		// 'publicly_queryable'  => null, // ?????????????? ???? public
		// 'exclude_from_search' => null, // ?????????????? ???? public
		// 'show_ui'             => null, // ?????????????? ???? public
		// 'show_in_nav_menus'   => null, // ?????????????? ???? public
		'show_in_menu'        => true, // ???????????????????? ???? ?? ???????? ????????????
		// 'show_in_admin_bar'   => null, // ?????????????? ???? show_in_menu
		'show_in_rest'        => true, // ???????????????? ?? REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 6,
		'menu_icon'           => 'dashicons-buddicons-buddypress-logo',
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // ???????????? ???????????????????????????? ???????? ?????? ?????????? ???????? ????????????
		//'map_meta_cap'      => null, // ???????????? true ?????????? ???????????????? ?????????????????? ???????????????????? ?????????????????????? ????????
		'hierarchical'        => false,
		'supports'            => [ 'title', 'editor', 'thumbnail', 'custom-fields'], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => [],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	] );
	register_post_type( 'feedback', [
		'label'  => null,
		'labels' => [
			'name'               => '????????????', // ???????????????? ???????????????? ?????? ???????? ????????????
			'singular_name'      => '??????????', // ???????????????? ?????? ?????????? ???????????? ?????????? ????????
			'add_new'            => '???????????????? ??????????', // ?????? ???????????????????? ?????????? ????????????
			'add_new_item'       => '???????????????????? ????????????', // ?????????????????? ?? ?????????? ?????????????????????? ???????????? ?? ??????????-????????????.
			'edit_item'          => '???????????????????????????? ????????????', // ?????? ???????????????????????????? ???????? ????????????
			'new_item'           => '?????????? ??????????', // ?????????? ?????????? ????????????
			'view_item'          => '???????????????? ??????????', // ?????? ?????????????????? ???????????? ?????????? ????????.
			'search_items'       => '???????????? ????????????', // ?????? ???????????? ???? ???????? ?????????? ????????????
			'not_found'          => '???? ??????????????', // ???????? ?? ???????????????????? ???????????? ???????????? ???? ???????? ??????????????
			'not_found_in_trash' => '???? ?????????????? ?? ??????????????', // ???????? ???? ???????? ?????????????? ?? ??????????????
			'parent_item_colon'  => '', // ?????? ?????????????????? (?? ?????????????????????? ??????????)
			'menu_name'          => '????????????', // ???????????????? ????????
		],
		'description'         => '???????????? ?? Mio Massage Studio',
		'public'              => true,
		// 'publicly_queryable'  => null, // ?????????????? ???? public
		// 'exclude_from_search' => null, // ?????????????? ???? public
		// 'show_ui'             => null, // ?????????????? ???? public
		// 'show_in_nav_menus'   => null, // ?????????????? ???? public
		'show_in_menu'        => true, // ???????????????????? ???? ?? ???????? ????????????
		// 'show_in_admin_bar'   => null, // ?????????????? ???? show_in_menu
		'show_in_rest'        => true, // ???????????????? ?? REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 25,
		'menu_icon'           => 'dashicons-testimonial',
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // ???????????? ???????????????????????????? ???????? ?????? ?????????? ???????? ????????????
		//'map_meta_cap'      => null, // ???????????? true ?????????? ???????????????? ?????????????????? ???????????????????? ?????????????????????? ????????
		'hierarchical'        => false,
		'supports'            => [ 'title', 'editor', 'thumbnail', 'custom-fields'], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => [],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	] );
	register_post_type('instagram', [
		'label'  => null,
		'labels' => [
			'name'               => '??????????????????', // ???????????????? ???????????????? ?????? ???????? ????????????
			'singular_name'      => '??????????????????', // ???????????????? ?????? ?????????? ???????????? ?????????? ????????
			'add_new'            => '???????????????? ???????? ??????????????????', // ?????? ???????????????????? ?????????? ????????????
			'add_new_item'       => '???????????????????? ???????? ??????????????????', // ?????????????????? ?? ?????????? ?????????????????????? ???????????? ?? ??????????-????????????.
			'edit_item'          => '???????????????????????????? ???????? ??????????????????', // ?????? ???????????????????????????? ???????? ????????????
			'new_item'           => '?????????? ???????? ??????????????????', // ?????????? ?????????? ????????????
			'view_item'          => '???????????????? ???????? ??????????????????', // ?????? ?????????????????? ???????????? ?????????? ????????.
			'search_items'       => '???????????? ?????? ??????????????????', // ?????? ???????????? ???? ???????? ?????????? ????????????
			'not_found'          => '???? ??????????????', // ???????? ?? ???????????????????? ???????????? ???????????? ???? ???????? ??????????????
			'not_found_in_trash' => '???? ?????????????? ?? ??????????????', // ???????? ???? ???????? ?????????????? ?? ??????????????
			'parent_item_colon'  => '', // ?????? ?????????????????? (?? ?????????????????????? ??????????)
			'menu_name'          => 'Instagram',
		],
		'description'         => '???????? ???? ???????????????????? Mio Massage Studio',
		'public'              => true,
		// 'publicly_queryable'  => null, // ?????????????? ???? public
		// 'exclude_from_search' => null, // ?????????????? ???? public
		// 'show_ui'             => null, // ?????????????? ???? public
		// 'show_in_nav_menus'   => null, // ?????????????? ???? public
		'show_in_menu'        => true, // ???????????????????? ???? ?? ???????? ????????????
		// 'show_in_admin_bar'   => null, // ?????????????? ???? show_in_menu
		'show_in_rest'        => true, // ???????????????? ?? REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 26,
		'menu_icon'           => 'dashicons-instagram',
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // ???????????? ???????????????????????????? ???????? ?????? ?????????? ???????? ????????????
		//'map_meta_cap'      => null, // ???????????? true ?????????? ???????????????? ?????????????????? ???????????????????? ?????????????????????? ????????
		'hierarchical'        => false,
		'supports'            => ['title', 'thumbnail'], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => [],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	] );
	register_post_type('offices', [
		'label'  => null,
		'labels' => [
			'name'               => '??????????', // ???????????????? ???????????????? ?????? ???????? ????????????
			'singular_name'      => '????????', // ???????????????? ?????? ?????????? ???????????? ?????????? ????????
			'add_new'            => '???????????????? ????????', // ?????? ???????????????????? ?????????? ????????????
			'add_new_item'       => '???????????????????? ??????????', // ?????????????????? ?? ?????????? ?????????????????????? ???????????? ?? ??????????-????????????.
			'edit_item'          => '???????????????????????????? ??????????', // ?????? ???????????????????????????? ???????? ????????????
			'new_item'           => '?????????? ????????', // ?????????? ?????????? ????????????
			'view_item'          => '???????????????? ????????', // ?????? ?????????????????? ???????????? ?????????? ????????.
			'search_items'       => '???????????? ??????????', // ?????? ???????????? ???? ???????? ?????????? ????????????
			'not_found'          => '???? ??????????????', // ???????? ?? ???????????????????? ???????????? ???????????? ???? ???????? ??????????????
			'not_found_in_trash' => '???? ?????????????? ?? ??????????????', // ???????? ???? ???????? ?????????????? ?? ??????????????
			'parent_item_colon'  => '', // ?????? ?????????????????? (?? ?????????????????????? ??????????)
			'menu_name'          => '??????????',
		],
		'description'         => '?????????? Mio Massage Studio',
		'public'              => true,
		// 'publicly_queryable'  => null, // ?????????????? ???? public
		// 'exclude_from_search' => null, // ?????????????? ???? public
		// 'show_ui'             => null, // ?????????????? ???? public
		// 'show_in_nav_menus'   => null, // ?????????????? ???? public
		'show_in_menu'        => true, // ???????????????????? ???? ?? ???????? ????????????
		// 'show_in_admin_bar'   => null, // ?????????????? ???? show_in_menu
		'show_in_rest'        => true, // ???????????????? ?? REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 26,
		'menu_icon'           => 'dashicons-admin-multisite',
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // ???????????? ???????????????????????????? ???????? ?????? ?????????? ???????? ????????????
		//'map_meta_cap'      => null, // ???????????? true ?????????? ???????????????? ?????????????????? ???????????????????? ?????????????????????? ????????
		'hierarchical'        => false,
		'supports'            => ['title', 'thumbnail', 'custom-field'], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => [],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	] );
}


/**
 * Implement the Custom Header feature.
 */
//require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
//require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
//require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
//require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
//if ( defined( 'JETPACK__VERSION' ) ) {
//	require get_template_directory() . '/inc/jetpack.php';
//}

