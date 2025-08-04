public class BeerController {

    public void calculatePrice() {
        Integer total = 0;
        // rule UnusedLocalVariable: Detects when a local variable is declared and/or assigned, but not used.
        Integer taxRate = 5;

        for (Integer i = 0; i < 10; i++) {
            total += i * 2;
        }


        // rule CommentsRequired: Denotes whether comments are required (or unwanted) for specific language elements.
        updateInventory(total);
    }

    public void updateInventory(Integer count) {
        System.debug('Updating inventory by: ' + count);
    }
}