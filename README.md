# LUNA Payslip

เว็บแอปคิดเงินเดือน + ออกสลิป สำหรับฝ่ายบัญชี LUNA Brand
ไฟล์เดียว (`index.html`) ไม่มี backend — ข้อมูลเก็บใน `localStorage` ของเบราว์เซอร์ที่ใช้งาน

## ใช้แบบเร็วสุด (ไม่ต้อง deploy)

ดับเบิลคลิก `index.html` เปิดด้วย Chrome / Edge — ใช้งานได้ทันที รวมถึงปุ่ม **บันทึกเป็น PDF**

## Deploy ขึ้น GitHub Pages (ได้ URL ถาวร + PDF ทำงาน)

1. สร้าง repo ใหม่บน github.com (เช่น `luna-payslip`) — ตั้งเป็น **Private** ได้
2. ใน repo นี้ รันคำสั่ง:
   ```bash
   git remote add origin https://github.com/<user>/<repo>.git
   git push -u origin main
   ```
3. GitHub → repo → **Settings ▸ Pages**
   - Source: **Deploy from a branch**
   - Branch: **main** / folder: **/ (root)** ▸ Save
4. รอ ~1 นาที จะได้ URL: `https://<user>.github.io/<repo>/`

> Pages ของ repo แบบ Private เปิดได้เฉพาะบัญชีที่มีสิทธิ์ (ต้องเป็นแพลน GitHub ที่รองรับ Private Pages)
> ถ้าใช้แพลนฟรีและต้องการจำกัดคนเข้า ให้ใช้วิธี "เปิดไฟล์ในเครื่อง" แทน

## อัปเดตภายหลัง

แก้ `index.html` แล้ว:
```bash
git add index.html && git commit -m "update" && git push
```
Pages จะ redeploy ให้เองใน ~1 นาที

## ข้อจำกัด

- ข้อมูลผูกกับเบราว์เซอร์/เครื่องที่กรอก (ล้าง cache = ข้อมูลหาย) — ควรใช้เครื่องเดียวประจำ และกด "บันทึกเป็น PDF" เก็บไฟล์ทุกเดือน
- ยังไม่มีระบบล็อกอิน / สิทธิ์รายบุคคล (สเปกเฟส 2)
