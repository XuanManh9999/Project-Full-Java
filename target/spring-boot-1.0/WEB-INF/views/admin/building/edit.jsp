<%--
  Created by IntelliJ IDEA.
  User: toilamanh
  Date: 8/26/2024
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<html>
<head>
    <title>${title}</title>
    <!-- Đảm bảo include Bootstrap CSS nếu cần -->
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Dashboard</li>
            </ul><!-- /.breadcrumb -->

            <div class="nav-search" id="nav-search">
                <form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="nav-search-input"
                                       id="nav-search-input" autocomplete="off"/>
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
                </form>
            </div><!-- /.nav-search -->
        </div>

        <div class="page-content">
            <div class="page-header">
                <h1>
                    Cập nhật tòa nhà & Thêm mới tòa nhà
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        overview &amp; stats
                    </small>
                </h1>
            </div><!-- /.page-header -->

            <div class="row">
                <div class="widget-box ui-sortable-handle" style="opacity: 1;">
                    <div class="widget-header">
                        <h5 class="widget-title">Cập nhật & Thêm mới </h5>
                        <div class="widget-toolbar">
                            <a href="#" data-action="collapse">
                                <i class="ace-icon fa fa-chevron-up"></i>
                            </a>

                        </div>
                    </div>
                    <div class="widget-body" style="display: block; margin: 15px 10px;">
                        <!-- content table -->
                        <form id="form-edit" class="form-group" action="#">
                            <div class="row">
                                <div class="col-xs-6 col-sm-6">
                                    <label for="">Tên tòa nhà</label>
                                    <input type="text" class="form-control" name="name" id="name"
                                           placeholder="Nhập tên tòa nhà">
                                </div>
                                <div class="col-xs-6 col-sm-6">
                                    <label for="">Quận</label>
                                    <select class="form-control" name="districtid" id="districtid">
                                        <option value="">--Chọn quận--</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6">
                                    <label for="">Phường</label>
                                    <input type="text" class="form-control" name="ward" id="ward"
                                           placeholder="Nhập phường">
                                </div>
                                <div class="col-xs-6 col-sm-6">
                                    <label for="">Đường</label>
                                    <input type="text" class="form-control" name="street" id="street"
                                           placeholder="Nhập đường">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6">
                                    <label for="">Kết cấu</label>
                                    <input type="text" class="form-control" name="structure" id="structure"
                                           placeholder="Nhập kết cấu">
                                </div>
                                <div class="col-xs-6 col-sm-6">
                                    <label for="">Số tầng hầm</label>
                                    <input type="number" class="form-control" name="numberofbasement"
                                           id="numberofbasement" placeholder="Nhập số tầng hầm">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Diện tích sàn</label>
                                    <input type="number" class="form-control" name="floorarea" id="floorarea"
                                           placeholder="Nhập diện tích sàn">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Hướng</label>
                                    <input type="text" class="form-control" name="direction" id="direction"
                                           placeholder="Nhập hướng">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Hạng</label>
                                    <input type="number" class="form-control" name="level" id="level"
                                           placeholder="Nhập hạng">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Nhập diện tích thuê</label>
                                    <input type="number" class="form-control" name="rentarea" id="rentarea"
                                           placeholder="Nhập diện tích thuê">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Giá thuê</label>
                                    <input type="number" class="form-control" name="rentprice" id="rentprice"
                                           placeholder="Nhập giá thuê">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Mô tả giá</label>
                                    <input type="text" class="form-control" name="rentpricedescription"
                                           id="rentpricedescription" placeholder="Nhập mô tả giá">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Nhập phí dịch vụ</label>
                                    <input type="number" class="form-control" name="servicefee" id="servicefee"
                                           placeholder="Nhập phí dịch vụ">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Nhập phí ô tô</label>
                                    <input type="number" class="form-control" name="building_name"
                                           id="building_name" placeholder="Nhập phí ô tô">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Nhập phí mô tô</label>
                                    <input type="number" class="form-control" name="motorbikefee"
                                           id="motorbikefee" placeholder="Nhập phí mô tô">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Nhập phí ngoài giờ</label>
                                    <input type="number" class="form-control" name="overtimefee"
                                           id="overtimefee" placeholder="Nhập phí ngoài giờ">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Tiền điện</label>
                                    <input type="number" class="form-control" name="electricityfee"
                                           id="electricityfee" placeholder="Nhập tiền điện">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Đặt cọc</label>
                                    <input type="number" class="form-control" name="deposit" id="deposit"
                                           placeholder="Nhập đặt cọc">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Thanh toán</label>
                                    <input type="number" class="form-control" name="payment" id="payment"
                                           placeholder="Nhập thanh toán">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Thời hạn thuê</label>
                                    <input type="number" class="form-control" name="renttime" id="renttime"
                                           placeholder="Nhập thời hạn thuê">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Nhập thời gian trang trí</label>
                                    <input type="number" class="form-control" name="decorationtime"
                                           id="decorationtime" placeholder="Nhập thời gian trang trí">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Tên quản lý</label>
                                    <input type="number" class="form-control" name="managername"
                                           id="managername" placeholder="Nhập tên quản lý">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">SĐT quản lý</label>
                                    <input type="number" class="form-control" name="managerphonenumber"
                                           id="managerphonenumber" placeholder="Nhập số điện thoại quản lý">
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <label for="">Phí môi giới</label>
                                    <input type="number" class="form-control" name="brokeragefee"
                                           id="brokeragefee" placeholder="Nhập phí môi giới">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6">
                                    <label for="">Loại tòa nhà:</label>
                                    <div style="display: flex;  align-items: center; ">
                                        <div
                                                style="display:flex; justify-content: start; gap: 8px; align-items: center; font-size: 16px;">
                                            <input type="checkbox" style="width: 30px; height: 30px;"
                                                   class="form-control" name="typeCode" value="noi-that"> <span>Nội
														thất</span>
                                            <input type="checkbox" style="width: 30px; height: 30px;"
                                                   class="form-control" name="typeCode" value="nguyen-can">
                                            <span>Tầng trệt</span>
                                            <input type="checkbox" style="width: 30px; height: 30px;"
                                                   class="form-control" name="typeCode" value="tang-tret">
                                            <span>Nguyên căn</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6">
                                    <label for="">Ghi chú:</label>
                                    <textarea name="note" id="note" cols="30" rows="10" class="form-control"
                                              style="min-height: 100px;max-height: 200px; min-width: 100%; max-width: 100%;"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6">
                                    <button type="button" class="btn btn-primary"
                                            style="width: 100px; border: none; outline: none; height: 40px; border-radius: 5px;"
                                            id="btnAddBuilding">Lưu
                                    </button>
                                    <button type="reset" class="btn btn-danger"
                                            style="width: 100px; border: none; outline: none; height: 40px; border-radius: 5px;;">
                                        Hủy
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


            </div><!-- /.page-content -->
            <h1 id="h1"></h1>
        </div>
    </div><!-- /.main-content -->

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->
</body>
</html>
