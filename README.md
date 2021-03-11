By: Titus#8023
All credits to Brentn5 who createt Polyzone and bt-target: https://forum.cfx.re/t/release-standalone-target-tracking/2270296
Credits for pNotify: Nick78111: https://forum.cfx.re/u/nick78111/summary

Link to the dependencies:

[polyzone](https://forum.cfx.re/t/release-standalone-polyzone-tracking/2254628)
bt-target: https://forum.cfx.re/t/release-standalone-target-tracking/2270296
pNotify: https://forum.cfx.re/t/release-pnotify-in-game-js-notifications-using-noty/20659

You have to add to your bt-target this:


        local coffee = {
         690372739,
        }

        AddTargetModel(coffee, {
          options = {
            {
                event = "titus-automaten:coffe",
                icon = "fas fa-coffee",
                label = "Kaffee",
            },
        },
        job = {"all"},
        distance = 2.5
    })

    local cola = {
        992069095,
        2553529778,
        1114264700,
        
    }
    AddTargetModel(cola, {
        options = {
            {
                event = "titus-automaten:cola",
                icon = "fas fa-coffee",
                label = "Cola",
            },
            {
                event = "titus-automaten:water",
                icon = "fas fa-glass-whiskey",
                label = "Wasser",
            },
            {
                event = "titus-automaten:milch",
                icon = "fas fa-fill-drip",
                label = "Milch",
            },
        },
        job = {"all"},
        distance = 2.5
    })
    
    This adds that you can use the Vending Machines with bt-target.

