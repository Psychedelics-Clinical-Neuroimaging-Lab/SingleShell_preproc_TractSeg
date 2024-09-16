SUBJECT_LIST=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist.txt
SUBJECT_LIST2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist2.txt
SUBJECT_LIST3=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3.txt
SUBJECT_LIST3_2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3_2.txt


for subj in $(cat ${SUBJECT_LIST}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_1

dwiextract  ${subj}_dwi_1_denoised.nii.gz -bzero ${subj}_b0_AP.nii.gz -fslgrad ${subj}_1_dwi.bvec ${subj}_1_dwi.bval

mrcat ${subj}_b0_AP.nii.gz ${subj}_1_b0_AP.nii.gz ${subj}_AP_ALL_b0s.nii.gz -axis 3

mrmath  ${subj}_AP_ALL_b0s.nii.gz mean ${subj}_meanb0_AP.nii.gz  -axis 3

mrcat ${subj}_meanb0_AP.nii.gz ${subj}_1_b0_PA.nii.gz ${subj}_1_ALL_b0s.nii.gz -axis 3

done


for subj in $(cat ${SUBJECT_LIST2}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_2

dwiextract  ${subj}_dwi_2_denoised.nii.gz -bzero ${subj}_b0_AP.nii.gz -fslgrad ${subj}_2_dwi.bvec ${subj}_2_dwi.bval

mrcat ${subj}_b0_AP.nii.gz ${subj}_2_b0_AP.nii.gz ${subj}_AP_ALL_b0s.nii.gz -axis 3

mrmath  ${subj}_AP_ALL_b0s.nii.gz mean ${subj}_meanb0_AP.nii.gz  -axis 3

mrcat ${subj}_meanb0_AP.nii.gz ${subj}_2_b0_PA.nii.gz ${subj}_2_ALL_b0s.nii.gz -axis 3

done


for subj in $(cat ${SUBJECT_LIST3}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3

dwiextract  ${subj}_dwi_3_denoised.nii.gz -bzero ${subj}_b0_AP.nii.gz -fslgrad ${subj}_3_dwi.bvec ${subj}_3_dwi.bval

mrcat ${subj}_b0_AP.nii.gz ${subj}_3_b0_AP.nii.gz ${subj}_AP_ALL_b0s.nii.gz -axis 3

mrmath  ${subj}_AP_ALL_b0s.nii.gz mean ${subj}_meanb0_AP.nii.gz  -axis 3

mrcat ${subj}_meanb0_AP.nii.gz ${subj}_3_b0_PA.nii.gz ${subj}_3_ALL_b0s.nii.gz -axis 3

done

for subj in $(cat ${SUBJECT_LIST3_2}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3.2

dwiextract  ${subj}_dwi_3.2_denoised.nii.gz -bzero ${subj}_b0_AP.nii.gz -fslgrad ${subj}_3.2_dwi.bvec ${subj}_3.2_dwi.bval

mrcat ${subj}_b0_AP.nii.gz ${subj}_3.2_b0_AP.nii.gz ${subj}_AP_ALL_b0s.nii.gz -axis 3

mrmath  ${subj}_AP_ALL_b0s.nii.gz mean ${subj}_meanb0_AP.nii.gz  -axis 3

mrcat ${subj}_meanb0_AP.nii.gz ${subj}_3.2_b0_PA.nii.gz ${subj}_3.2_ALL_b0s.nii.gz -axis 3

done
