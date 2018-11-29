puts "Hello world"

list = {
  "William Shakespeare" => {
    "1" => {
      "title" => "The Two Gentlemen",
      "finished" => 1591
    },
    "2" => {
      "title" => "The Taming of Vattelapesca",
      "finished" => 1591
    }
  }
}

numbers = [2, 5, "ciao", 65]

people = {
  "olistik" => {
    "name" => "Maurizio",
    "age" => 35
  },
  "edivad" => {
    "name" => "Davide",
    "age" => 19
  },
  "mara" => [3, 5, 10]
}

people["mara"][2]
people["olistik"]["age"]

stats = {
  35.1 => "maurizio",
  19 => "davide",
  35 => "mara",
}

stats[35]
