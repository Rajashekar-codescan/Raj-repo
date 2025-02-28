
@RestResource(urlMapping='/Account/*')
global with sharing class Global1 {

    @HttpGet
    global static CustomWrapper GET(){
        CustomWrapper wrp = new CustomWrapper(); wrp.Message = 'Test';
        return wrp;
    }

    @HttpGet
    global void GET(){
        CustomWrapper wrp = new CustomWrapper(); wrp.Message = 'Test';
        return wrp;
    }

 global class CustomWrapper {
        public String Message {get; set; }
    }
}