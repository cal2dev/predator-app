<?php
namespace Entities;


class AppUserdata
{
    
	private $dataId;
	
	private $reg;

    private $regRecordhash;

    private $regUniqueId;

    private $regUserName;

    private $regEmailId;

    private $regPassword;

    private $dataFirstname;

    private $dataLastname;

    private $dataImage;

    private $dataGender;

    private $dataBirthday;

    private $dataLocation;

    private $dataHometown;

    private $dataRelationship;

    private $dataTimezone;

    private $regCstamp  ;

    private $regUstamp ;

   

	public function setReg(AppUserRegister $reg = null)
    {
        $this->reg = $reg;

        return $this;
    }

    /* public function getregId()
    {
        return $this->regId;
    } */

    public function setregRecordhash($regRecordhash)
    {
        $this->regRecordhash = $regRecordhash;

        return $this;
    }

    public function getregRecordhash()
    {
        return $this->regRecordhash;
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

    public function setdataFirstname($dataFirstname)
    {
        $this->dataFirstname = $dataFirstname;

        return $this;
    }

    public function getdataFirstname()
    {
        return $this->dataFirstname;
    }

    public function setdataLastname($dataLastname)
    {
        $this->dataLastname = $dataLastname;

        return $this;
    }

    public function getdataLastname()
    {
        return $this->dataLastname;
    }

    public function setdataImage($dataImage)
    {
        $this->dataImage = $dataImage;

        return $this;
    }

    public function getdataImage()
    {
        return $this->dataImage;
    }

    public function setdataGender($dataGender)
    {
        $this->dataGender = $dataGender;

        return $this;
    }

    public function getdataGender()
    {
        return $this->dataGender;
    }

    public function setdataBirthday($dataBirthday)
    {
        $this->dataBirthday = $dataBirthday;

        return $this;
    }

    public function getdataBirthday()
    {
        return $this->dataBirthday;
    }

    public function setdataLocation($dataLocation)
    {
        $this->dataLocation = $dataLocation;

        return $this;
    }

    public function getdataLocation()
    {
        return $this->dataLocation;
    }

    public function setdataHometown($dataHometown)
    {
        $this->dataHometown = $dataHometown;

        return $this;
    }

    public function getdataHometown()
    {
        return $this->dataHometown;
    }

    public function setdataRelationship($dataRelationship)
    {
        $this->dataRelationship = $dataRelationship;

        return $this;
    }

    public function getdataRelationship()
    {
        return $this->dataRelationship;
    }

    public function setdataTimezone($dataTimezone)
    {
        $this->dataTimezone = $dataTimezone;

        return $this;
    }

    public function getdataTimezone()
    {
        return $this->dataTimezone;
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

    public function getdataId()
    {
        return $this->dataId;
    }
    
    
}
