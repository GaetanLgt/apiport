<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\CategoriesRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass=CategoriesRepository::class)
 */
class Categories
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\OneToMany(targetEntity=Competences::class, mappedBy="categories")
     */
    private $Technos;

    public function __construct()
    {
        $this->Technos = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    /**
     * @return Collection|Competences[]
     */
    public function getTechnos(): Collection
    {
        return $this->Technos;
    }

    public function addTechno(Competences $techno): self
    {
        if (!$this->Technos->contains($techno)) {
            $this->Technos[] = $techno;
            $techno->setCategories($this);
        }

        return $this;
    }

    public function removeTechno(Competences $techno): self
    {
        if ($this->Technos->contains($techno)) {
            $this->Technos->removeElement($techno);
            // set the owning side to null (unless already changed)
            if ($techno->getCategories() === $this) {
                $techno->setCategories(null);
            }
        }

        return $this;
    }
}
