<?php if (count($languages) > 1) { ?>
<div class="switcher">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
    <?php foreach ($languages as $language) { ?>
    <button class="btn btn-link language-select <?php if ($language['code'] == $code)  echo 'active'; ?>" type="button" name="<?php echo $language['code']; ?>"><?php echo $language['code']; ?></button>
    <?php } ?>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
