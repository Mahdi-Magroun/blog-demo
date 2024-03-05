<?php

namespace App\Entity;

use App\Repository\AaRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: AaRepository::class)]
class Aa
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    public function getId(): ?int
    {
        return $this->id;
    }
}
