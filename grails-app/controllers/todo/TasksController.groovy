package todo

class TasksController {

    def index() {
        render view:"index.gsp"
    }

    def list() {
        List<Tasks> taskList = Tasks.list()
        render view: "index", model: [taskList: taskList]
    }

    def save(Tasks taskToDO) {
        if(taskToDO.validate()){
            taskToDO.isCompleted = false
            taskToDO.save(flush:true, failOrError:true)
            flash.Message = "Your message has reached us."
        } else {
            flash.Message= "Error"
        }
        redirect action: "index"
    }

    def edit(){
        Tasks taskToDO = Tasks.get(params.id)
        render view: "form", model: [taskToDO: taskToDO]
    }

    def update(Tasks Tasks){
        if (Tasks.validate()) {
            Tasks.save()
            flash.message = "Your Tasks post has successfully been updated."
            redirect action: "index"
        }
        else {
            flash.message = "Oops! Something went wrong. Cannot update your Tasks post."
            redirect action: "edit"
        }
    }
}