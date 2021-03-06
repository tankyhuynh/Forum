<%@ page import="com.ltk.forum.util.SecurityUtils"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3"><%=SecurityUtils.getPrincipal().getFullName()%></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="<c:url value='/quan-tri'/>">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Quản lý
            </div>

            <!-- Nav Item - Pages Collapse Menu -->

            <li class="nav-item">
                <a class="nav-link collapsed" href="<c:url value='/quan-tri/the-loai-bai-viet'/>">
                    <!-- <i class="fas fa-fw fa-cog"></i> -->
                    <span>Thể loại bài viết</span>
                </a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
           <li class="nav-item">
                <a class="nav-link collapsed" href="<c:url value='/quan-tri/the-loai-bao-cao'/>">
                    <!-- <i class="fas fa-fw fa-cog"></i> -->
                    <span>Thể loại báo cáo</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="<c:url value='/quan-tri/vai-tro'/>">
                    <!-- <i class="fas fa-fw fa-cog"></i> -->
                    <span>Vai trò</span>
                </a>
            </li>
             <li class="nav-item">
                <a class="nav-link collapsed" href="<c:url value='/quan-tri/trang-thai'/>">
                   <!--  <i class="fas fa-fw fa-cog"></i> -->
                    <span>Trạng thái</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="<c:url value='/quan-tri/nguoi-dung'/>">
                    <!-- <i class="fas fa-fw fa-cog"></i> -->
                    <span>Người dùng</span>
                </a>
            </li>
 			<li class="nav-item">
                <a class="nav-link collapsed" href="<c:url value='/quan-tri/bao-cao'/>">
                    <!-- <i class="fas fa-fw fa-cog"></i> -->
                    <span>Báo cáo</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="<c:url value='/quan-tri/binh-luan'/>">
                    <!-- <i class="fas fa-fw fa-cog"></i> -->
                    <span>Bình luận</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="<c:url value='/quan-tri/bai-viet'/>">
                    <!-- <i class="fas fa-fw fa-cog"></i> -->
                    <span>Bài viết</span>
                </a>
            </li>
            
        <!--     <hr class="sidebar-divider">

            
            <div class="sidebar-heading">
                Addons
            </div>
             <li class="nav-item">
                <a class="nav-link collapsed" href="#">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Trạng thái</span>
                </a>
            	</li> -->

            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->