function xmldata=xmlconstruct(Control)

docNode = com.mathworks.xml.XMLUtils.createDocument('Robot');

entry_node = docNode.createElement('Control');
docNode.getDocumentElement.appendChild(entry_node);


name_node = docNode.createElement('Value');
name_text = docNode.createTextNode(num2str(Control));
name_node.appendChild(name_text);
entry_node.appendChild(name_node);


xmldata=xmlwrite(docNode);