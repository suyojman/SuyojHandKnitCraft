package suyojhandknitcraft

import java.text.SimpleDateFormat

class BillController {
    def exportService

    def index() { }

    def createBill(){
        render(view: "createBill")
    }

    def save(){
        def customerName=params.customerName
        def productCode=params.productCode
        def productName=params.productName
        def productPrice=params.productPrice
        def productQuantity=params.productQuantity
        def totalPrice=params.totalPrice

        def oldProduct=Product.findByProductName(productName)


        def bill=new Bill()
        bill.productName=productName
        bill.productPrice=Integer.parseInt(productPrice)
        bill.productCode=productCode
        bill.productQuantity=Integer.parseInt(productQuantity)
        bill.totalPrice=Double.parseDouble(totalPrice)
        bill.customerName=customerName
        bill.save()
       /* if(bill.save()){
            oldProduct.productQuantity -=bill.productQuantity
            oldProduct.save()
        }*/

        redirect(action: "view" )

    }
    def view(){

        def v = Bill.findAll("from Bill as b order by b.id desc ").get(0)
        render(view: "viewbill", model: [r:v])
    }
    def todaySale(){
        /*Date curDate = new Date();

        SimpleDateFormat format = new SimpleDateFormat();
        String DateToStr = format.format(curDate);
        System.out.println("Default pattern: " + DateToStr);

        format = new SimpleDateFormat("yyyy-MM-dd");
        DateToStr = format.format(curDate);
        System.out.println(DateToStr);

        Date d = format.parse(DateToStr);

        println "d = $d"*/
        
        /*def b = Bill.createCriteria().list {
            ilike("transaction_date",'${d}%)
        }*/


        params.max = params.max ?: 10
        def sale=Bill.list(params)
        println "sale = $sale"
        render(view: "todaysSale",model: ['sale': sale,'count':sale.size()])


    }

    def productUpdate(){
            def v=params.value
            if(!v?.trim()){
                return [:]
            }
            def c=Product.createCriteria().list {like("productCode","${v}%") order("prooductCode","desc")}
            render(view: "productUpdate",model: [r:c] )
        }
    }

