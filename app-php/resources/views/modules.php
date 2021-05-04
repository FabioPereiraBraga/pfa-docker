<html>
    <body>
    <ul>
       <?php foreach($modules as $module): ?>
        <li><?= utf8_decode( $module['name'] ) ?></li>
       <?php endforeach;?>
    </ul>

    </body>
</html>