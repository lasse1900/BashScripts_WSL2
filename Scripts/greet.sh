#!/bin/bash
read -p "Give me your firstname: " firstname
read -p "Give your lastname: " lastname
greet () {
  echo "Hello " $firstname, $lastname
}

greet $firsname $lastname


