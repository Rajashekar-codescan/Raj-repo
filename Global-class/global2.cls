@RestResource(urlMapping='/Account/*')
global with sharing class Global1 {

    @HttpGet
    global static String GET(){
        return 'literal';
    }

    global class Custom {
        public String Message {get; set; }
    }
}
