# counters

To Deploy --> elm make src/Main.elm

I am going to build a simple counter program but with multiple counters tracked by index in the model list of ints.  It is cool because you can indexedmap over the model to access the required counter data.  This is done in both the view and update functions.  I guess this means that lists in Elm retain their order. Start by creating a sandbox with initial model of two zeroed counter representations (Int).  The messages are all coming from user interaction with the view (Html events).
