<?php

/**
 * @file
 * Default theme implementation to navigate books.
 *
 * Presented under nodes that are a part of book outlines.
 *
 * Available variables:
 * - $tree: The immediate children of the current node rendered as an unordered
 *   list.
 * - $current_depth: Depth of the current node within the book outline. Provided
 *   for context.
 * - $prev_url: URL to the previous node.
 * - $prev_title: Title of the previous node.
 * - $parent_url: URL to the parent node.
 * - $parent_title: Title of the parent node. Not printed by default. Provided
 *   as an option.
 * - $next_url: URL to the next node.
 * - $next_title: Title of the next node.
 * - $has_links: Flags TRUE whenever the previous, parent or next data has a
 *   value.
 * - $book_id: The book ID of the current outline being viewed. Same as the node
 *   ID containing the entire outline. Provided for context.
 * - $book_url: The book/node URL of the current outline being viewed. Provided
 *   as an option. Not used by default.
 * - $book_title: The book/node title of the current outline being viewed.
 *   Provided as an option. Not used by default.
 *
 * @see template_preprocess_book_navigation()
 *
 * @ingroup themeable
 */
?>
<?php if ($tree || $has_links): ?>
  <div id="book-navigation-<?php print $book_id; ?>" class="book-navigation">

    <?php if ($has_links): ?>
      <div class="row">
        <div class="previous col-xs-4 text-left">
          <?php if ($prev_url): ?>
            <a href="<?php print $prev_url; ?>" class="page-previous"
               title="<?php print t('Go to previous page'); ?>">
              <i class="fa fa-chevron-circle-left"></i>  <span class="hidden-xs"><?php print $prev_title; ?></span>
            </a>
          <?php endif; ?>
        </div>
        <div class="col-xs-4 text-center">
          <?php if ($parent_url): ?>
            <a href="<?php print $parent_url; ?>" class="page-up"
               title="<?php print t('Go to parent page'); ?>">
              <?php print t('up'); ?>
            </a>
          <?php endif; ?>
        </div>
        <div class="next col-xs-4 text-right">
          <?php if ($next_url): ?>
            <a href="<?php print $next_url; ?>" class="page-next"
               title="<?php print t('Go to next page'); ?>">
              <span class="hidden-xs"><?php print $next_title; ?></span> <i class="fa fa-chevron-circle-right"></i>
            </a>
          <?php endif; ?>
        </div>
      </div>
    <?php endif; ?>

  </div>
<?php endif; ?>
