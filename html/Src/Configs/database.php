<?php
$IP = getenv('SQL');

return [

    'pdo' => [
        'driver' => 'mysql',
        'host' => $IP,
        'db_name' => 'tibame',
        'db_username' => 'tibame',
        'db_user_password' => 'tibame',
        'default_fetch' => PDO::FETCH_OBJ,
    ],
    'mysqli' => [
        'host' => $IP,
        'db_name' => 'tibame',
        'db_username' => 'tibame',
        'db_user_password' => 'tibame',
        'default_fetch' => MYSQLI_ASSOC,
    ],
];
