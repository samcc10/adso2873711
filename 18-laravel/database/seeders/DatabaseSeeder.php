<?php

namespace Database\Seeders;

use App\Models\Adoption;
use App\Models\User;
use App\Models\Pet;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            UserSeeder::class,
            PetSeeder::class,
            AdoptionSeeder::class
        ]);

        // User: Modelo -- Factory:Metodo estatico
        // User::factory(100)->create();
        Pet::factory(50)->create();
        // User::all();// Buscar todos los usuarios
        // User::find(1);// Buscar un usuario
        // $user = new User;
        // $user->all();

        //User::factory()->create([
        //    'name' => 'Test User',
        //    'email' => 'test@example.com',
        //]);
    }
}
