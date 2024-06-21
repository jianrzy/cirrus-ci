if [ -f ~/rom/out/target/product/gts210velte/lineage*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/gts210velte/ && ls lineage*.zip)"
      rclone copy ~/rom/out/target/product/gts210velte/lineage*.zip bon:ROM -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/gts210velte/ && ls lineage*.zip) Uploaded Successfully!"
fi
