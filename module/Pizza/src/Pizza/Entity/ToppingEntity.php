<?php
/**
 * ZF2 Buch Kapitel 10
 * 
 * Das Buch "Zend Framework 2 - Von den Grundlagen bis zur fertigen Anwendung"
 * von Ralf Eggert ist im Addison-Wesley Verlag erschienen. 
 * ISBN 978-3-8273-2994-3
 * 
 * @package    Pizza
 * @author     Ralf Eggert <r.eggert@travello.de>
 * @copyright  Alle Listings sind urheberrechtlich geschützt!
 * @link       http://www.zendframeworkbuch.de/ und http://www.awl.de/2994
 */

/**
 * namespace definition and usage
 */
namespace Pizza\Entity;

use Zend\Stdlib\ArraySerializableInterface;

/**
 * Topping entity
 * 
 * @package    Pizza
 */
class ToppingEntity implements ArraySerializableInterface
{
    protected $id;
    protected $name;
    protected $costs;
    
    /**
     * Set id
     * 
     * @param integer $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }
    
    /**
     * Get id
     * 
     * @return integer $id
     */
    public function getId()
    {
        return $this->id;
    }
    
    /**
     * Set name
     * 
     * @param string $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }
    
    /**
     * Get name
     * 
     * @return string $name
     */
    public function getName()
    {
        return $this->name;
    }
    
    /**
     * Set costs
     * 
     * @param float $costs
     */
    public function setCosts($costs)
    {
        $this->costs = $costs;
    }
    
    /**
     * Get costs
     * 
     * @return float $costs
     */
    public function getCosts()
    {
        return round($this->costs, 2);
    }
    
    /**
     * Exchange internal values from provided array
     *
     * @param  array $array
     * @return void
     */
    public function exchangeArray(array $array)
    {
        $this->setId($array['id']);
        $this->setName($array['name']);
        $this->setCosts($array['costs']);
    }
    
    /**
     * Return an array representation of the object
     *
     * @return array
     */
    public function getArrayCopy()
    {
        return array(
            'id'    => $this->getId(),
            'name'  => $this->getName(),
            'costs' => $this->getCosts(),
        );
    }
}
