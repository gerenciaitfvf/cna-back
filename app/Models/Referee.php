<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Traits\HasSorts;

use function PHPUnit\Framework\isEmpty;

class Referee extends Model
{
    use HasFactory;

    use HasSorts;

    protected $fillable = ['name', 'last_name', 'cedula', 'fifa_id', 'phone', 'test_fitness', 'discipline'];

    public $allowedSorts=['name', 'last_name', 'cedula', 'fifa_id', 'discipline'];
    
}