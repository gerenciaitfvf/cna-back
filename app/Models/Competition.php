<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Competition extends Model
{
    use HasFactory;

    protected $fillable = ['id_comet', 'competition_name', 'category', 'discipline'];

    public static function search($query = '', $size=''){
        
        if (!$size) {
            $size = 10;
        }
        if (!$query || is_null($query)) {
            return self::paginate($size);
        }
        return self::where('id_comet', 'like', "%$query%")
                        ->orWhere('competition_name', 'like', "%$query%")
                        ->orWhere('category', 'like', "%$query%")
                        ->orWhere('discipline', 'like', "%$query%")
                        ->paginate($size);
    }
}
