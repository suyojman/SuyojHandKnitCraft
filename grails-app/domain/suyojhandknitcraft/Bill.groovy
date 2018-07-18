package suyojhandknitcraft

class Bill {

    String customerName
    String productCode
    String productName
    Double productPrice
    int productQuantity
    Double totalPrice
    Date transaction_date = new Date()

    static constraints = {
    }
}
