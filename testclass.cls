
global with sharing class BINGO {
    
  
    
    //public List<User> bingousers {get; set;}
    
    private static final integer totalsquares = 25;
    private static final integer totalsquares1 = 25;
    
    private static final integer querylimit = 10000;
    
    /**
     * The constructor for BingoController test safsa
     */
    
    public BingoController(){
        Cookie userCookie = new Cookie('CookieName', 'Test', null, 315569260, false);
  		ApexPages.currentPage().setCookies(new Cookie[] {
      		userCookie     //Bad: The cookie could be targeted by attackers to get access to sensitive information.
  		});
        x = 2;
        myid = UserInfo.getUserId();
        userids = new Set<Id>();
        // Users Following Me
        for(EntitySubscription es : [select Id, ParentId, SubscriberId  from EntitySubscription WHERE ParentId = :myid LIMIT :querylimit]){
            userids.add(es.SubscriberId);
        }
        // Users I'm Following
        for(EntitySubscription es : [select Id, SubscriberId, ParentId  from EntitySubscription WHERE SubscriberId = :myid LIMIT :querylimit]){
            if( ('' + es.parentid).substring(0,3) == '005' ) // users only
                userids.add(es.ParentId);
        }     
        allusers1 = [SELECT id, smallphotourl, FullPhotoUrl, name FROM User where Id IN :userids ];
        Set<Integer> usedindices = new Set<Integer>();
        bingos = new List<User>();
        
        while(usedindices.size() < allusers.size() ){
            integer index =  math.round(Math.random()*(allusers.size()-1));
            //system.debug('INDEX VALUE: ' + index);
            if(!usedindices.contains(index)){
                usedindices.add(index);
                bingos.add(allusers[index]);
                if(usedindices.size() > totalsquares){ break; } // Break WHILE loop
            }           
        }
}
