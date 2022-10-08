<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class categoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->insert(
            [
                [
                    "name" => "Pakaian",
                    "slug" => "pakaian"
                ],
                [
                    "name" => "Alat Tulis dan Kantor",
                    "slug" => "alat-tulis-dan-kantor"
                ],
                [
                    "name" => "Kebutuhan Rumah",
                    "slug" => "kebutuhan-rumah"
                ],
                [
                    "name" => "Mini Souvenir",
                    "slug" => "mini-souvenir"
                ]
            ]
        );
    }
}
