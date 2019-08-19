<?php

use App\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * @param User $user
     */
    public function run(User $user)
    {
        $user::create([
            'username' => 'admin',
            'email' => 'admin@admin.com',
            'password' => bcrypt('admin')
        ]);
    }
}
