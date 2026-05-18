<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DataLab Academy</title>
        <link rel="icon" href="img/datalab-02.png" type="image/png">
        <!-- Tailwind CSS CDN -->
        <script src="https://cdn.tailwindcss.com"></script>
        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap"
            rel="stylesheet">

        <script>
            tailwind.config = {
                theme: {
                    extend: {
                        fontFamily: {
                            sans: ['"Plus Jakarta Sans"', 'sans-serif'],
                        },
                        colors: {
                            brand: {
                                primary: '#1A7332', /* Main Datalab Green */
                                secondary: '#2E8B57', /* Lighter Green */
                                bg: '#F8FCF9', /* Very light green background */
                                card: '#FFFFFF',
                                text: '#1F2937', /* Dark Gray */
                                gray: '#6B7280', /* Medium Gray */
                                light: '#9CA3AF', /* Light Gray */
                                border: '#E5E7EB'
                            }
                        }
                    }
                }
            }
        </script>
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body class="text-[13px] antialiased selection:bg-brand-primary selection:text-white">

        <!-- 1. DYNAMIC ISLAND HEADER -->
        <jsp:include page="includes/header.jsp" />

        <!-- 2. LEFT SIDEBAR -->
        <jsp:include page="includes/sidebar.jsp" />

        <!-- 3. MAIN CONTENT CONTAINER -->
        <div class="lg:ml-[290px] pt-[100px] px-6 lg:px-8 lg:pr-10 min-h-screen pb-20 overflow-x-hidden relative" style="z-index: 1;">

            <!-- Simplified Navigation Menu -->
            <nav class="max-w-[1400px] w-full mx-auto mb-8 lg:mb-10 flex overflow-x-auto whitespace-nowrap custom-scrollbar items-center justify-start gap-x-6 lg:gap-x-10 gap-y-4 px-2 pb-2">
                <a href="#" class="shrink-0 text-[14px] font-bold text-brand-primary border-b-2 border-brand-primary pb-1">Trang chủ</a>
                <a href="#"
                    class="shrink-0 text-[14px] font-semibold text-brand-gray hover:text-brand-primary transition-all pb-1 border-b-2 border-transparent hover:border-brand-primary">Lộ trình học</a>
                <a href="#"
                    class="shrink-0 text-[14px] font-semibold text-brand-gray hover:text-brand-primary transition-all pb-1 border-b-2 border-transparent hover:border-brand-primary">Phương pháp nghiên cứu</a>
                <a href="#"
                    class="shrink-0 text-[14px] font-semibold text-brand-gray hover:text-brand-primary transition-all pb-1 border-b-2 border-transparent hover:border-brand-primary">Thu thập dữ liệu</a>
                <a href="#"
                    class="shrink-0 text-[14px] font-semibold text-brand-gray hover:text-brand-primary transition-all pb-1 border-b-2 border-transparent hover:border-brand-primary">Phân tích dữ liệu</a>
                <a href="#"
                    class="shrink-0 text-[14px] font-semibold text-brand-gray hover:text-brand-primary transition-all pb-1 border-b-2 border-transparent hover:border-brand-primary">Viết học thuật</a>
                <a href="#"
                    class="shrink-0 text-[14px] font-semibold text-brand-gray hover:text-brand-primary transition-all pb-1 border-b-2 border-transparent hover:border-brand-primary">Tài nguyên</a>
            </nav>

            <!-- Main Area inner wrapper -->
            <div class="max-w-[1400px] w-full mx-auto flex flex-col xl:flex-row gap-8">

                <!-- LEFT COLUMN (Content) -->
                <main class="flex-1 min-w-0 flex flex-col gap-12">

                    <!-- Hero Section -->
                    <section
                        class="bg-gradient-to-r from-green-100 to-green-50 rounded-[2rem] p-8 md:p-10 flex flex-col md:flex-row items-center gap-8 shadow-soft">
                        <div class="flex-1">
                            <h1 class="text-3xl md:text-[32px] font-bold text-brand-text leading-[1.2] mb-4">
                                Tự tin nghiên cứu khoa học & Phân tích dữ liệu
                            </h1>
                            <p class="text-[14px] text-brand-gray mb-6 leading-relaxed">
                                Để nghiên cứu không còn là gánh nặng. Bắt đầu ngay!
                            </p>
                            <button
                                class="bg-brand-primary hover:bg-brand-secondary text-white font-bold px-6 py-3 rounded-xl shadow-md hover:shadow-lg transition">
                                Đăng ký ngay
                            </button>
                        </div>
                        <div
                            class="w-48 h-48 md:w-64 md:h-64 lg:w-72 lg:h-72 xl:w-64 xl:h-64 2xl:w-72 2xl:h-72 shrink-0 bg-white rounded-2xl shadow-card overflow-hidden flex items-center justify-center relative transform transition duration-500 hover:scale-105">
                            <!-- Abstract illustration placeholder matching the image vibe -->
                            <div class="absolute inset-0 bg-emerald-50 opacity-50"></div>
                            <svg class="w-32 h-32 text-brand-primary opacity-80" fill="none" stroke="currentColor"
                                viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1"
                                    d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z">
                                </path>
                            </svg>
                            <div
                                class="absolute top-4 left-4 bg-white px-2 py-1 rounded text-[10px] font-bold text-brand-primary shadow-sm">
                                SPSS</div>
                            <div
                                class="absolute bottom-4 right-4 bg-white px-2 py-1 rounded text-[10px] font-bold text-brand-primary shadow-sm">
                                AMOS</div>
                        </div>
                    </section>

                    <!-- Bài viết nổi bật -->
                    <section>
                        <div class="flex items-center justify-between mb-8">
                            <div class="flex items-center gap-3">
                                <div class="w-1.5 h-6 bg-brand-primary rounded-full shadow-sm shadow-brand-primary/20"></div>
                                <h2 class="text-[20px] font-bold text-brand-text tracking-tight">Bài viết nổi bật</h2>
                            </div>
                            <a href="#"
                                class="text-[13px] font-bold text-brand-primary hover:text-brand-secondary flex items-center gap-1">Xem
                                tất cả <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                                </svg></a>
                        </div>

                        <article
                            class="bg-white rounded-2xl p-4 flex flex-col md:flex-row gap-6 hover-card shadow-soft border border-brand-border/50">
                            <div class="md:w-5/12 h-48 rounded-xl overflow-hidden relative">
                                <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&q=80"
                                    alt="Dashboard" class="w-full h-full object-cover">
                                <div class="absolute top-3 left-3 flex gap-2">
                                    <span
                                        class="bg-white/90 backdrop-blur px-2.5 py-1 rounded-md text-[11px] font-bold text-brand-text shadow-sm flex items-center gap-1">
                                        <svg class="w-3 h-3 text-brand-primary" fill="currentColor" viewBox="0 0 20 20">
                                            <path d="M2 10a8 8 0 018-8v8h8a8 8 0 11-16 0z"></path>
                                            <path d="M12 2.252A8.014 8.014 0 0117.748 8H12V2.252z"></path>
                                        </svg>
                                        15
                                    </span>
                                </div>
                            </div>
                            <div class="md:w-7/12 flex flex-col justify-center pr-4">
                                <span
                                    class="inline-block bg-green-100 text-brand-primary text-[10px] font-bold px-2 py-0.5 rounded uppercase tracking-wider mb-3 w-max">SPSS</span>
                                <h3 class="text-[18px] font-bold text-brand-text leading-tight mb-3">Hướng dẫn chạy hồi
                                    quy tuyến tính bội trên SPSS</h3>
                                <p class="text-[13px] text-brand-gray line-clamp-2 mb-4 leading-relaxed">
                                    Phân tích hồi quy tuyến tính bội là một trong những phương pháp phân tích thống kê
                                    cơ bản được sử dụng rộng rãi trong các nghiên cứu định lượng để đánh giá mối quan
                                    hệ...
                                </p>
                                <div class="mt-auto flex items-center justify-between">
                                    <div class="flex items-center gap-3">
                                        <span class="text-[12px] font-semibold text-brand-gray">15/07/2025</span>
                                        <span class="w-1 h-1 rounded-full bg-brand-light"></span>
                                        <span class="text-[12px] font-medium text-brand-light">Đọc 5 phút</span>
                                    </div>
                                    <span
                                        class="text-[12px] font-bold text-brand-primary cursor-pointer hover:underline">Đọc
                                        tiếp</span>
                                </div>
                            </div>
                        </article>
                    </section>

                    <!-- Lộ trình nghiên cứu -->
                    <section>
                        <div class="flex items-center gap-3 mb-10">
                            <div class="w-1.5 h-6 bg-brand-primary rounded-full"></div>
                            <h2 class="text-[20px] font-bold text-brand-text tracking-tight">Lộ trình nghiên cứu khoa học</h2>
                        </div>

                        <div class="relative bg-white/50 backdrop-blur-sm rounded-[3rem] p-12 border border-white shadow-island-soft overflow-hidden">
                            <!-- Background Decoration -->
                            <div class="absolute top-0 right-0 -translate-y-1/2 translate-x-1/2 w-64 h-64 bg-green-100/30 rounded-full blur-3xl"></div>
                            <div class="absolute bottom-0 left-0 translate-y-1/2 -translate-x-1/2 w-64 h-64 bg-green-50/50 rounded-full blur-3xl"></div>

                            <!-- Roadmap Grid (S-Curve Flow) -->
                            <div class="grid grid-cols-2 lg:grid-cols-4 gap-y-16 lg:gap-y-20 gap-x-6 lg:gap-x-10 relative z-10">
                                
                                <!-- Step 1 -->
                                <div class="group flex flex-col items-center text-center relative lg:order-1">
                                    <div class="relative w-20 h-20 mb-5">
                                        <div class="absolute inset-0 bg-green-100 rounded-2xl rotate-6 group-hover:rotate-12 transition-transform duration-500"></div>
                                        <div class="absolute inset-0 bg-white rounded-2xl shadow-sm border border-green-50 flex items-center justify-center transition-transform duration-500 group-hover:-translate-y-2 group-hover:-translate-x-1">
                                            <svg class="w-8 h-8 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-1">
                                        <span class="text-[10px] font-extrabold text-brand-primary uppercase tracking-[0.2em]">Bước 01</span>
                                        <h3 class="text-[14px] font-bold text-brand-text">Chọn đề tài</h3>
                                    </div>
                                    <!-- Connector -->
                                    <div class="hidden lg:block absolute top-10 left-[70%] w-full h-px border-t border-dashed border-green-200"></div>
                                </div>

                                <!-- Step 2 -->
                                <div class="group flex flex-col items-center text-center relative lg:order-2">
                                    <div class="relative w-20 h-20 mb-5">
                                        <div class="absolute inset-0 bg-green-100 rounded-2xl -rotate-6 group-hover:-rotate-12 transition-transform duration-500"></div>
                                        <div class="absolute inset-0 bg-white rounded-2xl shadow-sm border border-green-50 flex items-center justify-center transition-transform duration-500 group-hover:-translate-y-2 group-hover:translate-x-1">
                                            <svg class="w-8 h-8 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-1">
                                        <span class="text-[10px] font-extrabold text-brand-primary uppercase tracking-[0.2em]">Bước 02</span>
                                        <h3 class="text-[14px] font-bold text-brand-text">Tìm GAP</h3>
                                    </div>
                                    <!-- Connector -->
                                    <div class="hidden lg:block absolute top-10 left-[70%] w-full h-px border-t border-dashed border-green-200"></div>
                                </div>

                                <!-- Step 3 -->
                                <div class="group flex flex-col items-center text-center relative lg:order-3">
                                    <div class="relative w-20 h-20 mb-5">
                                        <div class="absolute inset-0 bg-green-100 rounded-2xl rotate-3 group-hover:rotate-6 transition-transform duration-500"></div>
                                        <div class="absolute inset-0 bg-white rounded-2xl shadow-sm border border-green-50 flex items-center justify-center transition-transform duration-500 group-hover:-translate-y-2">
                                            <svg class="w-8 h-8 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M4 5h16a1 1 0 011 1v2a1 1 0 01-1 1H4a1 1 0 01-1-1V6a1 1 0 011-1zm0 7h7a1 1 0 011 1v6a1 1 0 01-1 1H4a1 1 0 01-1-1v-6a1 1 0 011-1zm11 0h5a1 1 0 011 1v6a1 1 0 01-1 1h-5a1 1 0 01-1-1v-6a1 1 0 011-1z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-1">
                                        <span class="text-[10px] font-extrabold text-brand-primary uppercase tracking-[0.2em]">Bước 03</span>
                                        <h3 class="text-[14px] font-bold text-brand-text">Xây dựng mô hình</h3>
                                    </div>
                                    <!-- Connector -->
                                    <div class="hidden lg:block absolute top-10 left-[70%] w-full h-px border-t border-dashed border-green-200"></div>
                                </div>

                                <!-- Step 4 -->
                                <div class="group flex flex-col items-center text-center relative lg:order-4">
                                    <div class="relative w-20 h-20 mb-5">
                                        <div class="absolute inset-0 bg-green-100 rounded-2xl -rotate-12 group-hover:-rotate-6 transition-transform duration-500"></div>
                                        <div class="absolute inset-0 bg-white rounded-2xl shadow-sm border border-green-50 flex items-center justify-center transition-transform duration-500 group-hover:-translate-y-2">
                                            <svg class="w-8 h-8 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M11 4a2 2 0 114 0v1a1 1 0 001 1h3a1 1 0 011 1v3a1 1 0 01-1 1h-1a2 2 0 100 4h1a1 1 0 011 1v3a1 1 0 01-1 1h-3a1 1 0 01-1-1v-1a2 2 0 10-4 0v1a1 1 0 01-1 1H7a1 1 0 01-1-1v-3a1 1 0 00-1-1H4a2 2 0 110-4h1a1 1 0 001-1V7a1 1 0 011-1h3a1 1 0 001-1V4z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-1">
                                        <span class="text-[10px] font-extrabold text-brand-primary uppercase tracking-[0.2em]">Bước 04</span>
                                        <h3 class="text-[14px] font-bold text-brand-text">Thiết kế nghiên cứu</h3>
                                    </div>
                                </div>

                                <!-- Step 5 -->
                                <div class="group flex flex-col items-center text-center relative lg:order-8">
                                    <div class="relative w-20 h-20 mb-5">
                                        <div class="absolute inset-0 bg-green-100 rounded-2xl -rotate-6 group-hover:rotate-12 transition-transform duration-500"></div>
                                        <div class="absolute inset-0 bg-white rounded-2xl shadow-sm border border-green-50 flex items-center justify-center transition-transform duration-500 group-hover:-translate-y-2">
                                            <svg class="w-8 h-8 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-1">
                                        <span class="text-[10px] font-extrabold text-brand-primary uppercase tracking-[0.2em]">Bước 05</span>
                                        <h3 class="text-[14px] font-bold text-brand-text">Thu thập dữ liệu</h3>
                                    </div>
                                    <!-- Connector pointing left to Step 6 -->
                                    <div class="hidden lg:block absolute top-10 right-[70%] w-full h-px border-t border-dashed border-green-200"></div>
                                </div>

                                <!-- Step 6 -->
                                <div class="group flex flex-col items-center text-center relative lg:order-7">
                                    <div class="relative w-20 h-20 mb-5">
                                        <div class="absolute inset-0 bg-green-100 rounded-2xl rotate-6 group-hover:rotate-0 transition-transform duration-500"></div>
                                        <div class="absolute inset-0 bg-white rounded-2xl shadow-sm border border-green-50 flex items-center justify-center transition-transform duration-500 group-hover:-translate-y-2">
                                            <svg class="w-8 h-8 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-1">
                                        <span class="text-[10px] font-extrabold text-brand-primary uppercase tracking-[0.2em]">Bước 06</span>
                                        <h3 class="text-[14px] font-bold text-brand-text">Phân tích dữ liệu</h3>
                                    </div>
                                    <!-- Connector pointing left to Step 7 -->
                                    <div class="hidden lg:block absolute top-10 right-[70%] w-full h-px border-t border-dashed border-green-200"></div>
                                </div>

                                <!-- Step 7 -->
                                <div class="group flex flex-col items-center text-center relative lg:order-6">
                                    <div class="relative w-20 h-20 mb-5">
                                        <div class="absolute inset-0 bg-green-100 rounded-2xl -rotate-3 group-hover:-rotate-12 transition-transform duration-500"></div>
                                        <div class="absolute inset-0 bg-white rounded-2xl shadow-sm border border-green-50 flex items-center justify-center transition-transform duration-500 group-hover:-translate-y-2">
                                            <svg class="w-8 h-8 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-1">
                                        <span class="text-[10px] font-extrabold text-brand-primary uppercase tracking-[0.2em]">Bước 07</span>
                                        <h3 class="text-[14px] font-bold text-brand-text">Viết kết quả</h3>
                                    </div>
                                    <!-- Connector pointing left to Step 8 -->
                                    <div class="hidden lg:block absolute top-10 right-[70%] w-full h-px border-t border-dashed border-green-200"></div>
                                </div>

                                <!-- Step 8 -->
                                <div class="group flex flex-col items-center text-center relative lg:order-5">
                                    <div class="relative w-20 h-20 mb-5">
                                        <div class="absolute inset-0 bg-green-100 rounded-2xl rotate-12 group-hover:rotate-3 transition-transform duration-500"></div>
                                        <div class="absolute inset-0 bg-white rounded-2xl shadow-sm border border-green-50 flex items-center justify-center transition-transform duration-500 group-hover:-translate-y-2">
                                            <svg class="w-8 h-8 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-1">
                                        <span class="text-[10px] font-extrabold text-brand-primary uppercase tracking-[0.2em]">Bước 08</span>
                                        <h3 class="text-[14px] font-bold text-brand-text">Hoàn thiện</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- Học theo đối tượng -->
                    <section>
                        <div class="flex items-center gap-3 mb-8">
                            <div class="w-1.5 h-6 bg-brand-primary rounded-full shadow-sm shadow-brand-primary/20"></div>
                            <h2 class="text-[20px] font-bold text-brand-text tracking-tight">Học theo đối tượng</h2>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-2 2xl:grid-cols-3 gap-6">

                            <!-- Card 1 -->
                            <div
                                class="bg-white rounded-3xl p-6 shadow-soft border border-brand-border/50 flex flex-col items-center text-center hover-card">
                                <div
                                    class="w-12 h-12 rounded-full bg-blue-50 text-blue-500 flex items-center justify-center mb-4">
                                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253">
                                        </path>
                                    </svg>
                                </div>
                                <h3 class="text-[16px] font-bold text-brand-text mb-4">Sinh viên làm<br>khóa luận</h3>
                                <ul
                                    class="text-left text-[13px] text-brand-gray w-full flex flex-col gap-3 mb-6 flex-1">
                                    <li class="flex items-start gap-2">
                                        <svg class="w-4 h-4 text-blue-500 shrink-0 mt-0.5" fill="none"
                                            stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M5 13l4 4L19 7"></path>
                                        </svg>
                                        <span>Chưa rõ bắt đầu từ đâu?</span>
                                    </li>
                                    <li class="flex items-start gap-2">
                                        <svg class="w-4 h-4 text-blue-500 shrink-0 mt-0.5" fill="none"
                                            stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M5 13l4 4L19 7"></path>
                                        </svg>
                                        <span>Cần hướng dẫn từng bước</span>
                                    </li>
                                    <li class="flex items-start gap-2">
                                        <svg class="w-4 h-4 text-blue-500 shrink-0 mt-0.5" fill="none"
                                            stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M5 13l4 4L19 7"></path>
                                        </svg>
                                        <span>Muốn hoàn thành dễ hiểu</span>
                                    </li>
                                </ul>
                                <button
                                    class="w-full py-2.5 rounded-full border border-blue-500 text-blue-500 font-bold hover:bg-blue-50 transition">Xem
                                    lộ trình</button>
                            </div>

                            <!-- Card 2 -->
                            <div
                                class="bg-white rounded-3xl p-6 shadow-card border border-brand-primary/20 flex flex-col items-center text-center transform scale-105 z-10 relative">
                                <div
                                    class="absolute -top-3 bg-brand-primary text-white text-[10px] font-bold px-3 py-1 rounded-full">
                                    PHỔ BIẾN</div>
                                <div
                                    class="w-12 h-12 rounded-full bg-green-50 text-brand-primary flex items-center justify-center mb-4 mt-2">
                                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4">
                                        </path>
                                    </svg>
                                </div>
                                <h3 class="text-[16px] font-bold text-brand-text mb-4">Học viên cao<br>học</h3>
                                <ul
                                    class="text-left text-[13px] text-brand-gray w-full flex flex-col gap-3 mb-6 flex-1">
                                    <li class="flex items-start gap-2">
                                        <svg class="w-4 h-4 text-brand-primary shrink-0 mt-0.5" fill="none"
                                            stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M5 13l4 4L19 7"></path>
                                        </svg>
                                        <span>Nắm vững phương pháp</span>
                                    </li>
                                    <li class="flex items-start gap-2">
                                        <svg class="w-4 h-4 text-brand-primary shrink-0 mt-0.5" fill="none"
                                            stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M5 13l4 4L19 7"></path>
                                        </svg>
                                        <span>Làm luận văn bài bản</span>
                                    </li>
                                    <li class="flex items-start gap-2">
                                        <svg class="w-4 h-4 text-brand-primary shrink-0 mt-0.5" fill="none"
                                            stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M5 13l4 4L19 7"></path>
                                        </svg>
                                        <span>Phân tích dữ liệu nâng cao</span>
                                    </li>
                                </ul>
                                <button
                                    class="w-full py-2.5 rounded-full border border-brand-primary text-brand-primary font-bold hover:bg-green-50 transition">Xem
                                    lộ trình</button>
                            </div>

                            <!-- Card 3 -->
                            <div
                                class="bg-white rounded-3xl p-6 shadow-soft border border-brand-border/50 flex flex-col items-center text-center hover-card">
                                <div
                                    class="w-12 h-12 rounded-full bg-orange-50 text-orange-500 flex items-center justify-center mb-4">
                                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z">
                                        </path>
                                    </svg>
                                </div>
                                <h3 class="text-[16px] font-bold text-brand-text mb-4">Nghiên cứu &<br>công bố</h3>
                                <ul
                                    class="text-left text-[13px] text-brand-gray w-full flex flex-col gap-3 mb-6 flex-1">
                                    <li class="flex items-start gap-2">
                                        <svg class="w-4 h-4 text-orange-500 shrink-0 mt-0.5" fill="none"
                                            stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M5 13l4 4L19 7"></path>
                                        </svg>
                                        <span>Viết bài báo khoa học</span>
                                    </li>
                                    <li class="flex items-start gap-2">
                                        <svg class="w-4 h-4 text-orange-500 shrink-0 mt-0.5" fill="none"
                                            stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M5 13l4 4L19 7"></path>
                                        </svg>
                                        <span>Phân tích chuyên sâu</span>
                                    </li>
                                    <li class="flex items-start gap-2">
                                        <svg class="w-4 h-4 text-orange-500 shrink-0 mt-0.5" fill="none"
                                            stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M5 13l4 4L19 7"></path>
                                        </svg>
                                        <span>Đáp ứng chuẩn quốc tế</span>
                                    </li>
                                </ul>
                                <button
                                    class="w-full py-2.5 rounded-full border border-orange-500 text-orange-500 font-bold hover:bg-orange-50 transition">Xem
                                    lộ trình</button>
                            </div>

                        </div>
                    </section>

                    <!-- Dữ liệu mẫu SPSS-20 Grid -->
                    <section>
                        <div class="flex items-center justify-between mb-8">
                            <div class="flex items-center gap-3">
                                <div class="w-1.5 h-6 bg-brand-primary rounded-full"></div>
                                <h2 class="text-[20px] font-bold text-brand-text tracking-tight">Bài đăng mới nhất</h2>
                            </div>
                            <div class="flex items-center gap-2 text-brand-gray text-[12px] font-medium bg-white px-3 py-1.5 rounded-full border border-brand-border/40 shadow-sm">
                                <span class="w-2 h-2 bg-red-400 rounded-full animate-pulse"></span>
                                Cập nhật liên tục
                            </div>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-2 2xl:grid-cols-3 gap-6">
                            <!-- We will generate 6 cards to match the layout -->

                            <!-- Loop Item -->
                            <article onclick="window.location.href='blog-detail.jsp'"
                                class="bg-white rounded-2xl p-4 shadow-soft border border-brand-border/50 hover-card group cursor-pointer">
                                <div
                                    class="bg-gradient-to-r from-blue-100 to-green-100 h-32 rounded-xl flex flex-col items-center justify-center mb-4 relative overflow-hidden">
                                    <div class="w-full flex justify-between px-4 absolute top-3">
                                        <svg class="w-5 h-5 text-blue-400" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd"
                                                d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z"
                                                clip-rule="evenodd"></path>
                                        </svg>
                                        <svg class="w-4 h-4 text-brand-primary" fill="none" stroke="currentColor"
                                            viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4">
                                            </path>
                                        </svg>
                                    </div>
                                    <span class="text-blue-500 font-bold text-[15px] drop-shadow-sm mt-2">Dữ liệu
                                        mẫu</span>
                                    <span
                                        class="bg-teal-500 text-white font-black text-[18px] px-4 py-1 rounded-full shadow-md mt-1 transform group-hover:scale-105 transition">SPSS-20</span>
                                </div>
                                <span
                                    class="inline-block bg-green-100 text-brand-primary text-[10px] font-bold px-2 py-0.5 rounded uppercase tracking-wider mb-2">SPSS</span>
                                <h3
                                    class="text-[14px] font-bold text-brand-text leading-snug mb-2 group-hover:text-brand-primary transition">
                                    Hướng dẫn thực hành bộ Dữ liệu mẫu SPSS</h3>
                                <p class="text-[12px] text-brand-gray line-clamp-2 mb-3">Bộ dữ liệu chuẩn hóa, đa dạng
                                    các biến số, phù hợp học tập và...</p>
                                <div class="flex items-center justify-between text-[11px]">
                                    <span class="text-brand-gray font-medium">Lượt tải: 1,540</span>
                                    <span class="text-brand-primary font-bold">Tải ngay</span>
                                </div>
                            </article>

                            <!-- Loop Item -->
                            <article onclick="window.location.href='blog-detail.jsp'"
                                class="bg-white rounded-2xl p-4 shadow-soft border border-brand-border/50 hover-card group cursor-pointer">
                                <div
                                    class="bg-gradient-to-r from-blue-100 to-green-100 h-32 rounded-xl flex flex-col items-center justify-center mb-4 relative overflow-hidden">
                                    <div class="w-full flex justify-between px-4 absolute top-3">
                                        <svg class="w-5 h-5 text-blue-400" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd"
                                                d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z"
                                                clip-rule="evenodd"></path>
                                        </svg>
                                        <svg class="w-4 h-4 text-brand-primary" fill="none" stroke="currentColor"
                                            viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4">
                                            </path>
                                        </svg>
                                    </div>
                                    <span class="text-blue-500 font-bold text-[15px] drop-shadow-sm mt-2">Dữ liệu
                                        mẫu</span>
                                    <span
                                        class="bg-teal-500 text-white font-black text-[18px] px-4 py-1 rounded-full shadow-md mt-1 transform group-hover:scale-105 transition">SPSS-20</span>
                                </div>
                                <span
                                    class="inline-block bg-green-100 text-brand-primary text-[10px] font-bold px-2 py-0.5 rounded uppercase tracking-wider mb-2">SPSS</span>
                                <h3
                                    class="text-[14px] font-bold text-brand-text leading-snug mb-2 group-hover:text-brand-primary transition">
                                    Bộ dữ liệu thực hành khảo sát sự hài lòng</h3>
                                <p class="text-[12px] text-brand-gray line-clamp-2 mb-3">Dữ liệu giả định về sự hài lòng
                                    của khách hàng đối với dịch vụ...</p>
                                <div class="flex items-center justify-between text-[11px]">
                                    <span class="text-brand-gray font-medium">Lượt tải: 2,100</span>
                                    <span class="text-brand-primary font-bold">Tải ngay</span>
                                </div>
                            </article>

                            <!-- Loop Item -->
                            <article onclick="window.location.href='blog-detail.jsp'"
                                class="bg-white rounded-2xl p-4 shadow-soft border border-brand-border/50 hover-card group cursor-pointer">
                                <div
                                    class="bg-gradient-to-r from-blue-100 to-green-100 h-32 rounded-xl flex flex-col items-center justify-center mb-4 relative overflow-hidden">
                                    <div class="w-full flex justify-between px-4 absolute top-3">
                                        <svg class="w-5 h-5 text-blue-400" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd"
                                                d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z"
                                                clip-rule="evenodd"></path>
                                        </svg>
                                        <svg class="w-4 h-4 text-brand-primary" fill="none" stroke="currentColor"
                                            viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4">
                                            </path>
                                        </svg>
                                    </div>
                                    <span class="text-blue-500 font-bold text-[15px] drop-shadow-sm mt-2">Dữ liệu
                                        mẫu</span>
                                    <span
                                        class="bg-teal-500 text-white font-black text-[18px] px-4 py-1 rounded-full shadow-md mt-1 transform group-hover:scale-105 transition">SPSS-20</span>
                                </div>
                                <span
                                    class="inline-block bg-green-100 text-brand-primary text-[10px] font-bold px-2 py-0.5 rounded uppercase tracking-wider mb-2">AMOS</span>
                                <h3
                                    class="text-[14px] font-bold text-brand-text leading-snug mb-2 group-hover:text-brand-primary transition">
                                    Hướng dẫn mô hình SEM chuyên sâu trên AMOS</h3>
                                <p class="text-[12px] text-brand-gray line-clamp-2 mb-3">Tài liệu kèm bộ data thực hành
                                    chạy mô hình SEM chuyên sâu...</p>
                                <div class="flex items-center justify-between text-[11px]">
                                    <span class="text-brand-gray font-medium">Lượt tải: 950</span>
                                    <span class="text-brand-primary font-bold">Tải ngay</span>
                                </div>
                            </article>

                            <!-- Loop Item -->
                            <article onclick="window.location.href='blog-detail.jsp'"
                                class="bg-white rounded-2xl p-4 shadow-soft border border-brand-border/50 hover-card group cursor-pointer">
                                <div
                                    class="bg-gradient-to-r from-blue-100 to-green-100 h-32 rounded-xl flex flex-col items-center justify-center mb-4 relative overflow-hidden">
                                    <div class="w-full flex justify-between px-4 absolute top-3">
                                        <svg class="w-5 h-5 text-blue-400" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd"
                                                d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z"
                                                clip-rule="evenodd"></path>
                                        </svg>
                                        <svg class="w-4 h-4 text-brand-primary" fill="none" stroke="currentColor"
                                            viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4">
                                            </path>
                                        </svg>
                                    </div>
                                    <span class="text-blue-500 font-bold text-[15px] drop-shadow-sm mt-2">Dữ liệu
                                        mẫu</span>
                                    <span
                                        class="bg-teal-500 text-white font-black text-[18px] px-4 py-1 rounded-full shadow-md mt-1 transform group-hover:scale-105 transition">SPSS-20</span>
                                </div>
                                <span
                                    class="inline-block bg-green-100 text-brand-primary text-[10px] font-bold px-2 py-0.5 rounded uppercase tracking-wider mb-2">SPSS</span>
                                <h3
                                    class="text-[14px] font-bold text-brand-text leading-snug mb-2 group-hover:text-brand-primary transition">
                                    Thực hành EFA và phân tích nhân tố</h3>
                                <p class="text-[12px] text-brand-gray line-clamp-2 mb-3">Bộ dữ liệu chuyên biệt để rèn
                                    luyện kỹ năng chạy EFA...</p>
                                <div class="flex items-center justify-between text-[11px]">
                                    <span class="text-brand-gray font-medium">Lượt tải: 1,220</span>
                                    <span class="text-brand-primary font-bold">Tải ngay</span>
                                </div>
                            </article>

                            <!-- Loop Item -->
                            <article onclick="window.location.href='blog-detail.jsp'"
                                class="bg-white rounded-2xl p-4 shadow-soft border border-brand-border/50 hover-card group cursor-pointer">
                                <div
                                    class="bg-gradient-to-r from-blue-100 to-green-100 h-32 rounded-xl flex flex-col items-center justify-center mb-4 relative overflow-hidden">
                                    <div class="w-full flex justify-between px-4 absolute top-3">
                                        <svg class="w-5 h-5 text-blue-400" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd"
                                                d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z"
                                                clip-rule="evenodd"></path>
                                        </svg>
                                        <svg class="w-4 h-4 text-brand-primary" fill="none" stroke="currentColor"
                                            viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4">
                                            </path>
                                        </svg>
                                    </div>
                                    <span class="text-blue-500 font-bold text-[15px] drop-shadow-sm mt-2">Dữ liệu
                                        mẫu</span>
                                    <span
                                        class="bg-teal-500 text-white font-black text-[18px] px-4 py-1 rounded-full shadow-md mt-1 transform group-hover:scale-105 transition">SPSS-20</span>
                                </div>
                                <span
                                    class="inline-block bg-green-100 text-brand-primary text-[10px] font-bold px-2 py-0.5 rounded uppercase tracking-wider mb-2">SMARTPLS</span>
                                <h3
                                    class="text-[14px] font-bold text-brand-text leading-snug mb-2 group-hover:text-brand-primary transition">
                                    Bộ dữ liệu PLS-SEM cho người mới</h3>
                                <p class="text-[12px] text-brand-gray line-clamp-2 mb-3">Tài liệu và số liệu thực hành
                                    trên phần mềm SmartPLS...</p>
                                <div class="flex items-center justify-between text-[11px]">
                                    <span class="text-brand-gray font-medium">Lượt tải: 840</span>
                                    <span class="text-brand-primary font-bold">Tải ngay</span>
                                </div>
                            </article>

                            <!-- Loop Item -->
                            <article onclick="window.location.href='blog-detail.jsp'"
                                class="bg-white rounded-2xl p-4 shadow-soft border border-brand-border/50 hover-card group cursor-pointer">
                                <div
                                    class="bg-gradient-to-r from-blue-100 to-green-100 h-32 rounded-xl flex flex-col items-center justify-center mb-4 relative overflow-hidden">
                                    <div class="w-full flex justify-between px-4 absolute top-3">
                                        <svg class="w-5 h-5 text-blue-400" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd"
                                                d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z"
                                                clip-rule="evenodd"></path>
                                        </svg>
                                        <svg class="w-4 h-4 text-brand-primary" fill="none" stroke="currentColor"
                                            viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4">
                                            </path>
                                        </svg>
                                    </div>
                                    <span class="text-blue-500 font-bold text-[15px] drop-shadow-sm mt-2">Dữ liệu
                                        mẫu</span>
                                    <span
                                        class="bg-teal-500 text-white font-black text-[18px] px-4 py-1 rounded-full shadow-md mt-1 transform group-hover:scale-105 transition">SPSS-20</span>
                                </div>
                                <span
                                    class="inline-block bg-green-100 text-brand-primary text-[10px] font-bold px-2 py-0.5 rounded uppercase tracking-wider mb-2">SPSS</span>
                                <h3
                                    class="text-[14px] font-bold text-brand-text leading-snug mb-2 group-hover:text-brand-primary transition">
                                    Kiểm định T-test và ANOVA</h3>
                                <p class="text-[12px] text-brand-gray line-clamp-2 mb-3">Thực hành so sánh trị trung
                                    bình thông qua bộ dữ liệu chuyên đề...</p>
                                <div class="flex items-center justify-between text-[11px]">
                                    <span class="text-brand-gray font-medium">Lượt tải: 1,800</span>
                                    <span class="text-brand-primary font-bold">Tải ngay</span>
                                </div>
                            </article>

                        </div>

                        <div class="flex justify-center mt-8">
                            <button
                                class="bg-brand-primary hover:bg-brand-secondary text-white font-bold py-2.5 px-8 rounded-full shadow-md transition">
                                Xem thêm
                            </button>
                        </div>
                    </section>

                </main>

                <!-- RIGHT COLUMN (Sidebar in Content) -->
                <aside class="hidden xl:flex xl:w-[280px] 2xl:w-[320px] shrink-0 flex-col gap-6">

                    <!-- Tài nguyên nổi bật -->
                    <div class="bg-white rounded-2xl border border-brand-border/50 p-6 shadow-soft">
                        <h3 class="text-[16px] font-bold text-brand-text mb-4">Tài nguyên nổi bật</h3>

                        <div class="flex flex-col gap-4">
                            <div class="flex items-center gap-3 cursor-pointer group">
                                <div class="w-10 h-10 rounded-lg bg-blue-50 flex items-center justify-center shrink-0">
                                    <svg class="w-5 h-5 text-blue-500" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd"
                                            d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z"
                                            clip-rule="evenodd"></path>
                                    </svg>
                                </div>
                                <div>
                                    <h4
                                        class="text-[13px] font-bold text-brand-text leading-tight group-hover:text-brand-primary transition">
                                        Mua_ban_lcd_NCKH.docx</h4>
                                    <span class="text-[11px] text-brand-gray">Word Document • 1.2 MB</span>
                                </div>
                            </div>

                            <div class="flex items-center gap-3 cursor-pointer group">
                                <div class="w-10 h-10 rounded-lg bg-green-50 flex items-center justify-center shrink-0">
                                    <svg class="w-5 h-5 text-green-500" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd"
                                            d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z"
                                            clip-rule="evenodd"></path>
                                    </svg>
                                </div>
                                <div>
                                    <h4
                                        class="text-[13px] font-bold text-brand-text leading-tight group-hover:text-brand-primary transition">
                                        Data_Sample_Market.xlsx</h4>
                                    <span class="text-[11px] text-brand-gray">Excel Sheet • 4.5 MB</span>
                                </div>
                            </div>

                            <div class="flex items-center gap-3 cursor-pointer group">
                                <div
                                    class="w-10 h-10 rounded-lg bg-indigo-50 flex items-center justify-center shrink-0">
                                    <svg class="w-5 h-5 text-indigo-500" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd"
                                            d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z"
                                            clip-rule="evenodd"></path>
                                    </svg>
                                </div>
                                <div>
                                    <h4
                                        class="text-[13px] font-bold text-brand-text leading-tight group-hover:text-brand-primary transition">
                                        Dataset_SPSS_Thực_hành.sav</h4>
                                    <span class="text-[11px] text-brand-gray">SPSS Data • 1.8 MB</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Xem nhiều nhất -->
                    <div class="bg-white rounded-2xl border border-brand-border/50 p-6 shadow-soft">
                        <h3 class="text-[16px] font-bold text-brand-text mb-4">Xem nhiều nhất</h3>

                        <div class="flex flex-col gap-4">
                            <!-- List Item 1 -->
                            <div class="flex items-center gap-3 cursor-pointer group">
                                <div class="w-12 h-12 rounded-full overflow-hidden shrink-0">
                                    <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&q=80"
                                        alt="thumbnail" class="w-full h-full object-cover">
                                </div>
                                <div>
                                    <h4
                                        class="text-[13px] font-bold text-brand-text leading-tight group-hover:text-brand-primary transition">
                                        Cách xử lý lỗi Common Method Bias (CMB)</h4>
                                    <span class="text-[10px] text-brand-gray font-medium">15k lượt xem</span>
                                </div>
                            </div>

                            <!-- List Item 2 -->
                            <div class="flex items-center gap-3 cursor-pointer group">
                                <div class="w-12 h-12 rounded-full overflow-hidden shrink-0">
                                    <img src="https://images.unsplash.com/photo-1460925895917-afdab827c52f?auto=format&fit=crop&q=80"
                                        alt="thumbnail" class="w-full h-full object-cover">
                                </div>
                                <div>
                                    <h4
                                        class="text-[13px] font-bold text-brand-text leading-tight group-hover:text-brand-primary transition">
                                        Phân tích nhân tố khẳng định CFA toàn tập</h4>
                                    <span class="text-[10px] text-brand-gray font-medium">12k lượt xem</span>
                                </div>
                            </div>

                            <!-- List Item 3 -->
                            <div class="flex items-center gap-3 cursor-pointer group">
                                <div class="w-12 h-12 rounded-full overflow-hidden shrink-0">
                                    <img src="https://images.unsplash.com/photo-1542744173-8e7e53415bb0?auto=format&fit=crop&q=80"
                                        alt="thumbnail" class="w-full h-full object-cover">
                                </div>
                                <div>
                                    <h4
                                        class="text-[13px] font-bold text-brand-text leading-tight group-hover:text-brand-primary transition">
                                        Kiểm định Cronbach's Alpha trong nghiên cứu</h4>
                                    <span class="text-[10px] text-brand-gray font-medium">9.5k lượt xem</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Từ khóa phổ biến -->
                    <div class="bg-white rounded-2xl border border-brand-border/50 p-6 shadow-soft">
                        <h3 class="text-[16px] font-bold text-brand-text mb-4">Từ khóa phổ biến</h3>

                        <div class="flex flex-wrap gap-2">
                            <a href="#"
                                class="px-3 py-1 bg-green-50 border border-green-100 rounded-full text-[11px] font-bold text-brand-primary hover:bg-green-100 transition">#SPSS_cơ_bản</a>
                            <a href="#"
                                class="px-3 py-1 bg-green-50 border border-green-100 rounded-full text-[11px] font-bold text-brand-primary hover:bg-green-100 transition">#AMOS</a>
                            <a href="#"
                                class="px-3 py-1 bg-green-50 border border-green-100 rounded-full text-[11px] font-bold text-brand-primary hover:bg-green-100 transition">#Phân_tích_dữ_liệu</a>
                            <a href="#"
                                class="px-3 py-1 bg-green-50 border border-green-100 rounded-full text-[11px] font-bold text-brand-primary hover:bg-green-100 transition">#SmartPLS</a>
                            <a href="#"
                                class="px-3 py-1 bg-green-50 border border-green-100 rounded-full text-[11px] font-bold text-brand-primary hover:bg-green-100 transition">#EFA_CFA</a>
                            <a href="#"
                                class="px-3 py-1 bg-green-50 border border-green-100 rounded-full text-[11px] font-bold text-brand-primary hover:bg-green-100 transition">#Luận_văn_thạc_sĩ</a>
                        </div>
                    </div>

                </aside>

            </div>
        </div>

        <!-- Footer Component -->
        <jsp:include page="includes/footer.jsp" />

        <!-- Scripts -->
        <script src="js/main.js"></script>

    </body>

    </html>