<?php

namespace App\Controller;

use App\Repository\TypeRepository;
use App\Repository\MarqueRepository;
use App\Repository\ProduitRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(ProduitRepository $produitRepository, MarqueRepository $marqueRepository, TypeRepository $typeRepository): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'produits' => $produitRepository->findAll(),
            'marques' => $marqueRepository->findAll(),
            'types' => $typeRepository->findAll(),
        ]);
    }
}
