echo "in $0"
echo ">>> move some apps to data folder"

mkdir -p out/merged_target_files/DATA
OUT_DIR=out/merged_target_files/
OUT_SYSTEM_DIR=out/merged_target_files/SYSTEM
OUT_DATA_DIR=out/merged_target_files/DATA

mv $OUT_SYSTEM_DIR/app/BaiduMap.apk $OUT_DATA_DIR/
mv $OUT_SYSTEM_DIR/app/iReader.apk $OUT_DATA_DIR/
mv $OUT_SYSTEM_DIR/app/BaiduInput.apk $OUT_DATA_DIR/
mv $OUT_SYSTEM_DIR/app/BaiduVideoEditor.apk $OUT_DATA_DIR/
mv $OUT_SYSTEM_DIR/app/HelpBook.apk $OUT_DATA_DIR/

