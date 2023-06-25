<?php
class Citas{

    private $id;
    private $date;
    private $time;
    private $ward;
    private $doctor;
    private $patient;
    private $invoice;  
    private $status;


    //Constructor

    public function __construct($id, $date, $time, $ward, $doctor, $patient, $invoice, $status){
        $this->id = $id;
        $this->date = $date;
        $this->time = $time;
        $this->ward = $ward;// sala
        $this->doctor = $doctor;
        $this->patient = $patient;
        $this->invoice = $invoice;// factura
        $this->status = $status;
    }

    // Getters and setters

    public function getId() {
        return $this->id;
    }
    
    public function setId($id) {
        $this->id = $id;
    }
    
    public function getDate() {
        return $this->date;
    }
    
    public function setDate($date) {
        $this->date = $date;
    }
    
    public function getTime() {
        return $this->time;
    }
    
    public function setTime($time) {
        $this->time = $time;
    }
    
    public function getWard() {
        return $this->ward;
    }
    
    public function setWard($ward) {
        $this->ward = $ward;
    }
    
    public function getDoctor() {
        return $this->doctor;
    }
    
    public function setDoctor($doctor) {
        $this->doctor = $doctor;
    }
    
    public function getPatient() {
        return $this->patient;
    }
    
    public function setPatient($patient) {
        $this->patient = $patient;
    }
    
    public function getInvoice() {
        return $this->invoice;
    }
    
    public function setInvoice($invoice) {
        $this->invoice = $invoice;
    }
    
    public function getStatus() {
        return $this->status;
    }
    
    public function setStatus($status) {
        $this->status = $status;
    }
   

}


?>