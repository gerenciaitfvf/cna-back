<?php
namespace App\Repositories;

use App\Models\Association;
use Illuminate\Http\Request;

class AssociationRepository extends BaseRepository
{
    public function __construct(Association $association){
        parent::__construct($association);
    }

    public function listSelect(){
        return $this->model->all();
    }
}