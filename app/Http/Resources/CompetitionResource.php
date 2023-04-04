<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CompetitionResource extends JsonResource
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
            'type' => 'competition',
            'id' => (string) $this->resource->getRouteKey(),
            'atributes' => [
                'id' => $this->id,
                'id_comet'  => $this->resource->id_comet,
                'competition_name' => $this->resource->competition_name,
                'category' => $this->resource->category,
                'discipline' => $this->resource->discipline
            ],
            'links' => [
                'self' => url('/api/competition/' . $this->resource->getRouteKey())
            ]
        ];
    }
}
