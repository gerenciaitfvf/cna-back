<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Competition>
 */
class CompetitionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'id_comet' => fake()->unique()->randomNumber($nbDigits=2, $strict = false),
            'competition_name' => fake()->name(),
            'category' => fake()->randomElement($array = ['sub-19', 'sub-21', 'sub-23', 'senior']),
            'discipline' => fake()->randomElement($array = array ('campo', 'sala', 'playa')),
        ];
    }
}
