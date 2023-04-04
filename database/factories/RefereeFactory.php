<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Referee>
 */
class RefereeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => fake()->name(),
            'last_name' => fake()->lastName(),
            'cedula' => fake()->numberBetween($min=10000000, $max=17000000),
            'fifa_id' => fake()->regexify('[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}'),
            'phone' => fake()->phoneNumber(),
            'test_fitness' => fake()->boolean($chanceOfGettingTrue = 85),
            'discipline' => fake()->randomElement($array = array ('campo', 'sala', 'playa')),
        ];
    }
}
