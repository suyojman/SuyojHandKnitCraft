package suyojhandknitcraft

import org.codehaus.groovy.grails.commons.ConfigurationHolder

class ProductController {
    def exportService

    def index() {

    }
    def add(){
        render(view: "add")
    }
    def save(){
    def productCode=params.productCode
    def productName=params.productName
    def productPrice=params.productPrice
    def productQuantity=params.productQuantity

        Product product= new Product()
        product.productCode=productCode
        product.productName=productName
        product.productPrice=Integer.parseInt(productPrice)
        product.productQuantity=Integer.parseInt(productQuantity)

        product.save()

        redirect(action: "productList" ,controller: "product")

    }
    def productList(){
        //suyoj code
    /*def product = Product.findAll()
    render(view: "productList",model: ['p': product])*/
        //added
      if(!params.max) params.max = 10


        if(params?.format && params.format != "html"){
            response.contentType = ConfigurationHolder.config.grails.mime.types[params.format]
            response.setHeader("Content-disposition", "attachment; filename=ProductList.${params.format}")

            exportService.export(params.format, response.outputStream,Product.list(params), [:], [:])
            render(view: "productList",model: [p:Product.findAll()])

       }else{
            render(view: "productList",model: [p:Product.findAll()])
        }



    }

    def list = {
        
        
        if(!params.max) params.max = 10

        if(params?.format && params.format != "html"){
            response.contentType = ConfigurationHolder.config.grails.mime.types[params.format]
            response.setHeader("Content-disposition", "attachment; filename=books.${params.format}")

            exportService.export(params.format, response.outputStream,Product.list(params), [:], [:])
            render(view: "productList",model: [p:Product.list(params)])

        }

//        [ bookInstanceList: Product.list( params ) ]

    }


    def edit(){
        def id=params.id

        def product=Product.findById(id)
        render(view: "edit",model: ['i': product] )
    }

    def update(){
        def id=params.id
        def product=Product.findById(id)
        product.productCode=params.productCode
        product.productName=params.productName
        product.productQuantity=Integer.parseInt(params.productQuantity)
        product.productPrice=Integer.parseInt(params.productPrice)

        product.save()
        redirect(action: "productList")
    }

    def delete(){
        def id=Integer.parseInt(params.id)
//        def  product=Product.get(id)

        def product = Product.findById(id)
        product.delete()



        redirect(action: "productList")
    }

    def viewProductName(){
        def v=params.v
        def product=Product.findByProductCode(v)
        println "product = $product"



        render product.productName+":"+product.productPrice
    }

    def viewProductPrice(){
        def v=params.v
        def product=Product.findByProductCode(v)

        def productPrice=product.productPrice

        render productPrice
    }

    def viewTotalPrice(){
        def  productQuantity=Integer.parseInt(params.v)
        def productCode=params.v1

        def product=Product.findByProductCode(productCode)

        def productPrice=product.productPrice

        def totalPrice=productPrice*productQuantity

        render totalPrice

    }

    def gallery(){
        render(view: "gallery")
    }

}
