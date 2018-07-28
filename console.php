#!/usr/bin/env php

<?php

require_once __DIR__ . '/vendor/autoload.php';

use Symfony\Component\Console\Application;
use Synnex\FlatFileFilter;

$app = new Application();

$app->add(new FlatFileFilter());

$app->run();
