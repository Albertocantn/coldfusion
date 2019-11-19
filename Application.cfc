component{


    this.name = "BulletinBoard";
    this.ormenabled = "true";
    this.datasource = "coldfusion";
    this.invokeImplicitAccessor = true;
    this.ormSettings = { logsql : true ,dbCreate:"update"};

    this.mappings = {
    "User" = expandPath('./User.cfc')
}; 



    function onApplicationStart(){
        ormReload();
    }

     function onRequestStart(){
        ormReload();
    }



}


