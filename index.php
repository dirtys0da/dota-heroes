<?php
$file = 'heroes.xml';
$schema = 'heroes.xsd';
$ab = new DOMDocument;
$ab->load($file);

if($ab->schemaValidate($schema)){
    print "$file is valid.\n";
}else{
    print "$file is invalid.\n";
}
?>
