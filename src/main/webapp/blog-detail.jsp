<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hướng dẫn mô hình SEM chuyên sâu trên AMOS - DataLab</title>
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
                            bg: '#F8FCF9',
                            card: '#FFFFFF',
                            text: '#1F2937',
                            gray: '#6B7280',
                            light: '#9CA3AF',
                            border: '#E5E7EB'
                        }
                    }
                }
            }
        }
    </script>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Blog Content Specific Styles for beautiful formatting */
        .prose h2 { font-size: 1.5rem; font-weight: 700; color: #1F2937; margin-top: 2rem; margin-bottom: 1rem; }
        .prose h3 { font-size: 1.25rem; font-weight: 700; color: #1F2937; margin-top: 1.5rem; margin-bottom: 0.75rem; }
        .prose p { margin-bottom: 1.25rem; line-height: 1.75; color: #4B5563; }
        .prose img { border-radius: 1rem; margin: 2rem 0; width: 100%; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06); }
        .prose ul { list-style-type: disc; padding-left: 1.5rem; margin-bottom: 1.25rem; color: #4B5563; }
        .prose li { margin-bottom: 0.5rem; }
        .prose strong { color: #111827; }
        .prose blockquote { border-left: 4px solid #1A7332; padding-left: 1rem; font-style: italic; color: #6B7280; background: #f0fdf4; padding: 1rem; border-radius: 0 0.5rem 0.5rem 0; margin-bottom: 1.25rem; }
    </style>
</head>

<body class="text-[13px] antialiased selection:bg-brand-primary selection:text-white bg-brand-bg">

    <!-- 1. DYNAMIC ISLAND HEADER -->
    <jsp:include page="includes/header.jsp" />

    <!-- 2. LEFT SIDEBAR -->
    <jsp:include page="includes/sidebar.jsp" />

    <!-- 3. MAIN CONTENT CONTAINER -->
    <div class="lg:ml-[290px] pt-[100px] px-6 lg:px-8 lg:pr-10 min-h-screen pb-20 overflow-x-hidden relative" style="z-index: 1;">

        <!-- Navigation Menu / Breadcrumbs -->
        <nav class="max-w-[1200px] mx-auto mb-8 flex flex-wrap items-center gap-2 text-[13px] font-semibold">
            <a href="index.jsp" class="text-brand-gray hover:text-brand-primary transition shrink-0">Trang chủ</a>
            <svg class="w-4 h-4 text-brand-light" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
            <a href="index.jsp" class="text-brand-gray hover:text-brand-primary transition">Bài đăng mới nhất</a>
            <svg class="w-4 h-4 text-brand-light" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
            <span class="text-brand-primary line-clamp-1">Hướng dẫn mô hình SEM chuyên sâu trên AMOS</span>
        </nav>

        <!-- Main Area inner wrapper -->
        <div class="max-w-[1200px] mx-auto flex flex-col xl:flex-row gap-8">

            <!-- LEFT COLUMN (Blog Detail Content) -->
            <main class="flex-1 min-w-0 flex flex-col gap-6">

                <!-- Blog Header (Title, Meta) -->
                <header class="bg-white rounded-3xl p-8 shadow-soft border border-brand-border/50 relative overflow-hidden">
                    <!-- Glassmorphism decorative blob -->
                    <div class="absolute top-0 right-0 -translate-y-1/2 translate-x-1/3 w-64 h-64 bg-green-100/50 rounded-full blur-3xl pointer-events-none"></div>
                    
                    <span class="inline-block bg-green-100 text-brand-primary text-[11px] font-bold px-3 py-1 rounded-full uppercase tracking-wider mb-4 relative z-10">AMOS</span>
                    
                    <h1 class="text-[28px] md:text-[36px] font-extrabold text-brand-text leading-[1.2] mb-6 relative z-10">
                        Hướng dẫn mô hình SEM chuyên sâu trên AMOS: Từ cơ bản đến nâng cao
                    </h1>
                    
                    <div class="flex flex-wrap items-center gap-6 text-[13px] font-medium text-brand-gray relative z-10">
                        <div class="flex items-center gap-2">
                            <img src="https://i.pravatar.cc/100?img=11" alt="Author" class="w-8 h-8 rounded-full border-2 border-white shadow-sm">
                            <span class="text-brand-text font-bold">TS. Nguyễn Văn A</span>
                        </div>
                        <div class="flex items-center gap-1.5">
                            <svg class="w-4 h-4 text-brand-light" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path></svg>
                            <span>15/07/2026</span>
                        </div>
                        <div class="flex items-center gap-1.5">
                            <svg class="w-4 h-4 text-brand-light" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                            <span>Đọc 10 phút</span>
                        </div>
                        <div class="flex items-center gap-1.5">
                            <svg class="w-4 h-4 text-brand-light" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path></svg>
                            <span>1.2K lượt xem</span>
                        </div>
                    </div>
                </header>

                <!-- Blog Cover Image -->
                <div class="w-full h-[300px] md:h-[450px] rounded-3xl overflow-hidden shadow-card relative group">
                    <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&q=80" alt="Cover" class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-105">
                </div>

                <!-- Blog Content Area -->
                <article class="bg-white rounded-3xl p-8 shadow-soft border border-brand-border/50 prose max-w-none">
                    
                    <!-- Subtitle / Summary (Nội dung phụ) -->
                    <div class="bg-green-50/50 p-6 rounded-2xl border-l-4 border-brand-primary mb-8">
                        <h3 class="!mt-0 !mb-3 text-[18px] text-brand-primary font-bold">Tóm tắt nội dung chính</h3>
                        <p class="!mb-0 font-medium text-[14px]">
                            Bài viết này cung cấp một hướng dẫn toàn diện về cách xây dựng và phân tích mô hình Phương trình cấu trúc (SEM) bằng phần mềm AMOS. Chúng ta sẽ đi qua các bước từ việc thiết lập dữ liệu, vẽ mô hình đo lường, đến việc kiểm định các giả thuyết và đánh giá độ phù hợp của mô hình. Bài viết đi kèm với bộ dữ liệu mẫu để bạn có thể thực hành ngay.
                        </p>
                    </div>

                    <!-- Main Content (Nội dung chính) -->
                    <h2>1. Tổng quan về SEM và AMOS</h2>
                    <p>
                        Mô hình phương trình cấu trúc (Structural Equation Modeling - SEM) là một kỹ thuật phân tích thống kê đa biến mạnh mẽ, kết hợp giữa phân tích nhân tố và phân tích hồi quy đa biến. Nó cho phép các nhà nghiên cứu kiểm tra và đánh giá các mối quan hệ phức tạp giữa các biến quan sát và biến tiềm ẩn.
                    </p>
                    <p>
                        IBM SPSS AMOS là một trong những phần mềm phổ biến nhất được sử dụng để phân tích SEM. Với giao diện đồ họa thân thiện, AMOS giúp việc vẽ và kiểm định mô hình trở nên trực quan hơn rất nhiều so với việc phải viết code.
                    </p>

                    <img src="https://images.unsplash.com/photo-1460925895917-afdab827c52f?auto=format&fit=crop&q=80" alt="Phân tích dữ liệu với AMOS">
                    <p class="text-center text-[12px] text-brand-light italic !mt-[-1rem]">Hình 1: Giao diện trực quan của phần mềm AMOS khi phân tích mô hình SEM.</p>

                    <h2>2. Các bước thực hiện phân tích SEM trên AMOS</h2>
                    <p>Để thực hiện phân tích SEM thành công, bạn cần tuân theo một quy trình chặt chẽ bao gồm các bước sau:</p>
                    <ul>
                        <li><strong>Bước 1: Thiết lập mô hình đo lường (Measurement Model).</strong> Xác định các biến quan sát cho từng biến tiềm ẩn thông qua CFA (Phân tích nhân tố khẳng định).</li>
                        <li><strong>Bước 2: Đánh giá độ tin cậy và giá trị.</strong> Sử dụng các chỉ số như Cronbach's Alpha, CR (Composite Reliability) và AVE (Average Variance Extracted).</li>
                        <li><strong>Bước 3: Thiết lập mô hình cấu trúc (Structural Model).</strong> Vẽ các mũi tên chỉ mối quan hệ nhân quả giữa các biến tiềm ẩn theo giả thuyết nghiên cứu.</li>
                        <li><strong>Bước 4: Đánh giá độ phù hợp của mô hình (Model Fit).</strong> Xem xét các chỉ số như Chi-square/df, CFI, TLI, RMSEA.</li>
                    </ul>

                    <blockquote>
                        "Một mô hình SEM tốt không chỉ cần các chỉ số Model Fit đạt chuẩn mà còn phải có ý nghĩa về mặt lý thuyết." - TS. Nguyễn Văn A
                    </blockquote>

                    <h2>3. Thực hành với dữ liệu mẫu</h2>
                    <p>
                        Trong phần này, chúng ta sẽ sử dụng bộ dữ liệu khảo sát sự hài lòng của khách hàng (N=350) để chạy thử nghiệm. Các bạn có thể tải bộ dữ liệu ở phần Tài nguyên bên cột phải.
                    </p>
                    <p>
                        Đầu tiên, hãy import dữ liệu vào AMOS. Nhấn vào biểu tượng <strong>Select Data Files</strong> và chọn file `.sav` của bạn. Sau đó, bắt đầu kéo thả các biến quan sát vào không gian làm việc.
                    </p>

                    <div class="flex items-center gap-4 bg-brand-bg p-6 rounded-2xl border border-brand-border mt-8">
                        <div class="w-12 h-12 rounded-full bg-brand-primary text-white flex items-center justify-center shrink-0">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-[15px] text-brand-text mb-1">Tải bộ dữ liệu thực hành (SPSS-20)</h4>
                            <p class="text-[13px] text-brand-gray mb-2">Bộ dữ liệu hoàn chỉnh để thực hành theo bài viết này.</p>
                            <a href="#" class="text-brand-primary font-bold text-[13px] hover:underline">Tải xuống ngay (.sav)</a>
                        </div>
                    </div>

                </article>

                <!-- Tag & Share -->
                <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-4 sm:gap-0 bg-white rounded-3xl p-6 shadow-soft border border-brand-border/50">
                    <div class="flex flex-wrap items-center gap-2">
                        <span class="font-bold text-[13px] text-brand-text mr-2">Tags:</span>
                        <a href="#" class="px-3 py-1.5 bg-brand-bg rounded-lg text-[12px] font-semibold text-brand-gray hover:text-brand-primary hover:bg-green-50 transition">#AMOS</a>
                        <a href="#" class="px-3 py-1.5 bg-brand-bg rounded-lg text-[12px] font-semibold text-brand-gray hover:text-brand-primary hover:bg-green-50 transition">#SEM</a>
                        <a href="#" class="px-3 py-1.5 bg-brand-bg rounded-lg text-[12px] font-semibold text-brand-gray hover:text-brand-primary hover:bg-green-50 transition">#Phân_tích_dữ_liệu</a>
                    </div>
                    <div class="flex items-center gap-3">
                        <span class="font-bold text-[13px] text-brand-text mr-2 hidden sm:block">Chia sẻ:</span>
                        <button class="w-8 h-8 rounded-full bg-blue-50 text-blue-600 flex items-center justify-center hover:bg-blue-600 hover:text-white transition"><svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24"><path d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z"></path></svg></button>
                        <button class="w-8 h-8 rounded-full bg-sky-50 text-sky-500 flex items-center justify-center hover:bg-sky-500 hover:text-white transition"><svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24"><path d="M22.46 6.002c-.77.343-1.597.574-2.464.678a4.305 4.305 0 001.887-2.375 8.597 8.597 0 01-2.724 1.042 4.288 4.288 0 00-7.306 3.908A12.164 12.164 0 013.11 5.215a4.286 4.286 0 001.325 5.72 4.267 4.267 0 01-1.942-.536v.054a4.29 4.29 0 003.438 4.204 4.3 4.3 0 01-1.936.073 4.295 4.295 0 004.008 2.979 8.614 8.614 0 01-5.334 1.838c-.34 0-.676-.02-.998-.059a12.128 12.128 0 006.573 1.926c7.887 0 12.202-6.535 12.202-12.2 0-.186-.004-.372-.012-.556a8.724 8.724 0 002.146-2.227z"></path></svg></button>
                    </div>
                </div>

            </main>

            <!-- RIGHT COLUMN (Sidebar in Content) -->
            <aside class="hidden xl:flex xl:w-[320px] shrink-0 flex-col gap-6">

                <!-- Tài nguyên nổi bật -->
                <div class="bg-white rounded-2xl border border-brand-border/50 p-6 shadow-soft">
                    <h3 class="text-[16px] font-bold text-brand-text mb-4">Tài nguyên bài viết</h3>

                    <div class="flex flex-col gap-4">
                        <div class="flex items-center gap-3 cursor-pointer group">
                            <div class="w-10 h-10 rounded-lg bg-indigo-50 flex items-center justify-center shrink-0">
                                <svg class="w-5 h-5 text-indigo-500" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z" clip-rule="evenodd"></path>
                                </svg>
                            </div>
                            <div>
                                <h4 class="text-[13px] font-bold text-brand-text leading-tight group-hover:text-brand-primary transition">Dataset_SPSS_Thực_hành.sav</h4>
                                <span class="text-[11px] text-brand-gray">SPSS Data • 1.8 MB</span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Bài viết liên quan -->
                <div class="bg-white rounded-2xl border border-brand-border/50 p-6 shadow-soft">
                    <h3 class="text-[16px] font-bold text-brand-text mb-4">Bài viết liên quan</h3>

                    <div class="flex flex-col gap-4">
                        <div class="flex items-center gap-3 cursor-pointer group" onclick="window.location.href='blog-detail.jsp'">
                            <div class="w-16 h-16 rounded-xl overflow-hidden shrink-0">
                                <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&q=80" alt="thumbnail" class="w-full h-full object-cover">
                            </div>
                            <div>
                                <h4 class="text-[13px] font-bold text-brand-text leading-tight group-hover:text-brand-primary transition mb-1">Thực hành EFA và phân tích nhân tố</h4>
                                <span class="text-[11px] text-brand-gray font-medium">Đọc 5 phút</span>
                            </div>
                        </div>
                        <div class="flex items-center gap-3 cursor-pointer group" onclick="window.location.href='blog-detail.jsp'">
                            <div class="w-16 h-16 rounded-xl overflow-hidden shrink-0">
                                <img src="https://images.unsplash.com/photo-1542744173-8e7e53415bb0?auto=format&fit=crop&q=80" alt="thumbnail" class="w-full h-full object-cover">
                            </div>
                            <div>
                                <h4 class="text-[13px] font-bold text-brand-text leading-tight group-hover:text-brand-primary transition mb-1">Kiểm định Cronbach's Alpha trong nghiên cứu</h4>
                                <span class="text-[11px] text-brand-gray font-medium">Đọc 7 phút</span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Từ khóa phổ biến -->
                <div class="bg-white rounded-2xl border border-brand-border/50 p-6 shadow-soft">
                    <h3 class="text-[16px] font-bold text-brand-text mb-4">Từ khóa phổ biến</h3>

                    <div class="flex flex-wrap gap-2">
                        <a href="#" class="px-3 py-1 bg-green-50 border border-green-100 rounded-full text-[11px] font-bold text-brand-primary hover:bg-green-100 transition">#SPSS_cơ_bản</a>
                        <a href="#" class="px-3 py-1 bg-green-50 border border-green-100 rounded-full text-[11px] font-bold text-brand-primary hover:bg-green-100 transition">#AMOS</a>
                        <a href="#" class="px-3 py-1 bg-green-50 border border-green-100 rounded-full text-[11px] font-bold text-brand-primary hover:bg-green-100 transition">#Phân_tích_dữ_liệu</a>
                        <a href="#" class="px-3 py-1 bg-green-50 border border-green-100 rounded-full text-[11px] font-bold text-brand-primary hover:bg-green-100 transition">#SmartPLS</a>
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
