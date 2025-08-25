"C:\Users\Administrator\AppData\Roaming\npm\newman.cmd" run --disable-unicode "E:\\SQA works\\BookingApi.json" -e "E:\\SQA works\\Environment.json" -d "E:\\SQA works\\testdata.json" --reporters=cli,htmlextra --reporter-htmlextra-export "Reports\\jenkins-report.html"
echo Build Information: >> "Reports\\jenkins-report.txt"
echo Build Number: %BUILD_NUMBER% >> "Reports\\jenkins-report.txt"
echo Build Status: %BUILD_STATUS% >> "Reports\\jenkins-report.txt"