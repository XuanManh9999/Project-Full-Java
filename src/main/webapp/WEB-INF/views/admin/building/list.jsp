<%--
  Created by IntelliJ IDEA.
  User: toilamanh
  Date: 8/26/2024
  Time: 9:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Danh sách tòa nhà</title>
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
                    Danh sách tòa nhà
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        overview &amp; stats
                    </small>
                </h1>
            </div><!-- /.page-header -->

            <div class="row">
                <div class="widget-box ui-sortable-handle" style="opacity: 1;">
                    <div class="widget-header">
                        <h5 class="widget-title">Tìm kiếm</h5>
                        <div class="widget-toolbar">
                            <a href="#" data-action="collapse">
                                <i class="ace-icon fa fa-chevron-up"></i>
                            </a>

                            <a href="#" data-action="close">
                                <i class="ace-icon fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="widget-body" style="display: block; margin: 15px 10px;">
                        <!-- content table -->
                        <form class="form-group" method="get" action="" id="listForm">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Tên tòa nhà</label>
                                        <input type="text" class="form-control" id="exampleInputEmail1"
                                               placeholder="Nhập tên tòa nhà" name="nameBuilding">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Diện tích sàn</label>
                                        <input type="number" class="form-control" id="exampleInputPassword1"
                                               placeholder="Nhập diện tích sàn">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Quận hiện có</label>
                                        <select name="" id="" class="form-control">
                                            <option value="" selected>--Chọn quận</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Phường</label>
                                        <input type="text" class="form-control" id="exampleInputPassword1"
                                               placeholder="Nhập địa chỉ">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Đường</label>
                                        <input type="text" class="form-control" id="exampleInputPassword1"
                                               placeholder="Nhập địa chỉ">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Số tầng hầm</label>
                                        <input type="number" class="form-control" id="exampleInputEmail1"
                                               placeholder="Số tầng hầm">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Hướng</label>
                                        <input type="text" class="form-control" id="exampleInputPassword1"
                                               placeholder="Hướng">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Hạng</label>
                                        <input type="number		" class="form-control" id="exampleInputPassword1"
                                               placeholder="Hạng">
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Diện tích từ</label>
                                        <input type="number" class="form-control" id="exampleInputEmail1"
                                               placeholder="Diện tích từ">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Diện tích đến</label>
                                        <input type="number" class="form-control" id="exampleInputEmail1"
                                               placeholder="Diện tích đến">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Giá thuê từ</label>
                                        <input type="number" class="form-control" id="exampleInputPassword1"
                                               placeholder="Hướng">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Giá thuê đến</label>
                                        <input type="number" class="form-control" id="exampleInputPassword1"
                                               placeholder="Hạng">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Tên quản lý</label>
                                        <input type="text" class="form-control" id="exampleInputEmail1"
                                               placeholder="Tên quản lý">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Điện thoại quản lý</label>
                                        <input type="number" class="form-control" id="exampleInputPassword1"
                                               placeholder="Điện thoại quản lý">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Chọn nhận viên phụ trách</label>
                                        <select name="" id="" class="form-control">
                                            <option value="" selected>--Chọn nhân viên--</option>
                                        </select>
                                    </div>
                                </div>

                            </div>
                            <div class="row-sm">
                                <label for="exampleInputPassword1">Tìm theo loại tòa nhà: </label>
                                <div style="display: flex; justify-content: space-between;">
                                    <div style="display: flex; gap: 10px;">
                                        <div
                                                style="display:  flex; justify-content: center; align-items: center; gap: 3px;">
                                            <input style="width: 20px ;height: 20px;" class="form-control"
                                                   type="checkbox" id="test_check_block">
                                            <span style="font-size: 15px; font-weight: bold;">Nội thất</span>
                                        </div>
                                        <div
                                                style="display:  flex; justify-content: center; align-items: center; gap: 3px;">
                                            <input style="width: 20px ;height: 20px;" type="checkbox">
                                            <span style="font-size: 15px; font-weight: bold;">Tầng cao</span>
                                        </div>
                                        <div
                                                style="display:  flex; justify-content: center; align-items: center; gap: 3px;">
                                            <input style="width: 20px ;height: 20px;" type="checkbox">
                                            <span style="font-size: 15px; font-weight: bold;">Nguyên căn</span>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-danger" id="btnSearchBuilding"
                                            style="width: 180px; height: 40px; border-radius: 10px; font-weight: bold; border: none; outline: none;">
                                        <i class="ace-icon glyphicon glyphicon-search"></i>
                                        Tìm kiếm
                                    </button>

                                </div>

                            </div>
                        </form>
                    </div>
                </div>

                <div style="display: flex; justify-content: end; gap: 3px;">
                    <a href="/admin/building-add" class="btn btn-success" title="Thêm tòa nhà"
                       style="border: none; outline: none; ">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16"
                             height="16" fill="currentColor" class="bi bi-building-add" viewBox="0 0 16 16">
                            <path
                                    d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"/>
                            <path
                                    d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
                            <path
                                    d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                        </svg>
                    </a>
                    <button class="btn btn-danger" title="Xóa tòa nhà" style="border: none; outline: none;">
                        <svg
                                xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                class="bi bi-building-x" viewBox="0 0 16 16">
                            <path
                                    d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
                            <path
                                    d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm5 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m-.646-4.854.646.647.646-.647a.5.5 0 0 1 .708.708l-.647.646.647.646a.5.5 0 0 1-.708.708l-.646-.647-.646.647a.5.5 0 0 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 .708-.708"/>
                        </svg>
                    </button>

                </div>

                <!-- Table -->
                <div class="row" style="margin-top: 30px;">
                    <div class="col-xs-12">
                        <strong style="font-size: 20px;">Quản lý tòa nhà</strong>
                        <table id="simple-table" class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace" id="all-check-list-building">
                                        <span class="lbl"></span>
                                    </label>
                                </th>
                                <th>Tên tòa nhà</th>
                                <th>Địa chỉ</th>
                                <th>Số tầng hầm</th>
                                <th>Tên quản lý</th>
                                <th>Số điện thoại</th>
                                <th>Giá thuê</th>
                                <th>Phí dịch vụ</th>
                                <th>Diện tích sàn</th>
                                <th>Diện tích trống</th>
                                <th>Diện tích thuê</th>
                                <th>Phí môi giới</th>
                                <!-- <th class="hidden-480">Clicks</th>

                                    <th>
                                        <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                                        Update
                                    </th> -->
                                <th class="hidden-480">Trạng thái</th>

                                <th>Thao tác</th>
                            </tr>
                            </thead>

                            <tbody>
                            <tr>
                                <input type="hidden" id="idBuilding" value="12">
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace" name="staffBuilding">
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Tòa nhà An Thích Phát</a>
                                </td>
                                <td>Hà Nội</td>
                                <td class="hidden-480">2</td>
                                <td>Nguyễn Xuân Mạnh</td>
                                <td>0559517003</td>
                                <td>50</td>
                                <td>500</td>
                                <td>600</td>
                                <td>300</td>
                                <td>300</td>
                                <td>0</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Expiring</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs btn-group"
                                         style="display: flex; gap: 3px;">
                                        <button class="btn btn-xs btn-success" title="Giao tòa nhà"
                                                onclick="assingmentBuilding(1)">
                                            <i class="ace-icon fa fa-check bigger-120"></i>
                                        </button>

                                        <a href="/admin/building-add" class="btn btn-xs btn-info" title="Sửa tòa nhà">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </a>

                                        <button class="btn btn-xs btn-danger">
                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                        </button>
                                    </div>

                                    <div class="hidden-md hidden-lg">
                                        <div class="inline pos-rel">
                                            <button class="btn btn-minier btn-primary dropdown-toggle"
                                                    data-toggle="dropdown" data-position="auto">
                                                <i class="ace-icon glyphicon glyphicon-align-justify"></i>
                                            </button>

                                            <ul
                                                    class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                <li>
                                                    <a href="#" class="tooltip-info" data-rel="tooltip"
                                                       title="" data-original-title="View">
																	<span class="blue">
																		<i
                                                                                class="ace-icon fa fa-search-plus bigger-120"></i>
																	</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="" data-original-title="Edit">
																	<span class="green">
																		<i
                                                                                class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																	</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="" data-original-title="Delete">
																	<span class="red">
																		<i
                                                                                class="ace-icon fa fa-trash-o bigger-120"></i>
																	</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <input type="hidden" id="idBuilding" value="20">
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace" name="staffBuilding">
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Tòa nhà An Thích Phát</a>
                                </td>
                                <td>Hà Nội</td>
                                <td class="hidden-480">2</td>
                                <td>Nguyễn Xuân Mạnh</td>
                                <td>0559517003</td>
                                <td>50</td>
                                <td>500</td>
                                <td>600</td>
                                <td>300</td>
                                <td>300</td>
                                <td>0</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Expiring</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs btn-group"
                                         style="display: flex; gap: 3px;">
                                        <button class="btn btn-xs btn-success" title="Giao tòa nhà"
                                                onclick="assingmentBuilding(1)">
                                            <i class="ace-icon fa fa-check bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-info">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-danger">
                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                        </button>
                                    </div>

                                    <div class="hidden-md hidden-lg">
                                        <div class="inline pos-rel">
                                            <button class="btn btn-minier btn-primary dropdown-toggle"
                                                    data-toggle="dropdown" data-position="auto">
                                                <i class="ace-icon glyphicon glyphicon-align-justify"></i>
                                            </button>

                                            <ul
                                                    class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                <li>
                                                    <a href="#" class="tooltip-info" data-rel="tooltip"
                                                       title="" data-original-title="View">
																	<span class="blue">
																		<i
                                                                                class="ace-icon fa fa-search-plus bigger-120"></i>
																	</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="" data-original-title="Edit">
																	<span class="green">
																		<i
                                                                                class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																	</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="" data-original-title="Delete">
																	<span class="red">
																		<i
                                                                                class="ace-icon fa fa-trash-o bigger-120"></i>
																	</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div><!-- /.span -->
                </div>
                <!-- End Table -->
            </div><!-- /.page-content -->

        </div>
    </div><!-- /.main-content -->

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<!-- Modal -->
<div class="modal fade" id="assingmentBuildingModal" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Danh sách nhân viên</h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped table-bordered table-hover" id="staffList">
                    <thead>
                    <tr>
                        <th><input type="checkbox" name="" id="main-table"></th>
                        <th>Tên nhân viên</th>
                        <th>Chức vụ</th>
                        <th>Điện thoại</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <input type="hidden" value="13" id="idUser">
                        <td><input type="checkbox" id=""></td>
                        <td>Nguyễn Xuân Mạnh</td>
                        <td>Quản lý</td>
                        <td>0559517003</td>
                    </tr>
                    <tr>
                        <input type="hidden" value="14" id="idUser">
                        <td><input type="checkbox" id=""></td>
                        <td>Nguyễn Ha</td>
                        <td>Quản lý</td>
                        <td>0559517003</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="btnAddAssingmentBuilding">Giao tòa
                    nhà
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>

    </div>
</div>
<!-- End Modal -->

</body>
</html>
