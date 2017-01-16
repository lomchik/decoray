<?php echo $search; ?>
<ul class="categories-menu nav nav-list">
<?php foreach ($categories as $category) : ?>
  <li class="first-level <?php echo $category['category_id'] == $category_id && !$child_id ? 'active' : ''?> <?php echo $category['children'] ? 'has-child' : ''?>">
    <a href="<?php echo $category['href']; ?>" class="nav-header <?php echo $category['children'] ? 'tree-toggler' : ''?>">
      <?php if($category['children']): ?>
        <i class="fa <?php echo $category['category_id'] == $category_id ? 'fa-caret-down' : 'fa-caret-right'?>" aria-hidden="true"></i>
      <?php endif; ?>
      <?php echo $category['name']; ?>
    </a>
    <?php if ($category['children']): ?>
      <ul class="nav nav-list tree <?php echo $category['category_id'] == $category_id ? 'show' : ''?>">
        <?php foreach ($category['children'] as $child): ?>
        <li class="second-level <?php echo $child['category_id'] == $child_id ? 'active' : ''?>">
          <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
        </li>
        <?php endforeach; ?>
      </ul>
    <?php endif; ?>
  </li>
<?php endforeach; ?>
</ul>
<script>
    $(document).ready(function () {
        $('.nav-list .tree-toggler').click(function () {
            $(this).find('i').toggleClass('fa-caret-right').toggleClass('fa-caret-down');
            var $list = $(this).parent().children('ul.tree');
            $list.toggleClass('show');

            return false;
        });
    });
</script>