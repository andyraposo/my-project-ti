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

tar -czvf backup.tar.gz /home/mfernando/.thunderbird /home/mfernando/Documentos >> $LOG
mv /root/backup* /media/6A4229A7422978C9/backups >> $LOG

FINAL=`date +%d/%m/%Y-%H:%M:%S`

  echo "  Sincronizacao Finalizada em $FINAL" >> $LOG
  echo "--------------------------------------------------------"  >> $LOG
  echo " " >> $LOG
