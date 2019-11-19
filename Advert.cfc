component persistent="true" table="Advert" {
    property name="id" column="id" fieldtype="id" generator="native";
    property name="titulo" ormtype="string";
    property name="descripcion" ormtype="string";
    property name="number_photos" ormtype="int";
    property name="category" ormtype="int";
    property name="userid" ormtype="int"



    function getName() {
        return uCase( variables.name );
    }


}
