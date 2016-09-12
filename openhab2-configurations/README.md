# README #


### How to work ###

* Download Openhab Designer in following link [ESH - Download](https://www.eclipse.org/smarthome/documentation/community/downloads.html)
* Select configuration folder in left top panel of Openhab Designer
* In the selection dialog, pointing it to $TMA_SO_HOME/sources/openhab2-configurations
* After that, you can see:
    - Demo.items: defining all items you have in the system
    - Demo.sitemap: defining GUI
    - Demo.rules: defining rules
* Try to update something
* Execute following script to deploy Openhab's configuration
```
#!shell
    $TMA_SO_HOME/sources/scripts/deployOpenhabConfig
```

