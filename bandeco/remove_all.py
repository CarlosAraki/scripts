 #!/usr/bin/env python

import sys
sys.path.append("~/scripts/bandeco")
with open('cardapio', 'r') as noisnafita:
    data=noisnafita.read()
data1 = data
data1 = data1.replace('							<td><strong>PRATO PRINCIPAL:</strong> <br>', '')
data1 = data1.replace('</td>','')
print  data1
noisnafita.close()