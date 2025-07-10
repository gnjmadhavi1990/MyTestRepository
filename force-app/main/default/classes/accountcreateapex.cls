public class accountcreateapex {
    
    public static list<account> ifacccreate(list<account> acc){
        for(account racc : acc){
            racc.description = 'Account is created';
            
        }
        return acc;
    }
              public static list<account> ifaccupdate(list<account> acc , Map<id,account> Accmap){
                  if(trigger.isexecuting == true && test.isRunningTest() == true){
                  for(account racc : acc){
                      system.debug('rating racc'+racc.rating);
                      system.debug('accmap rating'+Accmap.get(racc.Id).rating);
             if(racc.rating == 'Hot'  && Accmap.get(racc.Id).rating == 'Warm'){
            racc.description = 'rating changed into warm to hot';
                  }
}
                      
}
                  return acc;
}
     public static void ifaccinsert(list<account> acc, Map<id,account> Accmap){
         for(account racc : acc){
             racc.description = 'account'+racc.id+'Inserted';
             
         }
         insert acc;
     }
}