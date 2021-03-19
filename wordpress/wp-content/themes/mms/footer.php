<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package MMS
 */

?>

		<footer>
			<section class="contacts">
				<div class="container">
					<div class="social">
						<h4>Мы в социальных сетях:</h4>
						<a class="whatsapp social-link" href=""></a>
						<a class="vk social-link" href=""></a>
						<a class="instagram social-link" href=""></a>
						<a class="facebook social-link" href=""></a>
						<a class="telegram social-link" href=""></a>
						<a class="youtube social-link" href=""></a>	
					</div>
					<div class="phone">
						<h4>Наш контактный телефон</h4>
						<p class="number">+7 (926) 729 49 42</p>
					</div>
				</div>
			</section>
			<hr>
			<section class="main-footer">
				<div class="container">
					<div class="logo"></div>
					 <div class="menu"> 
						<h4 class="menu-title">Наши услуги</h4>
						<?php wp_nav_menu( [
						'theme_location'  => 'footer-services',
						'menu'            => 'Меню в подвале Услуги', 
						'container'       => 'nav',
						'container_class' => 'menu',
						'menu_class'      => '',
						'items_wrap'      => '<ul>%3$s</ul>',
						'depth'           => 0,
						] ); ?>
					</div>
					<div class="menu">
						<h4 class="menu-title">Информация</h4>
						<?php wp_nav_menu( [
						'theme_location'  => 'footer-info',
						'menu'            => 'Меню в подвале Информация', 
						'container'       => 'nav',
						'container_class' => 'menu',
						'menu_class'      => '',
						'items_wrap'      => '<ul>%3$s</ul>',
						'depth'           => 0,
						] ); ?>
					</div>
					<div class="menu">
						<h4 class="menu-title">Компания</h4>
						<?php wp_nav_menu( [
						'theme_location'  => 'footer-company',
						'menu'            => 'Меню в подвале Компания', 
						'container'       => 'nav',
						'container_class' => 'menu',
						'menu_class'      => '',
						'items_wrap'      => '<ul>%3$s</ul>',
						'depth'           => 0,
						] ); ?>
						<p>Мы работаем пн.-вс.: 10:00-22:00</p>
					</div>				
				</div>
			</section>
			<hr>
		</footer>
	</div><!-- #page -->

<?php wp_footer(); ?>
</body>
</html>
