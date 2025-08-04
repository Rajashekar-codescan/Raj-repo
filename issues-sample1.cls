public class BeerController {

    public void calculatePrice() {
        // Fix UnusedLocalVariable
        Integer total = 0;
        Integer taxRate = 5;

        for (Integer i = 0; i < 10; i++) {
            total += i * 2;
        }

        // Fix CommentsRequired
        System.debug('Updating inventory by: ' + total);
    }
}