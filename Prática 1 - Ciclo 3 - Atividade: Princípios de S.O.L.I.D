/*
* Curso de Engenharia de Software - UniEVANGÉLICA 
* Disciplina de Programação Web 
* Dev: João Lucas Maciel Martins
* DATA: 15/06/2024
*/ 

interface UserRepositoryInterface {
    public function save(User $user);
    public function getAllUsers();
}

class UserRepository implements UserRepositoryInterface {
    public function save(User $user) {
        // save user to database
    }

    public function getAllUsers() {
        // Get all users from database
    }
}

interface EmailServiceInterface {
    public function sendWelcomeEmail($email);
}

class EmailService implements EmailServiceInterface {
    public function sendWelcomeEmail($email) {
        // send welcome email
    }
}

class User {
    private $id;
    private $name;
    private $email;
    private $password;

    public function __construct($id, $name, $email, $password) {
        $this->id = $id;
        $this->name = $name;
        $this->email = $email;
        $this->password = $password;
    }

    // Getters and setters...
}

// Usage
$userRepository = new UserRepository();
$emailService = new EmailService();

$user = new User(1, 'John Doe', 'john@example.com', 'secret');
$userRepository->save($user);
$emailService->sendWelcomeEmail($user->getEmail());
