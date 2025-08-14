<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * The current password being used by the factory.
     */
    protected static ?string $password;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $gender = fake()->randomElement(array('Female', 'Male'));
        $name   = ($gender == 'Female')? $name = fake()->firstNameFemale()
                                    : $name = fake()->firstNamemale();
        ($gender == 'Female')? $g = 'girl' : $g = 'boy';
        $id = fake()->numerify('75######');
        copy('https://avatar.iran.liara.run/public/' . $g, public_path('images/'.$id.'.png'));
        $email = strtolower($name).fake()->numerify('###').'@email.com';

        return [
            'document'          => $id,
            'fullname'          => $name . " " . fake()->lastName(),
            'gender'            => $gender,
            'birthdate'         => fake()->dateTimeBetween('1977-01-01', '2007-12-31'),
            'photo'             => $id.'.png',
            'email'             => $email,
            'phone'             => fake()->phoneNumber(),
            'email_verified_at' => now(),
            'password'          => static::$password ??= Hash::make('12345'),
            'remember_token'    => Str::random(10),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     */
    public function unverified(): static
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => null,
        ]);
    }
}
