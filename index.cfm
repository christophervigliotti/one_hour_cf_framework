<cfscript>
    /*
    Application.cfc
        onApplicationStart
            application.datasource = 'cfbookclub';
            application.controller = CreateObject('component','controller.controller').init();
            application.controller.createModels(application.datasource);
        onRequestStart
            request.controller_response = application.controller.do(url,form);
            request.view = application.controller.do(url,form);
    */

    // controller (move to application scope)
    param request.queries = StructNew('');
    param request.controller = CreateObject('component','controller.controller').init();
    param url.action = 'home';

    // view
    request.view = request.controller.getCurrentViewDetails(url);

    include 'view/shared/header.cfm';
    include request.view.template_path;
    include 'view/shared/footer.cfm';
</cfscript>