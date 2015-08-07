<?php

namespace Entities;

/**
 * AppRestLogs
 */
class AppRestLogs
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $uri;

    /**
     * @var string
     */
    private $method;

    /**
     * @var string
     */
    private $params;

    /**
     * @var string
     */
    private $apiKey;

    /**
     * @var string
     */
    private $ipAddress;

    /**
     * @var \DateTime
     */
    private $time = 'CURRENT_TIMESTAMP';

    /**
     * @var float
     */
    private $rtime;

    /**
     * @var string
     */
    private $authorized;

    /**
     * @var integer
     */
    private $responseCode;


    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set uri
     *
     * @param string $uri
     *
     * @return AppRestLogs
     */
    public function setUri($uri)
    {
        $this->uri = $uri;

        return $this;
    }

    /**
     * Get uri
     *
     * @return string
     */
    public function getUri()
    {
        return $this->uri;
    }

    /**
     * Set method
     *
     * @param string $method
     *
     * @return AppRestLogs
     */
    public function setMethod($method)
    {
        $this->method = $method;

        return $this;
    }

    /**
     * Get method
     *
     * @return string
     */
    public function getMethod()
    {
        return $this->method;
    }

    /**
     * Set params
     *
     * @param string $params
     *
     * @return AppRestLogs
     */
    public function setParams($params)
    {
        $this->params = $params;

        return $this;
    }

    /**
     * Get params
     *
     * @return string
     */
    public function getParams()
    {
        return $this->params;
    }

    /**
     * Set apiKey
     *
     * @param string $apiKey
     *
     * @return AppRestLogs
     */
    public function setApiKey($apiKey)
    {
        $this->apiKey = $apiKey;

        return $this;
    }

    /**
     * Get apiKey
     *
     * @return string
     */
    public function getApiKey()
    {
        return $this->apiKey;
    }

    /**
     * Set ipAddress
     *
     * @param string $ipAddress
     *
     * @return AppRestLogs
     */
    public function setIpAddress($ipAddress)
    {
        $this->ipAddress = $ipAddress;

        return $this;
    }

    /**
     * Get ipAddress
     *
     * @return string
     */
    public function getIpAddress()
    {
        return $this->ipAddress;
    }

    /**
     * Set time
     *
     * @param \DateTime $time
     *
     * @return AppRestLogs
     */
    public function setTime($time)
    {
        $this->time = $time;

        return $this;
    }

    /**
     * Get time
     *
     * @return \DateTime
     */
    public function getTime()
    {
        return $this->time;
    }

    /**
     * Set rtime
     *
     * @param float $rtime
     *
     * @return AppRestLogs
     */
    public function setRtime($rtime)
    {
        $this->rtime = $rtime;

        return $this;
    }

    /**
     * Get rtime
     *
     * @return float
     */
    public function getRtime()
    {
        return $this->rtime;
    }

    /**
     * Set authorized
     *
     * @param string $authorized
     *
     * @return AppRestLogs
     */
    public function setAuthorized($authorized)
    {
        $this->authorized = $authorized;

        return $this;
    }

    /**
     * Get authorized
     *
     * @return string
     */
    public function getAuthorized()
    {
        return $this->authorized;
    }

    /**
     * Set responseCode
     *
     * @param integer $responseCode
     *
     * @return AppRestLogs
     */
    public function setResponseCode($responseCode)
    {
        $this->responseCode = $responseCode;

        return $this;
    }

    /**
     * Get responseCode
     *
     * @return integer
     */
    public function getResponseCode()
    {
        return $this->responseCode;
    }
}
