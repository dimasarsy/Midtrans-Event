<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lineup extends Model
{
    use HasFactory;

    protected $fillable = ["name", "slug", "schedule_id", "date", "starttime", "endtime", "availableScheduleDate",	"dueDateSchedule", "status", "information", "image"];
    
    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function schedules()
    {
        return $this->belongsTo(Schedule::class);
    }
}
