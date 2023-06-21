<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AssociationResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'type' => 'association',
            'id' => (string) $this->resource->getRouteKey(),
            'atributes' => [
                'id' => (string) $this->id,
                'name'  => $this->resource->name,
                'president' => $this->resource->president,
            ],
            'links' => [
                'self' => url('/api/association/' . $this->resource->getRouteKey())
            ]
        ];
    }
}
