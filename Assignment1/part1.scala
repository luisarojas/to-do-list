class Person(nameNew: String, ageNew: Int) {
    
    private var name = nameNew;
    private var age = ageNew;

    def getAge(): Int = {return age}
    def getName(): String = {return name}
    def grow(): Int = {
        age += 1
        return age
    }
}

object Main {
    
    def makePerson(name: String, age: Int): (() => Int, () => String, () => Int) = {
        var newPerson: Person = new Person(name, age)
        return (newPerson.getAge, newPerson.getName, newPerson.grow)
    }
    
    def main(args: Array[String]) {
        val(age, name, grow) = makePerson("Clark Kent", 28);
        println(age()) //28
        println(name()) //Clark Kent
        println(grow()) //29
        println(grow()) //30
        println(grow()) //31
    }
}