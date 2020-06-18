<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
require './vendor/autoload.php';

$app = new \Slim\App;
$app->options('/{routes:.+}', function ($request, $response, $args) {
    return $response;
});
$container = $app->getContainer();
$container['upload_directory'] = __DIR__ . '/uploads';
$app->add(function (Request $request, Response $response, $next) {
    $response = $next($request, $response);
    return $response
            ->withHeader('Access-Control-Allow-Origin','*')
            ->withHeader('Access-Control-Allow-Headers','*')
            ->withHeader('Access-Control-Allow-Methods', ' POST, GET, PUT, DELETE, PATCH, OPTIONS')
            ->withHeader('Content-Type','application/json');
});
$app->get('/hello/{name}', function (Request $request, Response $response, array $args) {
    $name = $args['name'];
    $response->getBody()->write("Hello, $name");

    return $response;
});
$app->post('/mutant', function ($request, $response) {
    // return 'hello world';
    require_once './Apis/Mutant.php';
    // $data=$request->getParsedBody();
    $db = new Mutants();
    $output =  $db->Characters();
    echo json_encode($output);
});
$app->post('/Avengers', function ($request, $response) {
    // return 'hello world';
    require_once './Apis/Avengers.php';
    // $data=$request->getParsedBody();
    $db = new Avengers();
    $output =  $db->Characters();
    echo json_encode($output);
});
$app->post('/AntiHero', function ($request, $response) {
    // return 'hello world';
    require_once './Apis/AntiHero.php';
    // $data=$request->getParsedBody();
    $db = new AntiHero();
    $output =  $db->Characters();
    echo json_encode($output);
});
$app->run();