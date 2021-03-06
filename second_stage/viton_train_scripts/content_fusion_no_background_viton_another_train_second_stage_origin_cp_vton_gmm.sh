



# CUDA_VISIBLE_DEVICES=2 python content_fusion_mpv_train.py \
#                         --phase train \
#                         --name content_fusion_pix2pixhd_viton \
#                         --data_list train_pairs.txt \
#                         --gpu_ids 0 \
#                         --model viton_cvpr_content_fusion \
#                         --vgg_weight 10 \
#                         --no_instance \
#                         --checkpoints_dir ../pix2pix_viton_results/checkpoint_no_background_another_train_viton_content_fusion_pix2pixhd_viton \
#                         --dataroot /data/lgq/database/viton_resize \
#                         --batchSize 1 \
#                         --dataset_name content_fusion_viton \
#                         --gmm_path /data/lgq/new_graduate/viton_refined_results/images_long_train_One_model_add_render_loss_refined_gmm_train_cloth_points/refined_gmm_final.pth \
#                         --semantic_path /data/lgq/new_graduate/pix2pix_viton_results/images_long_train_semantic_pix2pixhd_viton/semantic_pix2pixhd \


CUDA_VISIBLE_DEVICES=2 python content_fusion_mpv_test.py \
                        --phase test \
                        --name content_fusion_pix2pixhd_viton \
                        --data_list test_pairs.txt \
                        --gpu_ids 0 \
                        --model viton_cvpr_content_fusion \
                        --vgg_weight 10 \
                        --no_instance \
                        --warped \
                        --checkpoints_dir ../pix2pix_viton_results/checkpoint_no_background_another_train_viton_content_fusion_pix2pixhd_viton \
                        --results_dir ../pix2pix_viton_results/images_first_stage_orgin_cp_vton_gmm_second_stage_content_fusion \
                        --dataroot /data/lgq/database/viton_resize \
                        --batchSize 1 \
                        --dataset_name content_fusion_viton \
                        --gmm_path /data/lgq/new_graduate/origin_cp_vton/vton_results/results_train_origin/gmm_final.pth \
                        --semantic_path /data/lgq/new_graduate/pix2pix_viton_results/images_long_train_semantic_pix2pixhd_viton/semantic_pix2pixhd \
                        --how_many 40000 \