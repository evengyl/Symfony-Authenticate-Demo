<?php

namespace App\Command;

use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;

class UserAddRoleCommand extends Command
{
    protected static $defaultName = 'app:user:addRole';
    protected static $defaultDescription = 'Ajouter un role pour les users';

    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;

        parent::__construct();
    }

    protected function configure()
    {
        $this
            ->setDescription(self::$defaultDescription)
            ->addArgument('email', InputArgument::REQUIRED, 'Email du user')
            ->addArgument('roles', null, InputArgument::REQUIRED, 'Role à donner "ROLE_Name"')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        $io = new SymfonyStyle($input, $output);
        $email = $input->getArgument('email');
        $roles = $input->getArgument('roles');

        $userRepository = $this->em->getRepository(User::class);
        $user = $userRepository->findOneBy(["email" => $email]);

        if ($user) {
            $user->addRoles($roles);
            $this->em->flush();
            $io->success('Le role à bien été ajouté pour cette adresse email : ' . $email);
        }
        else{
            $io->error("Cette adresse email n'est pas connue du système...");
        }

        return Command::SUCCESS;
    }
}
