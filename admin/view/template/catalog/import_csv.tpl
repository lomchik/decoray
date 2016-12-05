<?php echo $header ?><?php echo $column_left; ?>
<div id="content">
<div class="page-header">
    <div class="container-fluid">
        <div class="pull-right">
            <a href="<?php echo $cancel; ?>" class="btn btn-default">Cancel</a>
        </div>

        <h1><?php echo $heading_title; ?></h1>
    </div>
</div>

<div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
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
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
                    <input type="file" name="csv" value="" onchange="this.parentNode.submit()"/>
                            <?php if (isset($error_csv)) { ?>
                            <span class="error"><?php echo $error_csv; ?></span>
                            <?php } ?>
                </form>

                <?php if (isset($cvs)): ?>
                <table>
                    <?php foreach($cvs as $row) { ?>
                        <tr>
                            <?php foreach($row as $v) { ?>
                            <td><?php echo $v ?></td>
                            <?php } ?>
                        </tr>
                    <?php } ?>
                </table>
                <?php endif; ?>
            </div>
        </div>
</div>

<?php echo $footer ?>