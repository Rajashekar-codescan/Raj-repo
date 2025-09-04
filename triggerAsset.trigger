trigger AssetTriggerWithoutFrameWork on Asset (before insert) {
    if(trigger.isBefore) {
        for(Asset newAsset : trigger.new) {
            
        }
    }
}