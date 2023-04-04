<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\RefereeCollection;
use App\Http\Resources\RefereeResource;
use Illuminate\Http\Request;
use App\Models\Referee;

use App\Enums\Discipline;
use Illuminate\Validation\Rules\Enum;

use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class RefereeController extends Controller
{
   private $error;
    /**
     * Display a list to referee.
     *
     * @return \Illuminate\Http\Response
     */
     public function index(Request $request){

         
         $referee = Referee::search($request->q, $request->size);
         //$referee = Referee::applaySorts(request('sort'))->get();

        return RefereeCollection::make($referee);
        //return RefereeCollection::make(Referee::search($request->q, $request->size));

     }

     /**
      * Show a referee
      * @return \Illuminate\Http\JsonResponse
      */
     public function show($referee){
      try {
         $ref = Referee::findOrFail($referee);
     } catch (ModelNotFoundException $exception) {
         return [
            'status' => '404',
            'data'=>[
               'error'=>'Registro no encontrado'
            ]
         ];
     }

     return RefereeResource::make($ref);

     }

      /**
      * Store a referee
      * @return \Illuminate\Http\JsonResponse
      */

      public function store(Request $request){
 
         if(!$this->valid($request->all(), $request->id)){
            return $this->error;
         }
         $referee = Referee::create($request->all());
         return RefereeResource::make($referee);

      }

      /**
      * Store a referee
      * @return \Illuminate\Http\JsonResponse
      */
      public function update(Request $request, Referee $referee){
         
         if(!$this->valid(($request->all()), $referee->id)){
            return $this->error;
         }
     
         $referee->update($request->all());

         return RefereeResource::make($referee);
      }




      public function valid($referee, $id){
         $validator = Validator::make($referee, [
            'name'=>'required|max:255',
            'last_name'=>'required|max:255',
            // 'cedula'=>"required|max:10|unique:referees,cedula,$id",
            'cedula'=>['required',Rule::unique('referees','cedula')->ignore($id)],
            'fifa_id'=>['required', 'max:20', Rule::unique('referees', 'fifa_id')->ignore($id)],
            'phone'=>'required',
            'test_fitness'=>'required|boolean',
            'discipline'=>[new Enum(Discipline::class)],
         ]);

         if($validator->fails()){
            $this->error = [
               'status' => 'fails',
               'data'=>
               $validator->errors()
            ];
            return false;
         }

         return true;
      }
}
