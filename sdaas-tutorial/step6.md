Create a script to rebuild the whole knowledge base is easy.

exit fron sdaas cli:

`exit`{{execute}}

create a directory named "questions" an move in all your sparql queries
`mkdir -p questions`{{execute}}
`cp -f *.sparql questions/`{{execute}}

Create a file with name build.sdaas (you chan choose the name) and put all SD_ commands one per line. the last line will be SD_THATS_ALL_FOLKS

`cat build.sdaas`{{execute}}

Rebuild the whole knowledge base from scratch:

`sdaas -f build.sdaas --reboot`{{execute}}

At the end a new directory "distrib" wil be created, inside it directory (wit a time stam as name) containing the answers to your questions.

`cat distrib/*/*.csv`{{execute}}