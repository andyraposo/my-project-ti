#!/bin/sh

#################################################################################################
#                                    Sistema de Backup                                          #
#                                                                                               # 
# Autor: Marcos Fernando Maichaki    Data:18/05/2012                                            #
#################################################################################################

INICIO=`date +%d/%m/%Y-%H:%M:%S`
LOG=/var/log/backup/backup.log_`date +%d-%m-%Y`
  
  echo " " >> $LOG
  echo "--------------------------------------------------------"  >> $LOG
  echo "  Sincronizacao iniciada em $INICIO" >> $LOG

tar -cvf backup-`date +%d-%m-%Y`.tar /home/mfernando/.thunderbird /home/mfernando/.mozilla /home/mfernando/Documentos >> $LOG
mv /root/backup* /mnt/win/backups/ >> $LOG

FINAL=`date +%d/%m/%Y-%H:%M:%S`

  echo "  Sincronizacao Finalizada em $FINAL" >> $LOG
  echo "--------------------------------------------------------"  >> $LOG
  echo " " >> $LOG
