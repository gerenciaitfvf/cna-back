<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RefereeResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return[
            'type' => 'referee',
            'id' => (string) $this->resource->getRouteKey(),
            'atributes' => [
                'id' => $this->id,
                'name'  => $this->resource->name,
                'last_name' => $this->resource->last_name,
                'cedula' => $this->resource->cedula,
                'fifa_id' => $this->resource->fifa_id,
                'phone' => $this->resource->phone,
                'test_fitnees' => $this->resource->test_fitness,
                'discipline' => $this->resource->discipline
            ],
            'links' => [
                'self' => url('/api/referee/' . $this->resource->getRouteKey())
            ]
        ];
    }
}
