<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\AssociationCollection;
use App\Http\Resources\AssociationSelectCollection;
use App\Models\Association;
use App\Repositories\AssociationRepository;
use Illuminate\Http\Request;

class AssociationController extends Controller
{
    private $associationRepository;

    public function __construct(AssociationRepository $associationRepository)
    {
        $this->associationRepository = $associationRepository;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
               
        $asso = $this->associationRepository->search($request->q, $request->size);

        return AssociationCollection::make($asso);
    }

    public function listSelect(){
        $asso = $this->associationRepository->listSelect();

        return AssociationSelectCollection::make($asso);
    }
}