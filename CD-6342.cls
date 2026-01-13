@RestResource(urlMapping='/Account/*')
global with sharing class Global1 {

    @HttpGet
    global static CustWrap GET(){
        CustWrap wrp = new CustWrap();
        wrp.Message = 'Test';
        return wrp;
    }

    global class CustWrap {
        public String Message {get; set; }
    }
}