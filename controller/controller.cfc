component {

    // constants 
    variables.view_parts.template_path_prefix = 'view/';
    variables.view_parts.template_path_suffix = '.cfm';

    variables.default_view.template_name = 'home';
    variables.default_view.page_title = 'Home';
    variables.default_view.template_path = 
        variables.view_parts.template_path_prefix 
        & variables.default_view.template_name
        & variables.view_parts.template_path_suffix;

    // properties

    // methods

    public any function init(){
        return this;
    }

    public struct function getView(
        required struct urlScope
    ){
        var view = {
            template_name = '',
            page_title = '',
            template_path = ''
        };

        if(StructKeyExists(arguments.urlScope,"action")){
            view.template_name = arguments.urlScope.action;
            view.page_title = getPageTitle(arguments.urlScope.action);
            view.template_path = getViewTemplatePath(arguments.urlScope.action);
        }else{
            view = variables.default_view;
        }

        return view;
    }

    public string function getViewTemplatePath(
        required string template_name
    ){
        return 
            variables.view_parts.template_path_prefix 
            & arguments.template_name
            & variables.view_parts.template_path_suffix;
    }

    public string function getPageTitle(
        required string template_name
    ){
        var page_title = '';
        var word = '';

        // manually add cases to override the default behavior for building the page title
        switch(arguments.template_name) {
            case "home":
                page_title = "Hello, World!";
            break; 
            default: 
                for(item in listToArray(arguments.template_name, "_")){ 
                    word = 
                        UCase(Left(item,1))
                        & LCase(Right(item,(Len(item) - 1)))
                        & ' ';
                    page_title &= word;

                }     
            break; 
        }        

        return Trim(page_title);
    }
}