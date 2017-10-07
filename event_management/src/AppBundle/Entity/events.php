<?php
namespace AppBundle\Entity;
use Doctrine\ORM\Mapping as ORM;
/**
 * @ORM\Entity
 * @ORM\Table(name="events")
 */
class events
{
    /**
     * @ORM\Column(type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;
    /**
     * @ORM\Column(type="string", length=100)
     */
    private $name;
    /**
     * @ORM\Column(type="decimal", scale=2)
     */
    private $phone;
    /**
     * @ORM\Column(type="text")
     */
    private $description;
    /**
     * @ORM\Column(type="string")
     */
    private $imagelink;
    /**
     * @ORM\Column(type="text")
     */
    private $contactPerson;

    /**
     * @ORM\Column(type="integer")
     */
    private $capacity;
    /**
     * @ORM\Column(type="text")
     */
    private $address;
    /**
     * @ORM\Column(type="text")
     */
    private $url;
    /**
     * @ORM\Column(type="text")
     */
    private $type;
    /**
     * @ORM\Column(type="datetime")
     */
    private $eventBegin;
    /**
     * @ORM\Column(type="datetime")
     */
    private $eventEnd;

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
     * Set name
     *
     * @param string $name
     *
     * @return events
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set phone
     *
     * @param string $phone
     *
     * @return events
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;

        return $this;
    }

    /**
     * Get phone
     *
     * @return string
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return events
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set imagelink
     *
     * @param string $imagelink
     *
     * @return events
     */
    public function setImagelink($imagelink)
    {
        $this->imagelink = $imagelink;

        return $this;
    }

    /**
     * Get imagelink
     *
     * @return string
     */
    public function getImagelink()
    {
        return $this->imagelink;
    }

    /**
     * Set contactPerson
     *
     * @param string $contactPerson
     *
     * @return events
     */
    public function setContactPerson($contactPerson)
    {
        $this->contactPerson = $contactPerson;

        return $this;
    }

    /**
     * Get contactPerson
     *
     * @return string
     */
    public function getContactPerson()
    {
        return $this->contactPerson;
    }

    /**
     * Set capacity
     *
     * @param integer $capacity
     *
     * @return events
     */
    public function setCapacity($capacity)
    {
        $this->capacity = $capacity;

        return $this;
    }

    /**
     * Get capacity
     *
     * @return integer
     */
    public function getCapacity()
    {
        return $this->capacity;
    }

    /**
     * Set address
     *
     * @param string $address
     *
     * @return events
     */
    public function setAddress($address)
    {
        $this->address = $address;

        return $this;
    }

    /**
     * Get address
     *
     * @return string
     */
    public function getAddress()
    {
        return $this->address;
    }

    /**
     * Set url
     *
     * @param string $url
     *
     * @return events
     */
    public function setUrl($url)
    {
        $this->url = $url;

        return $this;
    }

    /**
     * Get url
     *
     * @return string
     */
    public function getUrl()
    {
        return $this->url;
    }

    /**
     * Set type
     *
     * @param string $type
     *
     * @return events
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Get type
     *
     * @return string
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * Set eventBegin
     *
     * @param \DateTime $eventBegin
     *
     * @return events
     */
    public function setEventBegin( $eventBegin)
    {
        $this->eventBegin = new \DateTime($eventBegin);

        return $this;
    }

    /**
     * Get eventBegin
     *
     * @return \DateTime
     */
    public function getEventBegin()
    {
        return $this->eventBegin;
    }

    /**
     * Set eventEnd
     *
     * @param \DateTime $eventEnd
     *
     * @return events
     */
    public function setEventEnd( $eventEnd)
    {
        $this->eventEnd = new \DateTime($eventEnd);

        return $this;
    }

    /**
     * Get eventEnd
     *
     * @return \DateTime
     */
    public function getEventEnd()
    {
        return $this->eventEnd;
    }
}
