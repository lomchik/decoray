<?php echo $header ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <h1>Import images</h1>
        </div>
    </div>

    <div class="container-fluid">
        <?php foreach($errors as $error) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>

        <div class="panel panel-default">
            <div class="panel-body">
                <div class="content">
                    <?php foreach($console as $message): ?>
                    <div><?php echo $message ?></div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php echo $footer ?>