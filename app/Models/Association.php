<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Association extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'president'];

    public static function search($query = '', $size=''){
        
        if (!$size) {
            $size = 50;
        }
        if (!$query || is_null($query)) {
            return self::paginate($size);
        }
        return self::where('name', 'like', "%$query%")
                        ->orWhere('president', 'like', "%$query%")
                        ->paginate($size);
    }
}
