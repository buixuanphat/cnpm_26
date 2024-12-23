from app.models import User, GiaoVien, GiaoVienDayHoc, HocKy, HocSinh, PhongHoc, DanhSachLop, NhanVien
from app import app
import  hashlib

def auth_nhan_vien(taikhoan, matkhau):
    matkhau = str(hashlib.md5(matkhau.strip().encode('utf-8')).hexdigest())

    u = NhanVien.query.filter(NhanVien.taiKhoan.__eq__(taikhoan),
                          NhanVien.matKhau.__eq__(matkhau))
    return u.first()

def auth_giao_vien(taikhoan, matkhau):
    matkhau = str(hashlib.md5(matkhau.strip().encode('utf-8')).hexdigest())

    u = GiaoVien.query.filter(GiaoVien.taiKhoan.__eq__(taikhoan),
                          GiaoVien.matKhau.__eq__(matkhau))
    return u.first()

def get_user_by_id(id):
    return User.query.get(id)
