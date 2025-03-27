public String header(String header, String value){
    if (header.toLower().contains("host")){
        value = "***";
    }
  return value;
}
