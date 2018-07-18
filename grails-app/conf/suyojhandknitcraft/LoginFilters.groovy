package suyojhandknitcraft

class LoginFilters {

    def filters = {
        allExceptUser(controller:'user', action:'login|dashboard',invert:true) {
            before = {
                if (!session.user){
                    redirect(controller: 'user', action: 'login')
                    return false
                }

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
