component persistent="true" table="Category" {
    property name="id" column="id" fieldtype="id" generator="native";
    property name="titulo" ormtype="string";
    property name="descripcion" ormtype="string";
    property name="principal_photo" ormtype="string";




    function getName() {
        return uCase( variables.name );
    }


}
