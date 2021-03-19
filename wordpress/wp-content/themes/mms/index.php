<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package MMS
 */

get_header();
?>

	<main id="primary" class="site-main">

		<section class="promo">
			<div class="container">
				<h1 class="promo-title"><?php bloginfo('name'); ?></h1>
				<p class="description"><?php bloginfo('description'); ?></p>
				<a class="btn-pink" href="ссылка_на_запись">Записаться на сеанс</a>
			</div>
		</section>

		<section class="information">
				<div>
					<img class="inf-icon" src="wp-content/themes/mms/assets/images/geo.png">
					<div class="inf-text">
						<p>Адрес</p>
						<p>Москва ул. Миклухо-Маклая, 18/1</p>
					</div>
					
				</div>
				<div>
					<img class="inf-icon" src="wp-content/themes/mms/assets/images/time.png">
					<div class="inf-text">
						<p>Время работы</p>
						<p>пн.-вс.: 10:00-22:00</p>		
					</div>			
				</div>
				<div>
					<img class="inf-icon" src="wp-content/themes/mms/assets/images/phone.png">
						
					<img class="phone-icon" src="wp-content/themes/mms/assets/images/whatsapp-white.png">
					<img class="phone-icon" src="wp-content/themes/mms/assets/images/telegram-white.png">		

					<div class="inf-text">
						<p>Наш телефон</p>
						<p>+7 (926) 729 49 42</p>
					</div>
				</div>
		</section>

		<section class="promotions-block" id="promotions-block">
			<div class="container">
				<h2>Акции</h2>
				<div class="promotions">
					<?php // параметры по умолчанию
					$posts = get_posts( array(
						'numberposts' => 3,
						'category'    => 0,
						'orderby'     => 'date',
						'order'       => 'ASC',
						'include'     => array(),
						'exclude'     => array(),
						'meta_key'    => '',
						'meta_value'  =>'',
						'post_type'   => 'promotions',
						'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
					) );

					foreach( $posts as $post ){
						setup_postdata($post);?>
							<div class="single-promotion">
								<?php the_post_thumbnail('promotions'); ?>
								<?php if (strcmp(get_the_title(), "Подарочный сертификат") == 0) : ?>
									<a class="promo-btn" href="#">Узнать подробнее</a>
								<?php endif; ?>
							</div>
					    <?php
					} ?>
				</div>
			</div>
		</section>

		<section class="services-block" id="services-block">
			<div class="container">
				<h2>Наши услуги</h2>
				<div class="services">
					<?php // параметры по умолчанию
					$posts = get_posts( array(
						'numberposts' => 0,
						'category'    => 0,
						'orderby'     => 'date',
						'order'       => 'ASC',
						'include'     => array(),
						'exclude'     => array(),
						'meta_key'    => '',
						'meta_value'  =>'',
						'post_type'   => 'services',
						'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
					) );

					foreach( $posts as $post ){
						setup_postdata($post);?>
							<div class="single-service">
								<?php the_post_thumbnail('services'); ?>
								<h5><?php the_title(); ?></h5>
								<?php the_content();?>

								<div class="cost-table">
									<?php if (get_field('max_cost') != null) : ?>
										<p class="title title-cost">Стоимость</p>
										<?php if (get_field('min_cost') != null) : ?>
											<p class="cost value"><?php the_field('min_cost')?>-<?php the_field('max_cost')?>₽</p>
										<?php else: ?>
											<p class="cost value"><?php the_field('max_cost')?>₽</p>
										<?php endif;?>
									<?php endif; ?>

									<?php if (get_field('max_duration') != null) : ?>
										<p class="title title-duration">Длительность</p>
										<?php if (get_field('min_duration') != null) : ?>
											<p class="duration value"><?php the_field('min_duration')?>-<?php the_field('max_duration')?> минут</p>
										<?php else: ?>
											<p class="duration value"><?php the_field('max_duration')?> минут</p>
										<?php endif;?>
									<?php endif; ?>

									<?php if (get_field('cost_1_area') != null) : ?>
										<p class="title title-cost-1-area">Стоимость 1 зоны</p>
											<p class="cost-1-area value"><?php the_field('cost_1_area')?>₽</p>
									<?php endif; ?>

									<?php if (get_field('cost_2_area') != null) : ?>
										<p class="title title-cost-2-area">Стоимость 2 зон</p>
											<p class="cost-2-area value"><?php the_field('cost_2_area')?>₽</p>
									<?php endif; ?>

									<?php if (get_field('cost_3_area') != null) : ?>
										<p class="title title-cost-3-area">Стоимость 3 зон</p>
											<p class="cost-3-area value"><?php the_field('cost_3_area')?>₽</p>
									<?php endif; ?>
								</div>

								<a class="btn-pink" href="ссылка_на_запись">Записаться</a>
							</div>
					    <?php
					} ?>
				</div>
			</div>			
		</section>

		<section class="about" id="about">
			<div class="container">
				<h2>Наша история</h2>
				<div class="image"></div>
				<div class="text">
					<p>   Здравствуйте, меня зовут Присяжнюк Иван. За моей спиной более 10 лет опыта работы массажистом. И я хочу поделиться с вами тем, с чего началась моя история.</p>
					<p>   А началась она со спорта. С раннего детства я профессионально занимался тяжелой атлетикой и думал, что в этом и есть смысл моей жизнь. Но однажды, при случайных стечениях обстоятельств, на соревнованиях я получил тяжелую травму спины. После чего следовал долгий период восстановления, физиотерапии, массажа, ЛФК. Меня увлекла эта тема. И я начал изучать анатомию человека и процесс восстановления после травм</p>
					<p>   Я параллельно учился в спортивном колледже и медицинском. В вечернее время я посещал курсы массажа, практиковался на родных и близких. Но по-настоящему моя карьера массажиста началась в армии. На территории спортзала я смастерил кушетку и делал послетренировочный восстановительный массаж за конфеты и сладости, которых так не хватало в армии.</p>
					<p>   В 2010 году я демобилизовался, переехал в Москву и поступил в спортивный университет. Я успел поработать в ФОК Барвиха и Фитнес Мании. А потом мы с партнерами открыли сеть студий «Лаборатории Массажа», где я сам лично занимался отбором и обучением персонала.</p>
					<p>   Я осознал, что именно массаж и помощь людям в обретении здорового тела – дело всей моей жизни. Наша задача – сделать вас здоровыми и красивыми. Для этого вам не придётся изнурять и мучать себя ежедневными тренировками, занимайтесь только тем, что приносит вам удовольствие. А мы поможем приобрести здоровое, упругое и красивое тело без ущерба вашему здоровью.</p>
				</div>
			</div>
		</section>

		<section class="specialists-block" id="specialists-block">
			<div class="container">
				<h2>Наши специалисты</h2>
				<div class="swiper-container-specialists">
					<div class="specialists swiper-wrapper swiper-wrapper-specialists">
						<?php // параметры по умолчанию
						$posts = get_posts( array(
							'numberposts' => 0,
							'category'    => 0,
							'orderby'     => 'date',
							'order'       => 'ASC',
							'include'     => array(),
							'exclude'     => array(),
							'meta_key'    => '',
							'meta_value'  =>'',
							'post_type'   => 'specialists',
							'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
						) );

						foreach( $posts as $post ){
							setup_postdata($post);?>
								<div class="single-specialist swiper-slide">
									<div class="image"><?php the_post_thumbnail('specialists'); ?></div>
									<p class="experience">Стаж с <?php the_field('experience') ?></p>
									<div class="name">
										<h5><?php the_field('last_name') ?></h5>
										<h5><?php the_field('first_name') ?></h5>
										<h5><?php the_field('middle_name') ?></h5>
									</div>
									<p class="description"><?php the_field('description') ?></p>
									<a class="btn-yellow">Записаться</a>
								</div>
						    <?php
						} ?>
					</div>
			    	<div class="swiper-button-next"></div>
			    	<div class="swiper-button-prev"></div>
				</div>
			</div>
		     

			    <!-- Initialize Swiper -->
			    <script>
			    if (window.screen.width > 600){
			      var swiper = new Swiper(".swiper-container-specialists", {
			        slidesPerView: 3,
			        spaceBetween: 70,
			        navigation: {
			          nextEl: ".swiper-button-next",
			          prevEl: ".swiper-button-prev"
			        },
			        mousewheel: true,
			        keyboard: true
			      });
			  	} else {
			  	  var swiper = new Swiper(".swiper-container-specialists", {
			        slidesPerView: 1,
			        spaceBetween: 40,
			        navigation: {
			          nextEl: ".swiper-button-next",
			          prevEl: ".swiper-button-prev"
			        },
			        mousewheel: true,
			        keyboard: true
			      });
			  	}
			    </script>
		</section>

		<section class="on-departure" id="on-departure">
			<div class="container">
				<h2>Массаж на выезд</h2>
				<div class="content">
					<div class="text">
						<p>Студия массажа «Mio Massage Studio» предлагает услуги массажиста  с выездом на дом в Москве. К услугам клиентов —  индивидуальный подход и гарантированное качество массажа!</p>
						<p>Оставь заявку прямо сейчас!</p>
					</div>
					<div class="image"></div>
				</div>
				<a class="btn-pink" href="ссылка на запись">Оставить заявку</a>
			</div>
		</section>

		<section class="feedback-block">
			<div class="container">
				<h2>Отзывы о нас</h2>
				<a class="btn-pink" href="форма с отзывами">Оставьте свой отзыв</a>
				<div class="swiper-container-feedback swiper-container feedback-slider-container">
					<div class="feedback swiper-wrapper swipper-wrapper-feedback">
						<div class="single-feedback swiper-slide-feedback swiper-slide">
							<img src="wp-content/themes/mms/assets/images/phone.png" alt="message">
							<div class="text">
						        <p>В своём стремлении повысить качество жизни, они забывают, что понимание сути ресурсосберегающих технологий требует определения и уточнения новых предложений.</p>
						        <div class="name">Ольга Константинова</div>
						    </div>
						</div>
						<div class="single-feedback swiper-slide swiper-slide-feedback">
							<img src="wp-content/themes/mms/assets/images/phone.png" alt="message">
							<div class="text">
						        <p>В своём стремлении повысить качество жизни, они забывают, что понимание сути ресурсосберегающих технологий требует определения и уточнения новых предложений.</p>
						        <div class="name">Ольга Константинова</div>
						    </div>
						</div>
					</div>
					<!-- Add Pagination -->
    				<div class="swiper-pagination"></div>
				</div>
			</div>

 			<!-- Initialize Swiper -->
 			<script>
				var swiper = new Swiper('.swiper-container-feedback', {
					spaceBetween: 10,
			    	pagination: {
			        	el: '.swiper-pagination',
        				clickable: true,
          				renderBullet: function (index, className) {
            				return '<span class="' + className + '">' + '</span>';
          				},
			      	},
			    });
			</script>
		</section>

		<section class="offices" id="offices">
			<div class="container">
				<h2>Наши офисы</h2>
				<form>
					<input type="radio" name="tab" id="tab1">
					<label for="tab1">
						<h5>Невский проспект, 53</h5>
						<h5>ст. Горького</h5>
					</label>
					<input type="radio" checked name="tab" id="tab2">
					<label for="tab2">		
						<h5>Миклухо-Маклая, 18/1</h5>
						<h5>ст. Большевиков</h5>
					</label>
					<input type="radio" name="tab" id="tab3">
					<label for="tab3">
						<h5>Ленина, 2</h5>
						<h5>ст. Садовая</h5>
					</label>
					<div class="content-tab1 info-tab">
						<div class="image">
							<img src="wp-content/themes/mms/assets/images/map.png" alt="map">
						</div>
						<div class="office-info">
							<h5>Адрес: </h5>
							<p>Какой-то адрес </p>
							<h5>Телефон: </h5>
							<p>+7 (926) 729 49 42</p>
						</div>
						<div class="social">
							<h5>Социальные сети</h5>
							<div class="socials">
								<a class="whatsapp social-link" href=""></a>
								<a class="vk social-link" href=""></a>
								<a class="instagram social-link" href=""></a>
								<a class="facebook social-link" href=""></a>
								<a class="telegram social-link" href=""></a>
								<a class="youtube social-link" href=""></a>	
							</div>
						</div>
						<a href="" class="btn-yellow">Записаться</a>
					</div>
					<div class="content-tab2 info-tab">				
						<div class="image">
							<img src="wp-content/themes/mms/assets/images/map.png" alt="map">
						</div>
						<div class="office-info">
							<h5>Адрес: </h5>
							<p>Какой-то адрес </p>
							<h5>Телефон: </h5>
							<p>+7 (926) 729 49 42</p>
						</div>
						<div class="social">
							<h5>Социальные сети</h5>
							<div class="socials">
								<a class="whatsapp social-link" href=""></a>
								<a class="vk social-link" href=""></a>
								<a class="instagram social-link" href=""></a>
								<a class="facebook social-link" href=""></a>
								<a class="telegram social-link" href=""></a>
								<a class="youtube social-link" href=""></a>	
							</div>
						</div>
						<a href="" class="btn-yellow">Записаться</a>
					</div>
					<div class="content-tab3 info-tab">		
						<div class="image">
							<img src="wp-content/themes/mms/assets/images/map.png" alt="map">
						</div>
						<div class="office-info">
							<h5>Адрес: </h5>
							<p>Какой-то адрес </p>
							<h5>Телефон: </h5>
							<p>+7 (926) 729 49 42</p>
						</div>
						<div class="social">
							<h5>Социальные сети</h5>
							<div class="socials">
								<a class="whatsapp social-link" href=""></a>
								<a class="vk social-link" href=""></a>
								<a class="instagram social-link" href=""></a>
								<a class="facebook social-link" href=""></a>
								<a class="telegram social-link" href=""></a>
								<a class="youtube social-link" href=""></a>	
							</div>
						</div>
						<a href="" class="btn-yellow">Записаться</a>
					</div>
					
				</form>
			</div>
		</section>

		<section class="instagram">
			<div class="container">
				<h2>Наш INSTAGRAM</h2>
				<div class="swiper-container-ig swiper-container">
					<div class="ig swiper-wrapper swipper-wrapper-ig">
						<?php // параметры по умолчанию
						$posts = get_posts( array(
							'numberposts' => 0,
							'category'    => 0,
							'orderby'     => 'date',
							'order'       => 'ASC',
							'include'     => array(),
							'exclude'     => array(),
							'meta_key'    => '',
							'meta_value'  =>'',
							'post_type'   => 'instagram',
							'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
						) );

						foreach( $posts as $post ){
							setup_postdata($post);?>
						<div class="single-ig swiper-slide-ig swiper-slide">
							<div class="image"><?php the_post_thumbnail('instagram'); ?></div>
						</div>
						<?php
						} ?>
					</div>
					<!-- Add Pagination -->
    				<div class="swiper-pagination"></div>
				</div>
			</div>
						<!-- Initialize Swiper -->
			  <script>
			    var swiper = new Swiper('.swiper-container-ig', {
			      slidesPerView: 3,
			      spaceBetween: 30,
			      pagination: {
			        el: '.swiper-pagination',
			        clickable: true,
			      },
			    });
			  </script>
		</section>


	</main><!-- #main 	
	<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>-->

<?php get_footer();
