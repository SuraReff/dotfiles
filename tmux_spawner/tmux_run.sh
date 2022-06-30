#/bin/bash
# List *.todo file on the directory and create tmux session 
exists=0
new=0

ls ~/*.todo
out_status=$?
echo $out_status

if [[ $out_status -ne 0 ]]
then
        echo "run log: `date` is no .todo file" | tee ~/tmux_spawner.log
        exit 0 
fi

for todo_word in `ls ~/*.todo | awk -F'/' '{print $1}' | awk -F'.' '{print $1}'`
do
  for i in `tmux ls | awk -F':' '{print $1}'`
  do
  	echo $todo_word $i
  	if [[ $i == $todo_word ]]
  	then
  		echo "YeaH Session for $todo_word already exists"
                        exists=1
  	else
                        echo "Creating Session for $todo_word"
                        new=1
  	fi
  done
  
  if [[ exists -eq 0 ]] 
  then 
    tmux new -s $todo_word -d
  fi

done
