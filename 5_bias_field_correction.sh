SUBJECT_LIST=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist.txt
SUBJECT_LIST2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist2.txt
SUBJECT_LIST3=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3.txt
SUBJECT_LIST3_2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3_2.txt

for subj in $(cat ${SUBJECT_LIST}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_1

dwibiascorrect ants ${subj}_1_dwi_denoised_preproc.nii.gz ${subj}_1_denoised_preproc_biasFieldCorr.nii.gz -mask ${subj}_mask.nii.gz -fslgrad ${subj}_1_dwi.bvec ${subj}_1_dwi.bval -force

done


for subj in $(cat ${SUBJECT_LIST2}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_2

dwibiascorrect ants ${subj}_2_dwi_denoised_preproc.nii.gz ${subj}_2_denoised_preproc_biasFieldCorr.nii.gz -mask ${subj}_mask.nii.gz -fslgrad ${subj}_2_dwi.bvec ${subj}_2_dwi.bval -force

done


for subj in $(cat ${SUBJECT_LIST3}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3

dwibiascorrect ants ${subj}_3_dwi_denoised_preproc.nii.gz ${subj}_3_denoised_preproc_biasFieldCorr.nii.gz -mask ${subj}_mask.nii.gz -fslgrad ${subj}_3_dwi.bvec ${subj}_3_dwi.bval -force

done


for subj in $(cat ${SUBJECT_LIST3_2}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3.2

dwibiascorrect ants ${subj}_3.2_dwi_denoised_preproc.nii.gz ${subj}_3.2_denoised_preproc_biasFieldCorr.nii.gz -mask ${subj}_mask.nii.gz -fslgrad ${subj}_3.2_dwi.bvec ${subj}_3.2_dwi.bval -force

done
