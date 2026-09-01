@echo off
cd /d "%~dp0"
echo ==== อัปเดต LUNA Payslip ขึ้น GitHub ====
git add -A
git -c user.name="LUNA Brand" -c user.email="choksaran.j@gmail.com" commit -m "update"
git push -u origin main
echo.
echo ==== เสร็จแล้ว รอ GitHub Pages ~1 นาที ====
pause
