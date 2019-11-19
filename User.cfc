component persistent="true" table="User" {

    property name="id" column="id" fieldtype="id" generator="native";
    property name="email" column="email" ormtype="string";
    property name="role" ormtype="int";
    property name="phone" ormtype="string";
    property name="password" ormtype="string";



    function getName() {
        return uCase( variables.name );
    }


}
