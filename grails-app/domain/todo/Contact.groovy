package todo

class Contact {
    String name
    String email
    int phoneNumber
    String message
    Date dateSubmitted = new Date()
    static constraints = {
        email nullable: true
        dateSubmitted nullable: true
        phoneNumber nullable: true
    }
}
