# 1. 初始化環境
quit -sim
.main clear

vlib work
vmap work work

# 2. 編譯檔案 (請確保路徑與拼字正確)
# 刪除原本會報錯的 vlog tb_top.sv
# 修正 testbench 的拼寫（請確認你的資料夾到底是 testbecnh 還是 testbench）


vlog -sv -f rtl_sv.f
vlog -sv -f rtl_v.f

# 3. 啟動模擬
# 注意：work.tb_top 中間不能有空格
# 建議使用 -voptargs=+acc 取代舊格式 -novopt (新版本已不支援 -novopt)
#vsim -voptargs=+acc work.tb_top
vsim -l ModelSim.log -L work tb3 -voptargs=+acc
# 4. 添加波形
# 這裡要注意：路徑必須與你的 module 名稱一致
# 如果你的 module 叫 tb_top，這裡就是 /tb_top/*


radix -hexadecimal
view wave
view structure

do wave.do

# 5. 執行
run -all