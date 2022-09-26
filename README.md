# dakillol

## Installation

### Get the source
Clone the repository to your local machine
```
git clone https://github.com/HijodeputhIV/dakillol.git
```

### Prepare the environment
Copy the example environment file and set it up with your own environment variables
```
cp .env.example .env
```

### Initialize the application
Create the Docker containers
```
make containers-up
```

Install composer dependencies
```
make composer-install
```

Generate an app key
```
make artisan cmd=key:generate
```
Now the application should be listening in your localhost 
in the port you have defined in the .env file: ``SERVER_PORT=8080``

All these steps can be summed up in a single one:
```
make application-install
```

