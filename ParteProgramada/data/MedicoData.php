<?php



require_once 'Connection.php';

class MedicoData  {
    function __construct() {  
    }

    function getMedicos() {
        global $conn;
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        $sql = "EXEC SP_OBTENER_MEDICOS";
        $result = $conn->query($sql);
        $medicos = array();
    
        foreach ($result->fetchAll() as $medico) {
            $medicoId = $medico['id'];
            $correos = $this->getCorreosMedico($medicoId); // Método para obtener los correos del médico
            $telefonos = $this->getTelefonosMedico($medicoId); // Método para obtener los teléfonos del médico
    
            $medicos[] = new Medicos($medico['id'], $medico['firtsName'], $medico['secundName'], $medico['lastName'], $medico['secundLastName'], $correos, $medico['specialties'], $telefonos, $medico['schedule'], $medico['status']);
        }
        $conn= null;
        return $medicos;
    }

    function getCorreosMedico($medicoId){
        global $conn;
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        $sql = "EXEC SP_OBTENER_CORREOS_MEDICO @MedicoId=:medicoId"; // Modificar la consulta para incluir el parámetro
        $stmt = $conn->prepare($sql);
        $stmt->bindValue(':medicoId', $medicoId, PDO::PARAM_INT);
        $stmt->execute();
    
        $correos = array();
    
        foreach ($stmt->fetchAll() as $correo) {
            $correos[] = $correo['email'];
        }
        $conn= null;
        return $correos;
    }
    


    function getTelefonosMedico($medicoId){
        global $conn;
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        $sql = "EXEC SP_OBTENER_TELEFONOS_MEDICO @MedicoId=:medicoId"; // Modificar la consulta para incluir el parámetro
        $stmt = $conn->prepare($sql);
        $stmt->bindValue(':medicoId', $medicoId, PDO::PARAM_INT);
        $stmt->execute();
    
        $telefonos = array();
    
        foreach ($stmt->fetchAll() as $telefono) {
            $telefonos[] = $telefono['phone'];
        }
        $conn= null;
        return $telefonos;
    }
    
}

?>