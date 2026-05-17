<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - DataLab</title>
    <link rel="icon" href="img/datalab-02.png" type="image/png">
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        sans: ['"Plus Jakarta Sans"', 'sans-serif'],
                    },
                    colors: {
                        brand: {
                            primary: '#1A7332',
                            secondary: '#2E8B57',
                            bg: '#F3F6F4', /* Slightly darker than frontend for admin contrast */
                            card: '#FFFFFF',
                            text: '#1F2937',
                            gray: '#6B7280',
                            light: '#9CA3AF',
                            border: '#E5E7EB',
                            danger: '#EF4444',
                            warning: '#F59E0B',
                            info: '#3B82F6'
                        }
                    },
                    boxShadow: {
                        'fiori': '0 2px 4px 0 rgba(0,0,0,0.05), 0 1px 2px 0 rgba(0,0,0,0.02)',
                        'fiori-hover': '0 10px 15px -3px rgba(0,0,0,0.1), 0 4px 6px -2px rgba(0,0,0,0.05)'
                    }
                }
            }
        }
    </script>
    <style>
        .fiori-tile {
            transition: all 0.2s ease-in-out;
        }
        .fiori-tile:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1), 0 4px 6px -2px rgba(0,0,0,0.05);
            border-color: #1A7332;
        }
    </style>
</head>

<body class="bg-brand-bg text-[14px] antialiased min-h-screen flex flex-col selection:bg-brand-primary selection:text-white">

    <!-- Admin Topbar -->
    <header class="bg-brand-primary text-white h-[60px] sticky top-0 z-50 shadow-md flex items-center justify-between px-6">
        <div class="flex items-center gap-4">
            <a href="index.jsp" class="flex items-center gap-2 hover:opacity-80 transition" title="Quay lại trang chủ">
                <img src="img/datalab-02.png" alt="DataLab Logo" class="h-8 w-auto brightness-0 invert">
                <span class="font-bold text-[18px] tracking-tight">DataLab Admin</span>
            </a>
            <div class="w-px h-6 bg-white/20 mx-2 hidden sm:block"></div>
            <h1 class="text-[15px] font-semibold hidden sm:block">Trang quản trị hệ thống</h1>
        </div>
        
        <div class="flex items-center gap-5">
            <!-- Search -->
            <div class="relative hidden md:block">
                <div class="absolute inset-y-0 left-3 flex items-center pointer-events-none">
                    <svg class="w-4 h-4 text-white/70" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
                </div>
                <input type="text" placeholder="Tìm kiếm tính năng..." class="bg-black/10 border border-white/20 text-white placeholder-white/70 rounded-lg py-1.5 pl-10 pr-4 text-[13px] w-64 focus:outline-none focus:bg-white/20 focus:border-white/40 transition">
            </div>
            
            <!-- Notifications -->
            <button class="relative hover:bg-black/10 p-2 rounded-full transition">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"></path></svg>
                <span class="absolute top-1 right-1 w-2 h-2 bg-red-500 rounded-full border border-brand-primary"></span>
            </button>
            
            <!-- User -->
            <div class="flex items-center gap-3 cursor-pointer hover:opacity-80 transition">
                <img src="https://ui-avatars.com/api/?name=Admin&background=fff&color=1A7332" alt="Admin" class="w-8 h-8 rounded-full border border-white/30">
                <div class="hidden sm:block">
                    <div class="text-[13px] font-bold leading-tight">Admin System</div>
                    <div class="text-[11px] text-white/70 leading-tight">Administrator</div>
                </div>
                <svg class="w-4 h-4 text-white/70 hidden sm:block" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
            </div>
        </div>
    </header>

    <!-- Main Workspace (SAP Fiori Style Grid) -->
    <main class="flex-1 p-8 max-w-[1400px] mx-auto w-full flex flex-col gap-10">

        <!-- Group 1: Quản trị Nội dung -->
        <section>
            <div class="flex items-center gap-3 mb-4">
                <div class="w-1.5 h-5 bg-brand-primary rounded-sm"></div>
                <h2 class="text-[18px] font-bold text-brand-text">Quản trị Nội dung</h2>
                <span class="text-[12px] text-brand-gray bg-white px-2 py-0.5 rounded-full border border-brand-border">Content Apps</span>
            </div>
            
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
                <!-- App: Bài viết -->
                <a href="#" class="fiori-tile bg-white border border-brand-border rounded-xl p-5 flex flex-col justify-between min-h-[160px] shadow-fiori cursor-pointer relative group overflow-hidden">
                    <div class="flex justify-between items-start mb-4">
                        <div class="w-10 h-10 rounded-lg bg-green-50 flex items-center justify-center text-brand-primary">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M19 20H5a2 2 0 01-2-2V6a2 2 0 012-2h10a2 2 0 012 2v1m2 13a2 2 0 01-2-2V7m2 13a2 2 0 002-2V9a2 2 0 00-2-2h-2m-4-3H9M7 16h6M7 8h6v4H7V8z"></path></svg>
                        </div>
                        <div class="text-right">
                            <div class="text-[28px] font-bold text-brand-primary leading-none">124</div>
                            <div class="text-[11px] font-semibold text-brand-gray mt-1">Tổng bài viết</div>
                        </div>
                    </div>
                    <div>
                        <h3 class="text-[15px] font-bold text-brand-text group-hover:text-brand-primary transition">Bài viết / Blog Posts</h3>
                        <p class="text-[12px] text-brand-gray mt-1 line-clamp-1">Thêm, sửa, xóa, quản lý bài nổi bật</p>
                    </div>
                    <!-- Indicator for drafts -->
                    <div class="absolute bottom-5 right-5 text-[11px] font-bold text-orange-500 bg-orange-50 px-2 py-0.5 rounded">
                        12 bản nháp
                    </div>
                </a>

                <!-- App: Danh mục -->
                <a href="#" class="fiori-tile bg-white border border-brand-border rounded-xl p-5 flex flex-col justify-between min-h-[160px] shadow-fiori cursor-pointer relative group">
                    <div class="flex justify-between items-start mb-4">
                        <div class="w-10 h-10 rounded-lg bg-blue-50 flex items-center justify-center text-blue-500">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M4 6h16M4 10h16M4 14h16M4 18h16"></path></svg>
                        </div>
                        <div class="text-right">
                            <div class="text-[28px] font-bold text-brand-text leading-none">10</div>
                            <div class="text-[11px] font-semibold text-brand-gray mt-1">Active Categories</div>
                        </div>
                    </div>
                    <div>
                        <h3 class="text-[15px] font-bold text-brand-text group-hover:text-blue-500 transition">Cấu trúc Danh mục</h3>
                        <p class="text-[12px] text-brand-gray mt-1 line-clamp-1">Kéo thả cấu trúc cây menu trái</p>
                    </div>
                </a>

                <!-- App: Từ khóa -->
                <a href="#" class="fiori-tile bg-white border border-brand-border rounded-xl p-5 flex flex-col justify-between min-h-[160px] shadow-fiori cursor-pointer relative group">
                    <div class="flex justify-between items-start mb-4">
                        <div class="w-10 h-10 rounded-lg bg-indigo-50 flex items-center justify-center text-indigo-500">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M7 7h.01M7 3h5c.512 0 1.024.195 1.414.586l7 7a2 2 0 010 2.828l-7 7a2 2 0 01-2.828 0l-7-7A1.994 1.994 0 013 12V7a4 4 0 014-4z"></path></svg>
                        </div>
                        <div class="text-right">
                            <div class="text-[28px] font-bold text-brand-text leading-none">48</div>
                            <div class="text-[11px] font-semibold text-brand-gray mt-1">Từ khóa đã dùng</div>
                        </div>
                    </div>
                    <div>
                        <h3 class="text-[15px] font-bold text-brand-text group-hover:text-indigo-500 transition">Từ khóa / Tag Cloud</h3>
                        <p class="text-[12px] text-brand-gray mt-1 line-clamp-1">Quản lý, gộp tag, dọn dẹp</p>
                    </div>
                </a>
            </div>
        </section>

        <!-- Group 2: Quản trị Tài nguyên & Tương tác -->
        <section>
            <div class="flex items-center gap-3 mb-4">
                <div class="w-1.5 h-5 bg-brand-primary rounded-sm"></div>
                <h2 class="text-[18px] font-bold text-brand-text">Quản trị Tài nguyên & Tương tác</h2>
                <span class="text-[12px] text-brand-gray bg-white px-2 py-0.5 rounded-full border border-brand-border">Assets & CRM</span>
            </div>
            
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
                <!-- App: Kho Tài liệu -->
                <a href="#" class="fiori-tile bg-white border border-brand-border rounded-xl p-5 flex flex-col justify-between min-h-[160px] shadow-fiori cursor-pointer relative group">
                    <div class="flex justify-between items-start mb-4">
                        <div class="w-10 h-10 rounded-lg bg-sky-50 flex items-center justify-center text-sky-500">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M3 15a4 4 0 004 4h9a5 5 0 10-.1-9.999 5.002 5.002 0 10-9.78 2.096A4.001 4.001 0 003 15z"></path></svg>
                        </div>
                        <div class="text-right">
                            <div class="text-[28px] font-bold text-brand-text leading-none">1.2<span class="text-[16px]">GB</span></div>
                            <div class="text-[11px] font-semibold text-brand-gray mt-1">Đã dùng / 5GB</div>
                        </div>
                    </div>
                    <div>
                        <h3 class="text-[15px] font-bold text-brand-text group-hover:text-sky-500 transition">Kho Tài liệu</h3>
                        <p class="text-[12px] text-brand-gray mt-1 line-clamp-1">Quản lý file đính kèm, dataset</p>
                    </div>
                    <!-- Progress bar -->
                    <div class="absolute bottom-0 left-0 w-full h-1 bg-gray-100">
                        <div class="h-full bg-sky-400" style="width: 24%"></div>
                    </div>
                </a>

                <!-- App: Kiểm duyệt & Leads -->
                <a href="#" class="fiori-tile bg-white border border-red-200 rounded-xl p-5 flex flex-col justify-between min-h-[160px] shadow-fiori cursor-pointer relative group">
                    <div class="flex justify-between items-start mb-4">
                        <div class="w-10 h-10 rounded-lg bg-red-50 flex items-center justify-center text-red-500">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z"></path></svg>
                        </div>
                        <div class="text-right">
                            <div class="text-[28px] font-bold text-red-500 animate-pulse leading-none">14</div>
                            <div class="text-[11px] font-semibold text-red-400 mt-1 uppercase tracking-wider">Chờ duyệt</div>
                        </div>
                    </div>
                    <div>
                        <h3 class="text-[15px] font-bold text-brand-text group-hover:text-red-500 transition">Kiểm duyệt & CRM</h3>
                        <p class="text-[12px] text-brand-gray mt-1 line-clamp-1">Duyệt bình luận, Export danh sách Leads</p>
                    </div>
                </a>
            </div>
        </section>

        <!-- Group 3: Quản trị Hệ thống -->
        <section>
            <div class="flex items-center gap-3 mb-4">
                <div class="w-1.5 h-5 bg-brand-primary rounded-sm"></div>
                <h2 class="text-[18px] font-bold text-brand-text">Quản trị Hệ thống</h2>
                <span class="text-[12px] text-brand-gray bg-white px-2 py-0.5 rounded-full border border-brand-border">System Apps</span>
            </div>
            
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
                <!-- App: Cấu hình Hiển thị -->
                <a href="#" class="fiori-tile bg-white border border-brand-border rounded-xl p-5 flex flex-col justify-between min-h-[160px] shadow-fiori cursor-pointer relative group">
                    <div class="flex justify-between items-start mb-4">
                        <div class="w-10 h-10 rounded-lg bg-purple-50 flex items-center justify-center text-purple-500">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path></svg>
                        </div>
                        <div class="text-right">
                            <div class="text-[13px] font-bold text-brand-primary bg-green-50 px-2 py-1 rounded">Hoạt động</div>
                        </div>
                    </div>
                    <div>
                        <h3 class="text-[15px] font-bold text-brand-text group-hover:text-purple-500 transition">Cấu hình Hiển thị</h3>
                        <p class="text-[12px] text-brand-gray mt-1 line-clamp-1">Hero banner, Link nút tải, Số Zalo</p>
                    </div>
                </a>

                <!-- App: Thống kê -->
                <a href="#" class="fiori-tile bg-white border border-brand-border rounded-xl p-5 flex flex-col justify-between min-h-[160px] shadow-fiori cursor-pointer relative group">
                    <div class="flex justify-between items-start mb-4">
                        <div class="w-10 h-10 rounded-lg bg-orange-50 flex items-center justify-center text-orange-500">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path></svg>
                        </div>
                        <div class="text-right">
                            <div class="text-[28px] font-bold text-brand-text leading-none flex items-center justify-end gap-1">
                                4.2<span class="text-[16px]">K</span>
                                <svg class="w-4 h-4 text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 10l7-7m0 0l7 7m-7-7v18"></path></svg>
                            </div>
                            <div class="text-[11px] font-semibold text-brand-gray mt-1">Truy cập hôm nay</div>
                        </div>
                    </div>
                    <div>
                        <h3 class="text-[15px] font-bold text-brand-text group-hover:text-orange-500 transition">Thống kê & Analytics</h3>
                        <p class="text-[12px] text-brand-gray mt-1 line-clamp-1">Traffic website, Top bài viết</p>
                    </div>
                </a>
            </div>
        </section>

    </main>

    <footer class="text-center py-4 text-[12px] text-brand-gray border-t border-brand-border bg-white mt-auto">
        &copy; 2026 DataLab Academy. Hệ thống Quản trị Nội dung.
    </footer>

</body>
</html>
