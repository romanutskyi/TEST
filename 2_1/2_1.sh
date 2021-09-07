#!/bin/bash

a=`hostname`
b=`hostname -I`
c=`date`
d=`echo $HOME`
e=`whoami`

if [ -n "$3" ]
  then
    f=$3
  else
    f='John'
fi

if [ -n "$5" ]
  then
    l=$5
  else
    l='Doe'
fi

sed -e "s/{hostname}}/${a}/g; \
        s/{{ip}}/${b}/g; \
        s/{{current_date}}/${c}/g; \
        s/{{username}}/${e}/g; \
        s/{{home_folder}}/${d##/}/g; \
        s/{{first_name}}/${f}/g; \
        s/{{last_name}}/${l}/g;" $1 > output.yml
