public with sharing class BadExample { // 1: class name not descriptive
    public Integer x = 0; // 2: public field, should be private
    public String y; // 3: uninitialized field
    public BadExample() {} // 4: empty constructor
    public void doStuff() { // 5: method name vague
        Integer a = 0; // 6: unused variable
        if(a == 0){ // 7: use of literal, magic number
            System.debug('Debugging'); // 8: system.debug in prod code
        }
        for(Integer i=0;i<10;i++){ // 9: hardcoded limit
            if(i==5){break;} // 10: break in loop
        }
        try{Integer b=1/0;}catch(Exception e){} // 11: empty catch block
        while(true){} // 12: infinite loop
    }
    public void another(){ doStuff(); } // 13: method chaining without purpose
    public void doStuff(){ } // 14: duplicate method name
} // 15: too many responsibilities in one class
