#! /bin/bash
while true
do
echo 'Written by Pervysin Sergey 710-1'
echo 'Current directory is' "$PWD"
   while true
   do
      echo 'Enter name of file'
      read -r FileName;
       if test -f "$FileName"
       then
        break;
       fi
  done
echo "$(date -r "$FileName")"
if test -f "$FileName"
   then
     echo 'File found, enter the date'
     
     read CheckDate;
       if [ "$(date -r "$FileName" +%s)" -gt "$(date --date="$CheckDate" +%s)" ];
        then
           echo "File has been modified after $CheckDate"
           echo "120"
           break;
           
        else
           echo "File has been not modified after $CheckDate"       
       fi
   else
     echo 'File not found'     
fi
echo 'Do you want repeat operation? (yes=y,no=n)'
read choise
if [[ $choise == "y" ]];
then echo 'Ok, repeat';
elif [[ $choise == "n" ]];
then echo 'end'; 
break;
else echo 'uncorrect input';
break;
fi
done


