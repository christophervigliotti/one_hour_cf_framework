<cfscript>
    /* 
    what is this?
        it's "the one-hour ColdFusion framework" lol
    
    what does it do
        controller file 
            builds template name and optional js file from url.action
            builds the page title from url.action (with optional override)
        this page
            loads header, view and footer
    
    what doesn't it do
        anything not mentioned above
        dependency injection
        handle different headers and footers
        contain a much-needed Application.cfm file

    what's next
        add in bootstrap so that it doesn't look horrible
        that's about it (this was more of a quick thought than anything)
        getView 
            should be handled as handleAction, 
            should perform action(s) for the current, specified action 
            and then should return results
            it should also handle routing/redirects
            also security!
    */

    // controller
    param request.controller = CreateObject('component','controller.controller').init();

    // view
    request.view = request.controller.getView(url);

    include 'view/shared/header.cfm';
    include 'view/shared/footer.cfm';
</cfscript>