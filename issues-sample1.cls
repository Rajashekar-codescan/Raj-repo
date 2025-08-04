public class BeerController {

    public void calculatePrice() {
        Integer total = 0;
        Integer taxRate = 5;

        for (Integer i = 0; i < 10; i++) {
            total += i * 2;
        }

        // Update inventory by the calculated price
        updateInventory(total);
    }

    public void updateInventory(Integer count) {
        System.debug('Updating inventory by: ' + count);
    }
}