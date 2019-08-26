<?php
/*
@package verso
  =================
  Single video post Template
  =================
*/
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

    <div class="entry-image">
  		<div class="entry-image-container">
            <?php if( verso_lite_get_embedded_media() ) : ?>
                <div class="embed-responsive embed-responsive-16by9">
                  <?php echo verso_lite_get_embedded_media( array('video', 'iframe') ); ?>
                </div>
            <?php endif; ?>
  		</div>
        <div class="entry-date text-center">
            <?php echo verso_lite_posted_date(); ?>
        </div>
  	</div>

    <div class="single-post-content-container">

        <header class="entry-header">
            <?php the_title( '<h1 class="entry-title">','</h1>' ) ?>
            <div class="entry-meta">
              <?php echo verso_lite_posted_meta(); ?>
            </div>
        </header>
        <div class="entry-content clearfix">

            <?php
                $content = apply_filters('the_content', get_the_content() );
                if(isset($type)){
                      $embed = get_media_embedded_in_content( $content, $type );
                } else {
                        $embed = get_media_embedded_in_content( $content );
                }
                $content = str_replace($embed, "", $content);
                echo $content;
            ?>

              <?php
                  $defaults = array(
                      'before'           => '<div class="page-links"><span class="page-links-title">' . esc_html__( 'Pages:', 'verso-lite' ) . '</span>',
                      'after'            => '</div>',
                      'link_before'      => '',
                      'link_after'       => '',
                      'next_or_number'   => 'number',
                      'separator'        => ' ',
                      'nextpagelink'     => esc_html__( 'Next page', 'verso-lite' ),
                      'previouspagelink' => esc_html__( 'Previous page', 'verso-lite' ),
                      'pagelink'         => '%',
                      'echo'             => 1
                  );

                  wp_link_pages( $defaults );
      		?>

        </div><!-- .entry-content -->

        <footer class="entry-footer">
            <?php echo verso_lite_posted_footer(); ?>
        </footer>

    </div>

</article>

<div class="related-posts">
    <?php
      //for use in the loop, list 5 post titles related to first tag on current post
      $tags = wp_get_post_tags($post->ID);
      if ($tags) {
          $first_tag = $tags[0]->term_id;
          $args=array(
          'tag__in' => array($first_tag),
          'post__not_in' => array($post->ID),
          'posts_per_page'=>5,
          'ignore_sticky_posts'=>1
          );
          $my_query = new WP_Query($args);
          if( $my_query->have_posts() ) {
              echo '<h3 class="related-posts_title">' . esc_html__('Related posts','verso-lite') .'<div class="verso-separator"><span class="dott"></span><span class="dott"></span><span class="dott"></span></div></h3>';
              echo '<ul class="related-posts_list row">';
              while ($my_query->have_posts()) : $my_query->the_post(); ?>

                  <li class="related-posts_item">
                      <?php echo '<a href="'.esc_url( get_the_permalink() ).'">'; the_title(); echo '</a>'; ?>
                  </li>

              <?php endwhile;
          }
          echo '</ul>';
          wp_reset_postdata();
    } ?>
</div>