<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pet>
 */
class PetFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
    $pets = [
    'Max', 'Bella', 'Charlie', 'Luna', 'Lucy', 'Cooper', 'Daisy', 'Milo', 'Sadie', 'Rocky',
    'Molly', 'Bear', 'Duke', 'Zoe', 'Tucker', 'Stella', 'Bentley', 'Lola', 'Oliver', 'Roxy',
    'Buddy', 'Sophie', 'Jack', 'Chloe', 'Winston', 'Penny', 'Zeus', 'Coco', 'Murphy', 'Lily',
    'Jax', 'Ruby', 'Leo', 'Maggie', 'Chester', 'Gracie', 'Louie', 'Mia', 'Henry', 'Abby',
    'Teddy', 'Piper', 'Sam', 'Lulu', 'Harley', 'Riley', 'Gus', 'Nala', 'Toby', 'Rosie',
    'Beau', 'Ellie', 'Jake', 'Pepper', 'Finn', 'Layla', 'Dexter', 'Zara', 'Bruno', 'Annie',
    'Apollo', 'Olive', 'Bandit', 'Emma', 'Marley', 'Harper', 'Gunner', 'Willow', 'Ace', 'Hazel',
    'Koda', 'Belle', 'Otis', 'Izzy', 'Scout', 'Millie', 'Blue', 'Athena', 'Thor', 'Nova',
    'Rusty', 'Ella', 'Moose', 'Ginger', 'Simba', 'Maddie', 'Bo', 'Lilly', 'Ollie', 'Sasha',
    'Prince', 'Lexi', 'Romeo', 'Phoebe', 'Cash', 'Dixie', 'Frankie', 'Holly', 'Benny', 'Sugar',
    'Chance', 'Cleo', 'Rudy', 'Josie', 'Peanut', 'Fiona', 'George', 'Leia', 'King', 'Paisley',
    'Sammy', 'Winnie', 'Tank', 'Xena', 'Copper', 'Minnie', 'Hank', 'Kona', 'Jasper', 'Ivy',
    'Ranger', 'Dolly', 'Brutus', 'Honey', 'Chico', 'Lacey', 'Oreo', 'Macy', 'Vader', 'Poppy',
    'Mac', 'Pearl', 'Chewy', 'Sandy', 'Gizmo', 'Sassy', 'Buster', 'Bonnie', 'Joey', 'Trixie',
    'Rocco', 'Dakota', 'Chocolate', 'Shadow', 'Maverick', 'Nikki', 'Porter', 'Eva', 'Roscoe', 'Talia',
    'Spike', 'Mocha', 'Yoda', 'Diamond', 'Merlin', 'Cookie', 'Rufus', 'Angel', 'Goose', 'Pumpkin',
    'Diesel', 'Star', 'Boomer', 'Luna', 'Chester', 'Cinnamon', 'Hunter', 'Misty', 'Rex', 'Sapphire',
    'Mickey', 'Pebbles', 'Jackson', 'Tinkerbell', 'Odin', 'Duchess', 'Rambo', 'Buttons', 'Titan', 'Cupcake',
    'Felix', 'Goldie', 'Goliath', 'Jasmine', 'Hercules', 'Panda', 'Ninja', 'Whiskey', 'Pablo', 'Storm',
    'Scooter', 'Toffee', 'Taz', 'Violet', 'Wally', 'Blossom', 'Ziggy', 'Bambi', 'Rocket', 'Snowball',
    'Aldo', 'Candy', 'Drago', 'Fanny', 'Elvis', 'Gigi', 'Fritz', 'Heidi', 'Hugo', 'Kiki'
];
        return [
            'name'        => $pets[array_rand($pets)] . fake()->numerify('#'),
            'kind'        => fake()->randomElement('Dog', 'Cat', 'Bird', 'Mouse', 'Dog', 'Cat', 'Pig'),
            'weight'      => fake()->numberBetween(1, 80),
            'age'         => fake()->randomNumber(2, true),
            'breed'       => fake()->colorName(),
            'location'    => fake()->city(),
            'description' => fake()->sentence(10),
            'created_at'  => now()
        ];
    }
}
