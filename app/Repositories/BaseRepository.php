<?php
namespace App\Repositories;

use App\Models\Referee;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class BaseRepository
{
    protected $model;

    public function __construct(Model $model){
        $this->model = $model;
    }

    public function search($query='', $size=''){
        if(!$size){
            $size = 10;
        }
        if(!$query || is_null($query)){
            return $this->model->paginate($size);
        }
        return $this->model::where('cedula', 'like', "%$query%")
                            ->orWhere('name', 'like', "%$query%")
                            ->orWhere('last_name', 'like', "%$query%")
                            ->orWhere('fifa_id', 'like', "%$query%")
                            ->orWhere('discipline', 'like', "%$query%")
                            ->paginate($size);
    }

    public function get(int $id){
        return $this->model->find($id);
    }

    public function save(Model $model){
        $model->save();
        return $model;
    }

    public function update($request, $model){
        $model->fill($request->all());
        return $referee = $this->save($model);
    }
}