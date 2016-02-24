package viewsdemo

class TestController {

    def index(String name) {
        println request.getMethod()
        println params
        println name
        render "Hi ${params.name}! this is a simple text"
    }

    def create() {
        50.times {

            new Person(name:"Gaurav${it}", age: 26).save(flush:true, failOnError: true)
        }
    }

    def list() {

        println params
        //params.list('fieldName')
        //params.float('fieldName')

        Integer max= params.int('max')?:5
        Integer offset= params.int('offset')?:0
        List personList = Person.list([max: max, offset: offset])
        [personList: personList, total:Person.count()]
    }

    def greet() {
        session.role = "superadmin"
//        render([view: "hello", model:[name:"Gaurav", names:["Puneet", "Uday", "Bhagwat"]]])

        [name:"Gaurav"]
    }

    def delete() {
        render "Delete Action $params"
    }

    def edit() {
        render "Edit Action $params"
    }
}
