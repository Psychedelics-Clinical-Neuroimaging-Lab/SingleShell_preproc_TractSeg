SUBJECT_LIST=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist.txt
SUBJECT_LIST2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist2.txt
SUBJECT_LIST3=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3.txt
SUBJECT_LIST3_2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3_2.txt

for subj in $(cat ${SUBJECT_LIST}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_1

dwifslpreproc ${subj}_dwi_1_denoised.nii.gz ${subj}_1_dwi_denoised_preproc.nii.gz -rpe_pair -se_epi ${subj}_1_ALL_b0s.nii.gz -pe_dir ap -align_seepi -eddy_options " --slm=linear" -fslgrad ${subj}_1_dwi.bvec ${subj}_1_dwi.bval

done


for subj in $(cat ${SUBJECT_LIST2}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_2

dwifslpreproc ${subj}_dwi_2_denoised.nii.gz ${subj}_2_dwi_denoised_preproc.nii.gz -rpe_pair -se_epi ${subj}_2_ALL_b0s.nii.gz -pe_dir ap -align_seepi -eddy_options " --slm=linear" -fslgrad ${subj}_2_dwi.bvec ${subj}_2_dwi.bval

done


for subj in $(cat ${SUBJECT_LIST3}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3

dwifslpreproc ${subj}_dwi_3_denoised.nii.gz ${subj}_3_dwi_denoised_preproc.nii.gz -rpe_pair -se_epi ${subj}_3_ALL_b0s.nii.gz -pe_dir ap -align_seepi -eddy_options " --slm=linear" -fslgrad ${subj}_3_dwi.bvec ${subj}_3_dwi.bval

done

for subj in $(cat ${SUBJECT_LIST3_2}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3.2

dwifslpreproc ${subj}_dwi_3.2_denoised.nii.gz ${subj}_3.2_dwi_denoised_preproc.nii.gz -rpe_pair -se_epi ${subj}_3.2_ALL_b0s.nii.gz -pe_dir ap  -align_seepi -eddy_options " --slm=linear" -fslgrad ${subj}_3.2_dwi.bvec ${subj}_3.2_dwi.bval

done
