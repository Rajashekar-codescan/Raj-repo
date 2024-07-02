 public class Foo{
          public PageReference absoluteRedirect() {
              String fullUrl ='https://bad-practice.salesforce.com/TestPage?some=thing'; //Using this hardcoded URL could fail depending on the environment it was run in
              PageReference newUrl = new PageReference(fullURL);
              newURL.setRedirect(true);
              return newURL;
          }

          public PageReference relativeRedirect() {
              String relativeUrl = URL.getSalesforceBaseUrl().toExternalForm() + '/TestPage?some=thing';  //Using a relative address make this code usable across any environment
              PageReference newUrl = new PageReference(relativeUrl);
              newURL.setRedirect(true);
              return newURL;
          }
      }
 cs-sarif-report
     
      mqdkmmain
