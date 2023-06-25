<?php

class Medicos{
    private $id;
    private $firtsName;
    private $secundName;
    private $lastName;
    private $secundLastName;
    private $email;//list of emails
    private $specialties; //list of specialties
    private $phone; //list of phones
    private $schedule;
    private $status;

    //Constructor

    public function __construct($id, $firtsName, $secundName, $lastName, $secundLastName, $email, $specialties, $phone, $schedule, $status){
        $this->id = $id;
        $this->firtsName = $firtsName;
        $this->secundName = $secundName;
        $this->lastName = $lastName;
        $this->secundLastName = $secundLastName;
        $this->email = $email;
        $this->specialties = $specialties;
        $this->phone = $phone;
        $this->schedule = $schedule;
        $this->status = $status;
    }

    // Getters

    public function getId(){
        return $this->id;
    }

    public function getFirtsName(){
        return $this->firtsName;
    }

    public function getSecundName(){
        return $this->secundName;
    }

    public function getLastName(){
        return $this->lastName;
    }

    public function getSecundLastName(){
        return $this->secundLastName;
    }

    public function getEmail(){
        return $this->email;
    }

    public function getSpecialties(){
        return $this->specialties;
    }

    public function getPhone(){
        return $this->phone;
    }

    public function getSchedule(){
        return $this->schedule;
    }

    public function getStatus(){
        return $this->status;
    }

    // Setters

    public function setId($id){
        $this->id = $id;
    }

    public function setFirtsName($firtsName){
        $this->firtsName = $firtsName;
    }

    public function setSecundName($secundName){
        $this->secundName = $secundName;
    }

    public function setLastName($lastName){
        $this->lastName = $lastName;
    }

    public function setSecundLastName($secundLastName){
        $this->secundLastName = $secundLastName;
    }

    public function setEmail($email){
        $this->email = $email;
    }

    public function setSpecialties($specialties){
        $this->specialties = $specialties;
    }

    public function setPhone($phone){
        $this->phone = $phone;
    }


    public function setSchedule($schedule){
        $this->schedule = $schedule;
    }

    public function setStatus($status){
        $this->status = $status;
    }




}
?>