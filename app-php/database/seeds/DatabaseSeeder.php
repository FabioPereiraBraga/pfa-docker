<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call('UsersTableSeeder');
        
        DB::table('modules')->insert([
            ['name' => 'Docker'],
            ['name' => 'Kubernetes'],
            ['name' => 'Comunicação'],
            ['name' => 'Observabilidade'],
            ['name' => 'Autenticação e Keycloak'],
            ['name' => 'Integração Contínua'],
            ['name' => 'Apache Kafka']
            ]);
    }
}
