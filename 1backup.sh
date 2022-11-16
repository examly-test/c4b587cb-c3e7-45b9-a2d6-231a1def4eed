# $databases = sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "BACKUP DATABASE  TO DISK = 'home/coder/project/workspace'"
# sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "RESTORE DATABASE master FROM DISK = '/var/opt/mssql/master.bak' WITH REPLACE"
# sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "SELECT name FROM master.sys.databases"
    
# i=0
# while IFS=$'\t' read name pass[i++] ;do
#     if(( $i>2 && $i<9))
#         then
#             myDB=$(echo $name .bak | tr -d ' ')
#            sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "BACKUP DATABASE $name TO DISK = '/var/opt/mssql/$myDB'"
#            echo $name
#         fi
#   done  < <(sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "SELECT name FROM master.sys.databases")

# i=0
# while IFS=$'\t' read name pass[i++] ;do

#     if(( $i>2 && $i<7))
#         then
#             myDB=$(echo $name .bak | tr -d ' ')
#            sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "RESTORE DATABASE $name FROM DISK = '/var/opt/mssql/$myDB' WITH REPLACE"
#            echo $name
#         fi
#   done  < <(sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "SELECT name FROM master.sys.databases")


# echo $(pwd)



# kubectl exec -it dcdbdadacceceffbfffcbccebbbaacbbdceeb-0 -c mssql-persistent-storage bash

# sqlcmd -U SA -P examlyMssql@123  -Q "ALTER DATABASE master SET SINGLE_USER WITH ROLLBACK IMMEDIATE"

# sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "SELECT name FROM master.sys.databases"
# net stop MSSQLSERVER

# count = $(sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "SELECT count(name) FROM master.sys.databases")
# 


# sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "RESTORE DATABASE master FROM DISK = '/var/opt/mssql/master.bak' WITH REPLACE"
# akash=`sqlcmd -S localhost -U sa -P examlyMssql@123 -Q SELECT name FROM master.sys.databases`

# fetchDBName=$(sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "SELECT name FROM master.sys.databases") && listDB=$(echo $fetchDBName | cut -d' ' -f3-)  && unset 'listDB[${#listDB[@]}-1]' && unset 'listDB[${#listDB[@]}-1]' && unset 'listDB[${#listDB[@]}-1]'
#emp_list=`sqlcmd -S localhost -U sa -P examlyMssql@123 <<END SELECT name FROM master.sys.databases;END`
# echo ${listDB[@]} | tr " " ".bak "

# myarray=$(${listDB[@]} | sed -i 's/ /.bak /g')


# fetchDBName=$(sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "SELECT name FROM master.sys.databases") && listDB=$(echo $fetchDBName | cut -d' ' -f3-  | rev | cut -d' ' -f4- | rev )
# for a in $listDB ; do sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "BACKUP DATABASE $a TO DISK = '/var/opt/mssql/$a.bak'" ; done #sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "BACKUP DATABASE $a TO DISK = '/var/opt/mssql/$a.bak'";  done
# finalDBList=$(echo $listDB.bak | sed -r 's/ /.bak /g')
# for a in $listDB; do echo $a; done
# touch backupDBlist.txt && echo $finalDBList >> backupDBlist.txt
# tar -cvzf db-backup.tar $finalDBList backupDBlist.txt
# echo $finalDBList

# sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "echo akash"




# dbArray=$(echo "${onlyName[@]}.bak" | sed -r 's/ /.bak /g')
# dbArray1=$(echo "$emp_list" | cut -d' ' -f3-)
# echo $dbArray " ------- " $dbArray1;

# echo $myarray
#read -a myarray <<< $emp_list

#myarray=(`echo $emp_list | tr ' ' ','`);

#echo ${myarray[@]};

# echo $emp_list | cut -d' ' -f3- | cut -c 1-39;
# echo $emp_list | cut -c 1-9 ;
# echo $emp_list | awk  '/(*)/';
# # for word in $emp_list
# # do
# #     echo $word
# # done

# tar -cvf db-backup.tar master.bak main.bak akash.bak 


# dblist=$(grep .bak backupDBlist.txt) && echo $dblist && for db in $dblist; do echo $db ; done
# sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "RESTORE DATABASE master FROM DISK = '/var/opt/mssql/master.bak' WITH REPLACE" ; done 

# cd /home/coder/project/workspace/ && if [ true ]; then (sleep 1 &&  fetchDBName=$(sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "SELECT name FROM master.sys.databases") && echo $fetchDBName && listDB=$(echo $fetchDBName | cut -d' ' -f3-  | rev | cut -d' ' -f4- | rev )  && for a in $listDB; do sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "BACKUP DATABASE $a TO DISK = '/var/opt/mssql/$a.bak'" ; done  && finalDBList=$(echo $listDB.bak | sed -r 's/ /.bak /g')  && cd /var/opt/mssql && touch backupDBlist.txt && echo $finalDBList >> backupDBlist.txt  && tar -cvzf db-dcdbdadacceceffbfffcbccebbbaacbbdceeb.tar $finalDBList backupDBlist.txt ) ; fi

fetchDBName=$(sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "SELECT name FROM master.sys.databases") && echo $fetchDBName && listDB=$(echo $fetchDBName | cut -d' ' -f3-  | rev | cut -d' ' -f4- | rev )  && echo $listDB 
for a in $listDB; do if [ $a != "tempdb" ]; then sqlcmd -S localhost -U sa -P examlyMssql@123 -Q "BACKUP DATABASE $a TO DISK = '/var/opt/mssql/$a.bak'"; fi ; done