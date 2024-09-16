SUBJECT_LIST=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist.txt
SUBJECT_LIST2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist2.txt
SUBJECT_LIST3=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3.txt
SUBJECT_LIST3_2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3_2.txt

for subj in $(cat ${SUBJECT_LIST}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_1

dwi2mask  ${subj}_dwi_1_denoised.nii.gz ${subj}_mask.nii.gz  -fslgrad ${subj}_1_dwi.bvec ${subj}_1_dwi.bval

done


for subj in $(cat ${SUBJECT_LIST2}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_2

dwi2mask  ${subj}_dwi_2_denoised.nii.gz ${subj}_mask.nii.gz  -fslgrad ${subj}_2_dwi.bvec ${subj}_2_dwi.bval

done


for subj in $(cat ${SUBJECT_LIST3}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3

dwi2mask  ${subj}_dwi_3_denoised.nii.gz ${subj}_mask.nii.gz  -fslgrad ${subj}_3_dwi.bvec ${subj}_3_dwi.bval

done


for subj in $(cat ${SUBJECT_LIST3_2}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3.2

dwi2mask  ${subj}_dwi_3.2_denoised.nii.gz ${subj}_mask.nii.gz  -fslgrad ${subj}_3.2_dwi.bvec ${subj}_3.2_dwi.bval

done
