package todo

class Tasks {
    String title
    String tasks
    Boolean isCompleted
    Date dateCreated
    static constraints = {
        dateCreated nullable: true
        isCompleted nullable: true
    }
}
