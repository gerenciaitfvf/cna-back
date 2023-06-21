<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Competition;
use App\Models\Referee;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(10)->create();

        \App\Models\User::factory()->create([
            'name' => 'Rafael Velasquez',
            'email' => 'rafael.velasquez@fvf.com.ve',
        ]);

        Referee::factory(100)->create();
        Competition::factory(30)->create();

        $this->call(AssociationSeeder::class);
    }
}
