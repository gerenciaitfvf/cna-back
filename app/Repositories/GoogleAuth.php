<?php

namespace App\Repositories;

use GuzzleHttp\Client;

class GoogleAuth
{
    public $code400 = false;
    public function tokeninfo($token){
        $client = new Client([
            'base_uri' => 'https://oauth2.googleapis.com/tokeninfo?id_token=' . $token,
        ]);
        $res = $client->request('GET', '', ['http_errors' => false]);

        if ($res->getStatusCode() >= 400) {
            $this->code400 = true;
            return;
        }

        return json_decode($res->getBody());
    }
}