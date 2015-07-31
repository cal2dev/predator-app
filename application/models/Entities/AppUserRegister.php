<?php
namespace Entities;

class AppUserRegister
{
    private $regId;
    
	private $regUniqueId;
   
	private $regRecordhash;

    private $regUserName;

    private $regEmailId;

   

    public function setregId($regId)
    {
        $this->regId = $regId;

        return $this;
    }

    public function getregId()
    {
        return $this->regId;
    }
    public function setregUniqueId($regUniqueId)
    {
        $this->regUniqueId = $regUniqueId;

        return $this;
    }

    public function getregUniqueId()
    {
        return $this->regUniqueId;
    }

    public function setregRecordhash($regRecordhash)
    {
        $this->regRecordhash = $regRecordhash;

        return $this;
    }

    
    public function getregRecordhash()
    {
        return $this->regRecordhash;
    }

    
    public function setregUserName($regUserName)
    {
        $this->regUserName = $regUserName;

        return $this;
    }

    public function getregUserName()
    {
        return $this->regUserName;
    }

    public function setregEmailId($regEmailId)
    {
        $this->regEmailId = $regEmailId;

        return $this;
    }

   
    public function getregEmailId()
    {
        return $this->regEmailId;
    }

    
    
}
