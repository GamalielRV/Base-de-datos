<?php 
class Pacientes{
    private $id;
    private $firtsName;
    private $secundName;
    private $lastName;
    private $secundLastName;
    private $email;//list of emails
    private $phone; //list of phones
    private $appointments ; //list of appointments 
    private $status;

    //Constructor

    public function __construct($id, $firtsName, $secundName, $lastName, $secundLastName, $email, $phone, $appointments, $status){
        $this->id = $id;
        $this->firtsName = $firtsName;
        $this->secundName = $secundName;
        $this->lastName = $lastName;
        $this->secundLastName = $secundLastName;
        $this->email = $email;
        $this->phone = $phone;
        $this->appointments = $appointments;
        $this->status = $status;
    }

    // Getters and setters

    
    public function getId() {
        return $this->id;
    }

    public function setId($id) {
        $this->id = $id;
    }

    public function getFirstName() {
        return $this->firtsName;
    }

    public function setFirstName($firstName) {
        $this->firtsName = $firstName;
    }

    public function getSecondName() {
        return $this->secundName;
    }

    public function setSecondName($secondName) {
        $this->secundName = $secondName;
    }

    public function getLastName() {
        return $this->lastName;
    }

    public function setLastName($lastName) {
        $this->lastName = $lastName;
    }

    public function getSecondLastName() {
        return $this->secundLastName;
    }

    public function setSecondLastName($secondLastName) {
        $this->secundLastName = $secondLastName;
    }

    public function getEmail() {
        return $this->email;
    }

    public function setEmail($email) {
        $this->email = $email;
    }

    public function getPhone() {
        return $this->phone;
    }

    public function setPhone($phone) {
        $this->phone = $phone;
    }

    public function getAppointments() {
        return $this->appointments;
    }

    public function setAppointments($appointments) {
        $this->appointments = $appointments;
    }

    public function getStatus() {
        return $this->status;
    }

    public function setStatus($status) {
        $this->status = $status;
    }
}
?>