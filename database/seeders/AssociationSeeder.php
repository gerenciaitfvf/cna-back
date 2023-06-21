<?php

namespace Database\Seeders;

use App\Models\Association;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use League\Csv\Reader;

class AssociationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Esta línea es necesaria para que en una Mac se detecten 
        // correctamente los caracteres de nueva línea
        if (!ini_get("auto_detect_line_endings")) {
        ini_set("auto_detect_line_endings", '1');     
        }     

        $csv = Reader::createFromPath(public_path() . '/asociaciones.csv', 'r');     
        // indicamos que el delimitador es el punto y coma
        $csv->setDelimiter(';');     
        // Indicamos el índice de la fila de nombres de columnas
        $csv->setHeaderOffset(0);     
        $records = $csv->getRecords();      

        foreach ($records as $r) {
        $association = new Association();
        $association->name = $r['name'];
        $association->president = $r['president'];         
        $association->save();
        
        }
    }
}
