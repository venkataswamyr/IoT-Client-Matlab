clc;
clear all;
import javax.xml.xpath.*

url = 'https://embeddedcloudemulator.herokuapp.com/Console/showxml/1001/93';
options = weboptions('ContentType','text');
xml = webread(url,options);

doc=xmlreadstring(xml);
    
factory = XPathFactory.newInstance;
xpath = factory.newXPath;

AO0 = str2double(xpath.compile('//Device/AO/AO0').evaluate(doc, XPathConstants.STRING));
AO1 = str2double(xpath.compile('//Device/AO/AO1').evaluate(doc, XPathConstants.STRING));

AI0 = str2double(xpath.compile('//Device/AI/AI0').evaluate(doc, XPathConstants.STRING));
AI1 = str2double(xpath.compile('//Device/AI/AI1').evaluate(doc, XPathConstants.STRING));


DO0 = str2double(xpath.compile('//Device/DO/DO0').evaluate(doc, XPathConstants.STRING));
DO1 = str2double(xpath.compile('//Device/DO/DO1').evaluate(doc, XPathConstants.STRING));
DO2 = str2double(xpath.compile('//Device/DO/DO2').evaluate(doc, XPathConstants.STRING));
DO3 = str2double(xpath.compile('//Device/DO/DO3').evaluate(doc, XPathConstants.STRING));
DO4 = str2double(xpath.compile('//Device/DO/DO4').evaluate(doc, XPathConstants.STRING));
DO5 = str2double(xpath.compile('//Device/DO/DO5').evaluate(doc, XPathConstants.STRING));
DO6 = str2double(xpath.compile('//Device/DO/DO6').evaluate(doc, XPathConstants.STRING));
DO7 = str2double(xpath.compile('//Device/DO/DO7').evaluate(doc, XPathConstants.STRING));

DIO0 = str2double(xpath.compile('//Device/DIO/DIO0').evaluate(doc, XPathConstants.STRING));
DIO1 = str2double(xpath.compile('//Device/DIO/DIO1').evaluate(doc, XPathConstants.STRING));
DIO2 = str2double(xpath.compile('//Device/DIO/DIO2').evaluate(doc, XPathConstants.STRING));
DIO3 = str2double(xpath.compile('//Device/DIO/DIO3').evaluate(doc, XPathConstants.STRING));
DIO4 = str2double(xpath.compile('//Device/DIO/DIO4').evaluate(doc, XPathConstants.STRING));
DIO5 = str2double(xpath.compile('//Device/DIO/DIO5').evaluate(doc, XPathConstants.STRING));
DIO6 = str2double(xpath.compile('//Device/DIO/DIO6').evaluate(doc, XPathConstants.STRING));
DIO7 = str2double(xpath.compile('//Device/DIO/DIO7').evaluate(doc, XPathConstants.STRING));

AO=[AO0 AO1]
DIO=[DIO0 DIO1 DIO2 DIO3 DIO4 DIO5 DIO6 DIO7]
DO=[DO0 DO1 DO2 DO3 DO4 DO5 DO6 DO7]
    
