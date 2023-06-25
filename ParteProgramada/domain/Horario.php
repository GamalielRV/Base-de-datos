<?php
class Horario{

    private $id;
    private $day;
    private $startTime;
    private $endTime;
    private $doctor;


    //Constructor

    public function __construct($id, $day, $startTime, $endTime, $doctor){
        $this->id = $id;
        $this->day = $day;
        $this->startTime = $startTime;
        $this->endTime = $endTime;
        $this->doctor = $doctor;
    }


    // Getters and setters

    public function getId() {
        return $this->id;
    }

    public function setId($id) {
        $this->id = $id;
    }

    public function getDay() {
        return $this->day;
    }

    public function setDay($day) {
        $this->day = $day;
    } 

    public function getStartTime() {
        return $this->startTime;
    }
    public function setStartTime($startTime) {
        $this->startTime = $startTime;
    }

    public function getEndTime() {
        return $this->endTime;
    }

    public function setEndTime($endTime) {
        $this->endTime = $endTime;
    }

    public function getDoctor() {
        return $this->doctor;
    }

    public function setDoctor($doctor) {
        $this->doctor = $doctor;
    }

}
?>