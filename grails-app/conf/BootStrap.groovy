import viewsdemo.Person

class BootStrap {

    def init = { servletContext ->

        50.times {
            new Person(name:"Person${it}", age: ${it}).save(flush:true)
        }
    }
    def destroy = {
    }
}
