console
=======

An Actionscript library for calling console.log and console.error in firebug

You can also create a javascript alert. (Does not require Firebug)

If you want firebug style debugging then add the latest build to your actionscript sources and do the following:

    import console;
    # Calls console.log
    console.log("Hello Foxy lady");
    # calls console.error
    console.error("Hello Foxy lady");
    # calls creates a javascript alert box (does not require firebug)
    console.alert("Hello Foxy lady");

