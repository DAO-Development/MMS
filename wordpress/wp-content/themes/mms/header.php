<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package MMS
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	  <!-- Link Swiper's CSS -->
  	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">
	

	<header id="masthead" class="site-header">
		<div class="container">
			<div class="logo">
				<!--<?php the_custom_logo(); ?> 
				<a href='<?php bloginfo('url') ?>'><img src="assets/images/MMS.jpg" width="80" height="80" alt="logo"></a>-->
			</div>

			<?php wp_nav_menu( [
				'theme_location'  => 'top',
				'menu'            => 'Меню в шапке', 
				'container'       => 'nav',
				'container_class' => 'menu',
				'menu_class'      => '', 
				'before'          => '',
				'after'           => '',
				'link_before'     => '',
				'link_after'      => '',
				'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
				'depth'           => 0,
				'walker'          => '',
			] ); ?>
		</div>
		
	</header><!-- #masthead -->
