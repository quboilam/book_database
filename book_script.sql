
create database qlbansach;
use qlbansach;

create table khach_hang(
	ma_kh int auto_increment,
	tai_khoan varchar(255),
    mat_khau varchar(255),
    email varchar(255),
    dia_chi varchar(255),
    dien_thoai varchar(255),
    gioi_tinh varchar(255),
    ngay_sinh date,
    ho_ten varchar(255),
    
    primary key(ma_kh)
);

create table don_hang(
	ma_don_hang int auto_increment,
    da_thanh_toan varchar(255),
    ngay_giao date,
    ngay_dat date,
    tinh_trang_gh varchar(255),
    id_ma_kh int,
    
    primary key(ma_don_hang),
    foreign key(id_ma_kh) references khach_hang(ma_kh)
);

create table don_hang_sach(
	id_ma_don_hang int,
    id_ma_sach int,
    so_luong int,
    don_gia int,
    
    primary key(id_ma_don_hang, id_ma_sach),
    foreign key(id_ma_don_hang) references don_hang(ma_don_hang),
    foreign key(id_ma_sach) references sach(ma_sach)
);

create table sach(
	ma_sach int auto_increment,
    ten_sach varchar(255),
    so_luong_ton int,
    ngay_cap_nhat date,
    anh_bia varchar(255),
    mo_ta text,
    gia_ban int,
    id_ma_chu_de int,
    id_ma_nxb int,
    
    primary key(ma_sach),
    foreign key(id_ma_chu_de) references chu_de(ma_chu_de),
    foreign key(id_ma_nxb) references nha_xuat_ban(ma_nxb)
);

create table sach_tac_gia(
	id_ma_sach int,
    id_ma_tac_gia int,
    vai_tro varchar(255),
    vi_tri varchar(255),
    
    primary key(id_ma_sach, id_ma_tac_gia),
    foreign key(id_ma_sach) references sach(ma_sach),
    foreign key(id_ma_tac_gia) references tac_gia(ma_tac_gia)
);

create table tac_gia(
	ma_tac_gia int auto_increment,
    ten_tac_gia varchar(255),
    dien_thoai varchar(255),
    tieu_su varchar(255),
    dia_chi varchar(255),
    
    primary key(ma_tac_gia)
);

create table chu_de(
	ma_chu_de int auto_increment,
    ten_chu_de varchar(255),
    
    primary key(ma_chu_de)
);

create table nha_xuat_ban(
	ma_nxb int auto_increment,
	ten_nxb varchar(255),
    dien_thoai varchar(255),
    dia_chi varchar(255),
    
    primary key(ma_nxb)
)