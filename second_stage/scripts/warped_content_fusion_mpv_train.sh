



# CUDA_VISIBLE_DEVICES=0 python content_fusion_mpv_train.py \
#                         --phase train \
#                         --name content_fusion_pix2pixhd_mpv \
#                         --gpu_ids 0 \
#                         --model content_fusion_mpv \
#                         --vgg_weight 10 \
#                         --no_instance \
#                         --checkpoints_dir ../pix2pix_results/checkpoint_warped_content_fusion_pix2pixhd_mpv \
#                         --dataroot /data/lgq/database/mpv \
#                         --batchSize 1 \
#                         --dataset_name content_fusion_mpv \
#                         --warped \
#                         --gmm_path /data/lgq/new_graduate/results/images_refined_gmm_png_train_cloth_points/refined_gmm_final.pth \
#                         --semantic_path /data/lgq/new_graduate/pix2pix_results/images_semantic_pix2pixhd_mpv/semantic_pix2pixhd_mpv
# CUDA_VISIBLE_DEVICES=0 python content_fusion_mpv_test.py \
#                         --phase test \
#                         --name content_fusion_pix2pixhd_mpv \
#                         --gpu_ids 0 \
#                         --model content_fusion_mpv \
#                         --vgg_weight 10 \
#                         --no_instance \
#                         --checkpoints_dir ../pix2pix_results/checkpoint_warped_content_fusion_pix2pixhd_mpv \
#                         --results_dir ../pix2pix_results/images_warped_content_fusion_pix2pixhd_mpv \
#                         --dataroot /data/lgq/database/mpv \
#                         --batchSize 1 \
#                         --dataset_name content_fusion_mpv \
#                         --warped \
#                         --gmm_path /data/lgq/new_graduate/results/images_refined_gmm_png_train_cloth_points/refined_gmm_final.pth \
#                         --semantic_path /data/lgq/new_graduate/pix2pix_results/images_semantic_pix2pixhd_mpv/semantic_pix2pixhd_mpv \
#                         --how_many 40000 \