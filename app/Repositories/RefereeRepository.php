<?php
namespace App\Repositories;

use App\Models\Referee;
use Illuminate\Http\Request;

class RefereeRepository extends BaseRepository
{
    public function __construct(Referee $referee){
        parent::__construct($referee);
    }
}