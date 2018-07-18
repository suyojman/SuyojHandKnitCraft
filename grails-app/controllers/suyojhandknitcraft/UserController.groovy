package suyojhandknitcraft

import org.compass.core.engine.SearchEngineQueryParseException
import org.grails.datastore.mapping.query.Query

class UserController {

    def index() { }

    def login() {
        render(view: "index")
    }

    def dashboard() {
        def user = User.findAllByEmailAndPassword(params.email, params.password)

        if (user) {
            session.setAttribute("user",user)
            render(view: "dashboard", model: [u: user[0]])
        } else {
//            render(view: "login")
            redirect(action: "login")
        }
    }

    def dash(){
        def user=User.findAll()
        render(view: "dashboard",model: [u:user[0] ])
    }

    def workingPlace() {
        render(view: "workingPlace")
    }

    def searchableService

/**
 * Index page with search form and results
 */
    def searchUser = {
        if (!params.q?.trim()) {
            return [:]
        }
        try {
            return [searchResult: searchableService.search(params.q, params)]
        } catch (SearchEngineQueryParseException ex) {
            return [parseException: true]
        }
        render(view: "searchUser")
    }
    def test = {
        def msg = params.value
        /*render "Welcome ${msg}"*/
        def prouct = User.findById(Long.parseLong(msg))
        render(template: "test", model: [u: prouct])
    }


    def logout() {
        session.removeAttribute("user")
        session.invalidate()
        render(view:"index")
        //render(view: "index")
    }

    def profile() {
        def profile = User.findAll()
        render(view: "profile", model: [profile: profile])
    }

    def welcome() {
        def v = params.value
        if (!v?.trim()) {
            return [:]
        }
        def c = User.createCriteria().list { like("name", "${v}%") order("name", "desc") }
        render(view: "welcome", model: [r: c])
    }

    def edit() {
        def id = Integer.parseInt(params.id)
        def user = User.findAllById(id)

        render(view: "edit", model: ['i': user[0]])

    }

    def update() {
        def id = Integer.parseInt(params.id)
        def user = User.findById(id)

        user.name = params.name
        user.email = params.email
        user.password = params.password

        user.save()

        redirect(action: "profile")

    }

    def delete() {
        def id = Integer.parseInt(params.id)
        def user1 = User.findById(id)

        user1.delete()

        redirect(action: "profile")
    }

    def getdata() {
        def v = params.v
        def eachPrice = Product.findAllByProductCode(v);
        def p = eachPrice.productPrice
        def total = v * p;

        render total
    }


}
