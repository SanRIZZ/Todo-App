package todo

class HomeController {

    def index(){
        List<Tasks> taskList = Tasks.list()
        render view:"index",  model:[taskList:taskList]
    }

    def Check(){
        Integer id = params.temp
        List<Tasks> tasks = Tasks.list()
        Tasks task = tasks.get(id)
        if(params["check"])
            task.isCompleted = true
            redirect action: "completed"

    }

    def completed(){
        List<Tasks> taskList = Tasks.list()
        render view:"/home/completed", model:[taskList:taskList]
    }
}
