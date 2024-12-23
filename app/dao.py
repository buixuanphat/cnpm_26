from app.models import User, GiaoVien, GiaoVienDayHoc, HocKy, HocSinh, PhongHoc, DanhSachLop, NhanVien, MonHoc, BangDiem
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

def tinh_diem_trung_binh(hoc_sinh_id, hoc_ky_id):
    danh_sach_mon_hoc = MonHoc.query.all()
    diem_trung_binh = 0
    so_mon_hoc = 0
    diem_cua_hoc_sinh = BangDiem.query.filter_by(hocSinh_id=hoc_sinh_id, hocKy_id=hoc_ky_id)

    for mon_hoc in danh_sach_mon_hoc:
        # Lấy điểm từ bảng `BangDiem`
        diem_hs_mon = {diem for diem in diem_cua_hoc_sinh if diem.monHoc_id.__eq__(mon_hoc.idMonHoc)}
        ds_15p = []
        ds_1_tiet = []
        thi = []
        for diem in diem_hs_mon:
            if diem.loai_diem.startswith("15p"):
                ds_15p.append(diem.diem)
            elif diem.loai_diem.startswith("1_tiet"):
                ds_1_tiet.append(diem.diem)
            else:
                thi.append(diem.diem)

        tb_15p = round(sum(ds_15p) / len(ds_15p), 2) if len(ds_15p) > 0 else None
        tb_1Tiet = round(sum(ds_1_tiet) / len(ds_1_tiet), 2) if len(ds_1_tiet) > 0 else None
        dThi = round(sum(thi) / len(thi), 2) if len(thi) > 0 else None
        # diem_15p = BangDiem.query.filter_by(hocSinh_id=hoc_sinh_id, hocKy_id=hoc_ky_id, monHoc_id=mon_hoc.idMonHoc, loai_diem='15p').first()
        # diem_1_tiet = BangDiem.query.filter_by(hocSinh_id=hoc_sinh_id, hocKy_id=hoc_ky_id, monHoc_id=mon_hoc.idMonHoc, loai_diem='1_tiet').first()
        # diem_thi = BangDiem.query.filter_by(hocSinh_id=hoc_sinh_id, hocKy_id=hoc_ky_id, monHoc_id=mon_hoc.idMonHoc, loai_diem='thi').first()

        if tb_15p is not None and tb_1Tiet is not None and dThi is not None:
            # Tính điểm trung bình môn
            diem_tb_mon = (tb_15p + (tb_1Tiet * 2) + (dThi * 3)) / 6
            diem_trung_binh += diem_tb_mon
            so_mon_hoc += 1

    if so_mon_hoc >0:
        return round(diem_trung_binh / so_mon_hoc, 2)  # Trả về điểm trung bình
    else:
        return None  # Nếu không có điểm, trả về None