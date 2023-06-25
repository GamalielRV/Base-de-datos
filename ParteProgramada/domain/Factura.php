<?php

class Factura{
    private $id;
    private $totalAmount; // monto total 
    private $date;
    private $appointment;// cita


    //Constructor

    public function __construct($id, $totalAmount, $date, $appointment){
        $this->id = $id;
        $this->totalAmount = $totalAmount;
        $this->date = $date;
        $this->appointment = $appointment;
    }

    // Getters and setters

    public function getId() {
        return $this->id;
    }


    public function setId($id) {
        $this->id = $id;
    }


    public function getTotalAmount() {
        return $this->totalAmount;
    }


    public function setTotalAmount($totalAmount) {
        $this->totalAmount = $totalAmount;
    }



    public function getDate() {
        return $this->date;
    }



    public function setDate($date) {
        $this->date = $date;
    }



    public function getAppointment() {
        return $this->appointment;
    }




        
}
?>