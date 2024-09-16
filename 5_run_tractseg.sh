# Define the path to your subject list
SUBJECT_LIST=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist.txt
SUBJECT_LIST2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist2.txt
SUBJECT_LIST3=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3.txt
SUBJECT_LIST3_2=/Users/uqloestr/desktop/scripts/psilopain/Subjectlist3_2.txt

# Loop through each subject in the subject list
for subj in $(cat ${SUBJECT_LIST}) ; do

# Navigate to the subject's session directory
cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_1

#conda init bash
 Activate the Conda environment
 source ~/miniconda3/bin/activate tractseg_env
    
# Set the necessary environment variable for TractSeg
export KMP_DUPLICATE_LIB_OK=TRUE

# Run TractSeg commands
TractSeg -i ${subj}_1_denoised_preproc_biasFieldCorr.nii.gz -o ${subj}_1_tractseg_output --raw_diffusion_input --csd_type csd --brain_mask ${subj}_mask.nii.gz --bvals ${subj}_1_dwi.bval --bvecs ${subj}_1_dwi.bvec

TractSeg -i ${subj}_1_tractseg_output/peaks.nii.gz -o ${subj}_1_tractseg_output --output_type endings_segmentation

TractSeg -i ${subj}_1_tractseg_output/peaks.nii.gz -o ${subj}_1_tractseg_output --output_type TOM

Tracking -i ${subj}_1_tractseg_output/peaks.nii.gz -o ${subj}_1_tractseg_output

done



# Loop through each subject in the subject list
for subj in $(cat ${SUBJECT_LIST2}) ; do

# Navigate to the subject's session directory
cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_2

TractSeg -i ${subj}_2_denoised_preproc_biasFieldCorr.nii.gz -o ${subj}_2_tractseg_output --raw_diffusion_input --csd_type csd --brain_mask ${subj}_mask.nii.gz --bvals ${subj}_2_dwi.bval --bvecs ${subj}_2_dwi.bvec

TractSeg -i ${subj}_2_tractseg_output/peaks.nii.gz -o ${subj}_2_tractseg_output --output_type endings_segmentation

TractSeg -i ${subj}_2_tractseg_output/peaks.nii.gz -o ${subj}_2_tractseg_output --output_type TOM

Tracking -i ${subj}_2_tractseg_output/peaks.nii.gz -o ${subj}_2_tractseg_output

done


for subj in $(cat ${SUBJECT_LIST3}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3

TractSeg -i ${subj}_3_denoised_preproc_biasFieldCorr.nii.gz -o ${subj}_3_tractseg_output --raw_diffusion_input --csd_type csd --brain_mask ${subj}_mask.nii.gz --bvals ${subj}_3_dwi.bval --bvecs ${subj}_3_dwi.bvec

TractSeg -i ${subj}_3_tractseg_output/peaks.nii.gz -o ${subj}_3_tractseg_output --output_type endings_segmentation

TractSeg -i ${subj}_3_tractseg_output/peaks.nii.gz -o ${subj}_3_tractseg_output --output_type TOM

Tracking -i ${subj}_3_tractseg_output/peaks.nii.gz -o ${subj}_3_tractseg_output

done


for subj in $(cat ${SUBJECT_LIST3_2}) ; do

cd /Users/uqloestr/Desktop/James/analysis/${subj}/${subj}_3.2

TractSeg -i ${subj}_3.2_denoised_preproc_biasFieldCorr.nii.gz -o ${subj}_3.2_tractseg_output --raw_diffusion_input --csd_type csd --brain_mask ${subj}_mask.nii.gz --bvals ${subj}_3.2_dwi.bval --bvecs ${subj}_3.2_dwi.bvec

TractSeg -i ${subj}_3.2_tractseg_output/peaks.nii.gz -o ${subj}_3.2_tractseg_output --output_type endings_segmentation

TractSeg -i ${subj}_3.2_tractseg_output/peaks.nii.gz -o ${subj}_3.2_tractseg_output --output_type TOM

Tracking -i ${subj}_3.2_tractseg_output/peaks.nii.gz -o ${subj}_3.2_tractseg_output

done
