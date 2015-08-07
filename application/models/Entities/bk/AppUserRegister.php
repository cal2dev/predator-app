<?php
namespace Entities;

class AppUserregister
{
    private $regId;
    
	private $regUniqueId;
   
	private $regRecordhash;

    private $regUserName;

    private $regEmailId;

    private $regPassword;
    
    private $regFirstname;
    
    private $regLastname;
    
    private $regActive = '0';
    
    private $regStatus = '0';
    
    private $regUnlogincount;
    
    private $regNow;
    
    private $regCstamp;
    private $regUstamp;

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

    public function setregPassword($regPassword)
    {
    	$this->regPassword = $regPassword;
    
    	return $this;
    }
    
    public function getregPassword()
    {
    	return $this->regPassword;
    }
    
    
    public function setregFirstname($regFirstname)
    {
    	$this->regFirstname = $regFirstname;
    
    	return $this;
    }
    
    public function getregFirstname()
    {
    	return $this->regFirstname;
    }
    
     
    public function setregLastname($regLastname)
    {
    	$this->regLastname = $regLastname;
    
    	return $this;
    }
    
    public function getregLastname()
    {
    	return $this->regLastname;
    }
    
    public function setregActive($regActive)
    {
    	$this->regActive = $regActive;
    
    	return $this;
    }
    
    public function getregActive()
    {
    	return $this->regActive;
    }
    
    public function setregStatus($regStatus)
    {
    	$this->regStatus = $regStatus;
    
    	return $this;
    }
    
    public function getregStatus()
    {
    	return $this->regStatus;
    }
    
    public function setregUnlogincount($regUnlogincount)
    {
    	$this->regUnlogincount = $regUnlogincount;
    
    	return $this;
    }
    
    public function getregUnlogincount()
    {
    	return $this->regUnlogincount;
    }
    
    public function setregNow($regNow)
    {
    	$this->regNow = $regNow;
    
    	return $this;
    }
    
    public function getregNow()
    {
    	return $this->regNow;
    }
    
    public function setregCstamp($regCstamp)
    {
    	$this->regCstamp = $regCstamp;
    
    	return $this;
    }
    
    public function getregCstamp()
    {
    	return $this->regCstamp;
    }
    
    public function setregUstamp($regUstamp)
    {
    	$this->regUstamp = $regUstamp;
    
    	return $this;
    }
    
    public function getregUstamp()
    {
    	return $this->regUstamp;
    }
    
    
    public function addUserData(AppUserdata $userData)
    {
    	$userData->setReg($this); // synchronously updating inverse side
    }
    
}
