public class BeerController {

    public void calculatePrice() {
        Integer total = 0;

        for (Integer i = 0; i < 10; i++) {
            total += i * 2;
        }

        // Update inventory with calculated total
        updateInventory(total);
    }

    public void updateInventory(Integer count) {
        System.debug('Updating inventory by: ' + count);
    }
}