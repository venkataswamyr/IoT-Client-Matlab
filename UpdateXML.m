function [response]=UpdateXML(UID, Pin, ControlValue)
 
xmldata=xmlconstruct(ControlValue);
URL = strcat('https://openioe.herokuapp.com/api/updatexml/',UID,'/',Pin);
data = xmlreadstring(xmldata);
options = weboptions('MediaType','application/xml');
response = webwrite(URL,data,options);
end