<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Bài viết - DataLab Admin</title>
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
                            bg: '#F3F6F4',
                            card: '#FFFFFF',
                            text: '#1F2937',
                            gray: '#6B7280',
                            light: '#9CA3AF',
                            border: '#E5E7EB',
                            danger: '#EF4444',
                            warning: '#F59E0B',
                            info: '#3B82F6'
                        }
                    }
                }
            }
        }
    </script>
    <style>
        /* Custom Toggle Switch */
        .toggle-checkbox:checked {
            right: 0;
            border-color: #1A7332;
        }
        .toggle-checkbox:checked + .toggle-label {
            background-color: #1A7332;
        }
    </style>
</head>

<body class="bg-brand-bg text-[14px] antialiased min-h-screen flex flex-col selection:bg-brand-primary selection:text-white">

    <!-- Admin Topbar -->
    <header class="bg-brand-primary text-white h-[60px] sticky top-0 z-50 shadow-md flex items-center justify-between px-6">
        <div class="flex items-center gap-4">
            <a href="admin-dashboard.jsp" class="flex items-center gap-2 hover:opacity-80 transition" title="Về Dashboard">
                <svg class="w-5 h-5 text-white/80" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18"></path></svg>
                <img src="img/datalab-02.png" alt="DataLab Logo" class="h-8 w-auto brightness-0 invert hidden sm:block">
            </a>
            <div class="w-px h-6 bg-white/20 mx-2 hidden sm:block"></div>
            <h1 class="text-[15px] font-semibold hidden sm:block">App / Bài viết</h1>
        </div>
        
        <div class="flex items-center gap-5">
            <!-- User -->
            <div class="flex items-center gap-3 cursor-pointer hover:opacity-80 transition">
                <img src="https://ui-avatars.com/api/?name=Admin&background=fff&color=1A7332" alt="Admin" class="w-8 h-8 rounded-full border border-white/30">
            </div>
        </div>
    </header>

    <!-- Main Workspace -->
    <main class="flex-1 p-6 md:p-8 max-w-[1400px] mx-auto w-full flex flex-col gap-6">

        <!-- Header Area (Breadcrumb + CTA) -->
        <div class="flex flex-col md:flex-row md:items-center justify-between gap-4">
            <div>
                <nav class="flex items-center gap-2 text-[12px] font-medium text-brand-gray mb-1">
                    <a href="admin-dashboard.jsp" class="hover:text-brand-primary transition">Trang chủ</a>
                    <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
                    <span class="text-brand-primary">Quản lý bài viết</span>
                </nav>
                <h1 class="text-[24px] font-bold text-brand-text leading-tight">Danh sách bài viết</h1>
            </div>
            
            <a href="admin-blog-edit.jsp" class="inline-flex items-center justify-center gap-2 bg-brand-primary hover:bg-brand-secondary text-white font-bold px-6 py-2.5 rounded-lg shadow-sm transition">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path></svg>
                Viết bài mới
            </a>
        </div>

        <!-- Filter Card -->
        <div class="bg-white rounded-xl shadow-sm border border-brand-border p-5 flex flex-col md:flex-row items-center gap-4">
            <!-- Search -->
            <div class="relative flex-1 w-full">
                <div class="absolute inset-y-0 left-3 flex items-center pointer-events-none">
                    <svg class="w-4 h-4 text-brand-light" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
                </div>
                <input type="text" placeholder="Tìm kiếm tiêu đề bài viết..." class="w-full bg-brand-bg focus:bg-white border border-brand-border focus:border-brand-primary rounded-lg py-2 pl-9 pr-4 text-[13px] outline-none transition">
            </div>
            
            <!-- Filters -->
            <div class="flex items-center gap-3 w-full md:w-auto">
                <select class="bg-brand-bg border border-brand-border rounded-lg py-2 px-3 text-[13px] font-medium text-brand-text outline-none focus:border-brand-primary min-w-[140px]">
                    <option value="">Trạng thái: Tất cả</option>
                    <option value="published">Đã xuất bản</option>
                    <option value="draft">Bản nháp</option>
                </select>
                <select class="bg-brand-bg border border-brand-border rounded-lg py-2 px-3 text-[13px] font-medium text-brand-text outline-none focus:border-brand-primary min-w-[140px]">
                    <option value="">Chuyên mục: Tất cả</option>
                    <option value="spss">SPSS</option>
                    <option value="amos">AMOS</option>
                    <option value="smartpls">SmartPLS</option>
                    <option value="r">R Studio</option>
                </select>
            </div>
        </div>

        <!-- Data Table Card -->
        <div class="bg-white rounded-xl shadow-sm border border-brand-border overflow-hidden">
            <div class="overflow-x-auto">
                <table class="w-full text-left text-[13px]">
                    <thead class="bg-gray-50 border-b border-brand-border text-brand-gray uppercase text-[11px] font-bold">
                        <tr>
                            <th scope="col" class="px-5 py-3 w-12">
                                <input type="checkbox" class="w-4 h-4 text-brand-primary rounded border-brand-border focus:ring-brand-primary cursor-pointer">
                            </th>
                            <th scope="col" class="px-5 py-3 min-w-[300px]">Bài viết</th>
                            <th scope="col" class="px-5 py-3">Chuyên mục</th>
                            <th scope="col" class="px-5 py-3">Trạng thái</th>
                            <th scope="col" class="px-5 py-3 text-center">Nổi bật</th>
                            <th scope="col" class="px-5 py-3">Ngày đăng</th>
                            <th scope="col" class="px-5 py-3 text-right">Hành động</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-brand-border">
                        
                        <!-- Row 1 (Published, Featured) -->
                        <tr class="hover:bg-brand-bg/50 transition group">
                            <td class="px-5 py-4 whitespace-nowrap">
                                <input type="checkbox" class="w-4 h-4 text-brand-primary rounded border-brand-border focus:ring-brand-primary cursor-pointer">
                            </td>
                            <td class="px-5 py-4">
                                <div class="flex items-center gap-4">
                                    <div class="w-16 h-12 rounded bg-gray-200 overflow-hidden shrink-0 border border-brand-border/50">
                                        <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&q=80" alt="Thumb" class="w-full h-full object-cover">
                                    </div>
                                    <div>
                                        <div class="font-bold text-[14px] text-brand-text mb-0.5 line-clamp-1 group-hover:text-brand-primary transition cursor-pointer">Hướng dẫn mô hình SEM chuyên sâu trên AMOS</div>
                                        <div class="text-[12px] text-brand-gray">ID: #1024 • Xem: 1.2K</div>
                                    </div>
                                </div>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap">
                                <span class="bg-blue-50 text-blue-600 border border-blue-100 text-[11px] font-bold px-2 py-0.5 rounded">AMOS</span>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap">
                                <span class="bg-green-100 text-green-700 text-[11px] font-bold px-2.5 py-1 rounded-full flex items-center w-max gap-1">
                                    <span class="w-1.5 h-1.5 rounded-full bg-green-500"></span>
                                    Đã xuất bản
                                </span>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap text-center">
                                <!-- Toggle Switch -->
                                <div class="relative inline-block w-10 mr-2 align-middle select-none transition duration-200 ease-in">
                                    <input type="checkbox" name="toggle" id="toggle1" class="toggle-checkbox absolute block w-5 h-5 rounded-full bg-white border-4 appearance-none cursor-pointer border-gray-300 z-10 transition-transform duration-300" checked/>
                                    <label for="toggle1" class="toggle-label block overflow-hidden h-5 rounded-full bg-gray-300 cursor-pointer transition-colors duration-300"></label>
                                </div>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap text-brand-gray text-[12px]">
                                15/05/2026<br>09:30 AM
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap text-right">
                                <div class="flex items-center justify-end gap-2">
                                    <a href="admin-blog-edit.jsp" class="w-8 h-8 rounded-lg flex items-center justify-center text-brand-gray hover:text-blue-500 hover:bg-blue-50 transition" title="Sửa">
                                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path></svg>
                                    </a>
                                    <button class="w-8 h-8 rounded-lg flex items-center justify-center text-brand-gray hover:text-red-500 hover:bg-red-50 transition" title="Xóa">
                                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path></svg>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 2 (Draft, Not Featured) -->
                        <tr class="hover:bg-brand-bg/50 transition group">
                            <td class="px-5 py-4 whitespace-nowrap">
                                <input type="checkbox" class="w-4 h-4 text-brand-primary rounded border-brand-border focus:ring-brand-primary cursor-pointer">
                            </td>
                            <td class="px-5 py-4">
                                <div class="flex items-center gap-4">
                                    <div class="w-16 h-12 rounded bg-gray-200 overflow-hidden shrink-0 border border-brand-border/50">
                                        <img src="https://images.unsplash.com/photo-1542744173-8e7e53415bb0?auto=format&fit=crop&q=80" alt="Thumb" class="w-full h-full object-cover grayscale opacity-80">
                                    </div>
                                    <div>
                                        <div class="font-bold text-[14px] text-brand-text mb-0.5 line-clamp-1 group-hover:text-brand-primary transition cursor-pointer">Hướng dẫn cơ bản sử dụng phần mềm R trong phân tích</div>
                                        <div class="text-[12px] text-brand-gray">ID: #1025 • Xem: 0</div>
                                    </div>
                                </div>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap">
                                <span class="bg-indigo-50 text-indigo-600 border border-indigo-100 text-[11px] font-bold px-2 py-0.5 rounded">R Studio</span>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap">
                                <span class="bg-orange-100 text-orange-700 text-[11px] font-bold px-2.5 py-1 rounded-full flex items-center w-max gap-1">
                                    <span class="w-1.5 h-1.5 rounded-full bg-orange-500"></span>
                                    Bản nháp
                                </span>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap text-center">
                                <!-- Toggle Switch -->
                                <div class="relative inline-block w-10 mr-2 align-middle select-none transition duration-200 ease-in">
                                    <input type="checkbox" name="toggle" id="toggle2" class="toggle-checkbox absolute block w-5 h-5 rounded-full bg-white border-4 appearance-none cursor-pointer border-gray-300 z-10 transition-transform duration-300"/>
                                    <label for="toggle2" class="toggle-label block overflow-hidden h-5 rounded-full bg-gray-300 cursor-pointer transition-colors duration-300"></label>
                                </div>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap text-brand-gray text-[12px]">
                                -
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap text-right">
                                <div class="flex items-center justify-end gap-2">
                                    <a href="admin-blog-edit.jsp" class="w-8 h-8 rounded-lg flex items-center justify-center text-brand-gray hover:text-blue-500 hover:bg-blue-50 transition" title="Sửa">
                                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path></svg>
                                    </a>
                                    <button class="w-8 h-8 rounded-lg flex items-center justify-center text-brand-gray hover:text-red-500 hover:bg-red-50 transition" title="Xóa">
                                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path></svg>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 3 (Published, Not Featured) -->
                        <tr class="hover:bg-brand-bg/50 transition group">
                            <td class="px-5 py-4 whitespace-nowrap">
                                <input type="checkbox" class="w-4 h-4 text-brand-primary rounded border-brand-border focus:ring-brand-primary cursor-pointer">
                            </td>
                            <td class="px-5 py-4">
                                <div class="flex items-center gap-4">
                                    <div class="w-16 h-12 rounded bg-gray-200 overflow-hidden shrink-0 border border-brand-border/50">
                                        <img src="https://images.unsplash.com/photo-1460925895917-afdab827c52f?auto=format&fit=crop&q=80" alt="Thumb" class="w-full h-full object-cover">
                                    </div>
                                    <div>
                                        <div class="font-bold text-[14px] text-brand-text mb-0.5 line-clamp-1 group-hover:text-brand-primary transition cursor-pointer">Kiểm định Cronbach's Alpha trong nghiên cứu định lượng</div>
                                        <div class="text-[12px] text-brand-gray">ID: #1023 • Xem: 3.4K</div>
                                    </div>
                                </div>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap">
                                <span class="bg-teal-50 text-teal-600 border border-teal-100 text-[11px] font-bold px-2 py-0.5 rounded">SPSS</span>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap">
                                <span class="bg-green-100 text-green-700 text-[11px] font-bold px-2.5 py-1 rounded-full flex items-center w-max gap-1">
                                    <span class="w-1.5 h-1.5 rounded-full bg-green-500"></span>
                                    Đã xuất bản
                                </span>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap text-center">
                                <!-- Toggle Switch -->
                                <div class="relative inline-block w-10 mr-2 align-middle select-none transition duration-200 ease-in">
                                    <input type="checkbox" name="toggle" id="toggle3" class="toggle-checkbox absolute block w-5 h-5 rounded-full bg-white border-4 appearance-none cursor-pointer border-gray-300 z-10 transition-transform duration-300"/>
                                    <label for="toggle3" class="toggle-label block overflow-hidden h-5 rounded-full bg-gray-300 cursor-pointer transition-colors duration-300"></label>
                                </div>
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap text-brand-gray text-[12px]">
                                12/05/2026<br>14:15 PM
                            </td>
                            <td class="px-5 py-4 whitespace-nowrap text-right">
                                <div class="flex items-center justify-end gap-2">
                                    <a href="admin-blog-edit.jsp" class="w-8 h-8 rounded-lg flex items-center justify-center text-brand-gray hover:text-blue-500 hover:bg-blue-50 transition" title="Sửa">
                                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path></svg>
                                    </a>
                                    <button class="w-8 h-8 rounded-lg flex items-center justify-center text-brand-gray hover:text-red-500 hover:bg-red-50 transition" title="Xóa">
                                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path></svg>
                                    </button>
                                </div>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
            
            <!-- Pagination -->
            <div class="px-5 py-4 border-t border-brand-border flex items-center justify-between">
                <span class="text-[12px] text-brand-gray">Đang hiển thị 1 đến 10 của 124 bài viết</span>
                <div class="flex items-center gap-1">
                    <button class="w-8 h-8 flex items-center justify-center rounded border border-brand-border text-brand-gray hover:bg-brand-bg hover:text-brand-primary transition" disabled>
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path></svg>
                    </button>
                    <button class="w-8 h-8 flex items-center justify-center rounded border border-brand-primary bg-brand-primary text-white font-bold text-[13px]">1</button>
                    <button class="w-8 h-8 flex items-center justify-center rounded border border-brand-border text-brand-gray hover:bg-brand-bg hover:text-brand-primary transition text-[13px] font-medium">2</button>
                    <button class="w-8 h-8 flex items-center justify-center rounded border border-brand-border text-brand-gray hover:bg-brand-bg hover:text-brand-primary transition text-[13px] font-medium">3</button>
                    <span class="w-8 h-8 flex items-center justify-center text-brand-gray">...</span>
                    <button class="w-8 h-8 flex items-center justify-center rounded border border-brand-border text-brand-gray hover:bg-brand-bg hover:text-brand-primary transition">
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
                    </button>
                </div>
            </div>
        </div>

    </main>

</body>
</html>
