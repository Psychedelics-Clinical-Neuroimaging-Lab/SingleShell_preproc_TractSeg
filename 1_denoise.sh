SUBJECT_LIST=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist.txt
SUBJECT_LIST2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist2.txt
SUBJECT_LIST3=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3.txt
SUBJECT_LIST3_2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3_2.txt

for subj in $(cat ${SUBJECT_LIST}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_1

dwidenoise ${subj}_1_dwi.nii.gz ${subj}_dwi_1_denoised.nii.gz  -force

done



for subj in $(cat ${SUBJECT_LIST2}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_2

dwidenoise ${subj}_2_dwi.nii.gz ${subj}_dwi_2_denoised.nii.gz  -force

done



for subj in $(cat ${SUBJECT_LIST3}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3

dwidenoise ${subj}_3_dwi.nii.gz ${subj}_dwi_3_denoised.nii.gz  -force

done


for subj in $(cat ${SUBJECT_LIST3_2}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3.2

dwidenoise ${subj}_3.2_dwi.nii.gz ${subj}_dwi_3.P2_denoised.nii.gz  -force




done
