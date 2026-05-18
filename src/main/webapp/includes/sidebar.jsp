<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!-- Mobile Sidebar Overlay -->
        <div id="sidebarOverlay" class="fixed inset-0 bg-brand-text/40 backdrop-blur-sm z-30 hidden lg:hidden transition-opacity opacity-0 pointer-events-none"></div>

        <!-- 2. LEFT SIDEBAR -->
        <aside id="leftSidebar"
            class="fixed top-[90px] -left-[300px] lg:left-6 w-[250px] h-[calc(100vh-114px)] bg-white/90 backdrop-blur-xl border border-white rounded-[2rem] shadow-island overflow-hidden flex flex-col p-6 z-40 custom-scrollbar transition-all duration-300">

            <!-- Accordion Container -->
            <div class="flex flex-col gap-1 overflow-y-auto flex-1 custom-scrollbar pr-2 mb-4">
                
                <!-- 1. BẮT ĐẦU NGHIÊN CỨU -->
                <div class="accordion-item mb-1">
                    <div class="accordion-header bg-brand-primary text-white rounded-xl px-4 py-3 flex items-center justify-between shadow-soft cursor-pointer hover:bg-brand-secondary transition">
                        <span class="font-bold text-[13px]">Bắt đầu nghiên cứu</span>
                        <svg class="w-4 h-4 transition-transform duration-300 transform accordion-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                    <div class="accordion-content hidden px-2 pb-2 pt-1">
                        <ul class="flex flex-col gap-1 border-l-2 border-brand-primary/20 ml-3 pl-3">
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Nghiên cứu khoa học là gì?</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Các loại nghiên cứu</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Quy trình nghiên cứu tổng quát</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Những lỗi thường gặp</a></li>
                        </ul>
                    </div>
                </div>

                <!-- 2. CHỌN ĐỀ TÀI -->
                <div class="accordion-item">
                    <div class="accordion-header flex items-center justify-between px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group cursor-pointer">
                        <div class="flex items-center gap-3">
                            <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                            </svg>
                            <span class="font-semibold text-[13px]">Chọn đề tài</span>
                        </div>
                        <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary transition-transform duration-300 transform accordion-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                    <div class="accordion-content hidden px-2 pt-1 pb-2">
                        <ul class="flex flex-col gap-1 border-l-2 border-green-200 ml-5 pl-4">
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Cách tìm đề tài</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Xác định vấn đề nghiên cứu</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Tìm research gap</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Đánh giá đề tài tốt</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Ví dụ đề tài mẫu</a></li>
                        </ul>
                    </div>
                </div>

                <!-- 3. TỔNG QUAN TÀI LIỆU -->
                <div class="accordion-item">
                    <div class="accordion-header flex items-center justify-between px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group cursor-pointer">
                        <div class="flex items-center gap-3">
                            <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"></path>
                            </svg>
                            <span class="font-semibold text-[13px]">Tổng quan tài liệu</span>
                        </div>
                        <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary transition-transform duration-300 transform accordion-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                    <div class="accordion-content hidden px-2 pt-1 pb-2">
                        <ul class="flex flex-col gap-1 border-l-2 border-green-200 ml-5 pl-4">
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Tìm bài báo khoa học</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Đọc bài báo hiệu quả</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Viết literature review</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Xây dựng hypotheses</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Các loại research gap</a></li>
                        </ul>
                    </div>
                </div>

                <!-- 4. XÂY DỰNG MÔ HÌNH -->
                <div class="accordion-item">
                    <div class="accordion-header flex items-center justify-between px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group cursor-pointer">
                        <div class="flex items-center gap-3">
                            <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 5a1 1 0 011-1h14a1 1 0 011 1v2a1 1 0 01-1 1H5a1 1 0 01-1-1V5zM4 13a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H5a1 1 0 01-1-1v-6zM16 13a1 1 0 011-1h2a1 1 0 011 1v6a1 1 0 01-1 1h-2a1 1 0 01-1-1v-6z"></path>
                            </svg>
                            <span class="font-semibold text-[13px]">Xây dựng mô hình</span>
                        </div>
                        <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary transition-transform duration-300 transform accordion-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                    <div class="accordion-content hidden px-2 pt-1 pb-2">
                        <ul class="flex flex-col gap-1 border-l-2 border-green-200 ml-5 pl-4">
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Các loại biến trong nghiên cứu</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Conceptual framework</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Mediator - Moderator</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Lý thuyết nền</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Xây dựng giả thuyết logic</a></li>
                        </ul>
                    </div>
                </div>

                <!-- 5. THIẾT KẾ NGHIÊN CỨU -->
                <div class="accordion-item">
                    <div class="accordion-header flex items-center justify-between px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group cursor-pointer">
                        <div class="flex items-center gap-3">
                            <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 4a2 2 0 114 0v1a1 1 0 001 1h3a1 1 0 011 1v3a1 1 0 01-1 1h-1a2 2 0 100 4h1a1 1 0 011 1v3a1 1 0 01-1 1h-3a1 1 0 01-1-1v-1a2 2 0 10-4 0v1a1 1 0 01-1 1H7a1 1 0 01-1-1v-3a1 1 0 00-1-1H4a2 2 0 110-4h1a1 1 0 001-1V7a1 1 0 011-1h3a1 1 0 001-1V4z"></path>
                            </svg>
                            <span class="font-semibold text-[13px]">Thiết kế nghiên cứu</span>
                        </div>
                        <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary transition-transform duration-300 transform accordion-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                    <div class="accordion-content hidden px-2 pt-1 pb-2">
                        <ul class="flex flex-col gap-1 border-l-2 border-green-200 ml-5 pl-4">
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Định lượng vs Định tính</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Thiết kế bảng hỏi</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Thang đo Likert</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Sampling</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Xác định cỡ mẫu</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Pilot test & Common method bias</a></li>
                        </ul>
                    </div>
                </div>

                <!-- 6. THU THẬP DỮ LIỆU -->
                <div class="accordion-item">
                    <div class="accordion-header flex items-center justify-between px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group cursor-pointer">
                        <div class="flex items-center gap-3">
                            <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 10v6m0 0l-3-3m3 3l3-3m2-8H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V9l-4-4z"></path>
                            </svg>
                            <span class="font-semibold text-[13px]">Thu thập dữ liệu</span>
                        </div>
                        <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary transition-transform duration-300 transform accordion-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                    <div class="accordion-content hidden px-2 pt-1 pb-2">
                        <ul class="flex flex-col gap-1 border-l-2 border-green-200 ml-5 pl-4">
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Thiết kế biểu mẫu khảo sát</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Thu thập dữ liệu sơ cấp</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Khai thác dữ liệu thứ cấp</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Phỏng vấn & Thảo luận nhóm</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Làm sạch & Mã hóa dữ liệu</a></li>
                        </ul>
                    </div>
                </div>

                <!-- 7. PHÂN TÍCH DỮ LIỆU -->
                <div class="accordion-item">
                    <div class="accordion-header flex items-center justify-between px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group cursor-pointer">
                        <div class="flex items-center gap-3">
                            <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                            </svg>
                            <span class="font-semibold text-[13px]">Phân tích dữ liệu</span>
                        </div>
                        <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary transition-transform duration-300 transform accordion-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                    <div class="accordion-content hidden px-2 pt-1 pb-2">
                        <ul class="flex flex-col gap-1 border-l-2 border-green-200 ml-5 pl-4">
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">SPSS</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">R</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">SEM (SmartPLS, AMOS, Mplus)</a></li>
                        </ul>
                    </div>
                </div>

                <!-- 8. VIẾT HỌC THUẬT -->
                <div class="accordion-item">
                    <div class="accordion-header flex items-center justify-between px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group cursor-pointer">
                        <div class="flex items-center gap-3">
                            <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                            </svg>
                            <span class="font-semibold text-[13px]">Viết học thuật</span>
                        </div>
                        <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary transition-transform duration-300 transform accordion-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                    <div class="accordion-content hidden px-2 pt-1 pb-2">
                        <ul class="flex flex-col gap-1 border-l-2 border-green-200 ml-5 pl-4">
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Cấu trúc bài viết học thuật</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">APA Style</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Tránh đạo văn</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Dùng AI đúng cách</a></li>
                        </ul>
                    </div>
                </div>

                <!-- 9. AI TRONG NGHIÊN CỨU -->
                <div class="accordion-item">
                    <div class="accordion-header flex items-center justify-between px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group cursor-pointer">
                        <div class="flex items-center gap-3">
                            <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                            </svg>
                            <span class="font-semibold text-[13px]">AI trong nghiên cứu</span>
                        </div>
                        <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary transition-transform duration-300 transform accordion-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                    <div class="accordion-content hidden px-2 pt-1 pb-2">
                        <ul class="flex flex-col gap-1 border-l-2 border-green-200 ml-5 pl-4">
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">AI hỗ trợ tìm ý tưởng</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">AI tìm research gap</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">AI trong phân tích dữ liệu</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">AI hỗ trợ viết học thuật</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Những lưu ý quan trọng</a></li>
                        </ul>
                    </div>
                </div>

                <!-- 10. TÀI NGUYÊN -->
                <div class="accordion-item">
                    <div class="accordion-header flex items-center justify-between px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group cursor-pointer">
                        <div class="flex items-center gap-3">
                            <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 8h14M5 8a2 2 0 110-4h14a2 2 0 110 4M5 8v10a2 2 0 002 2h10a2 2 0 002-2V8m-9 4h4"></path>
                            </svg>
                            <span class="font-semibold text-[13px]">Tài nguyên</span>
                        </div>
                        <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary transition-transform duration-300 transform accordion-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                    <div class="accordion-content hidden px-2 pt-1 pb-2">
                        <ul class="flex flex-col gap-1 border-l-2 border-green-200 ml-5 pl-4">
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Template & Mẫu biểu</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Dataset mẫu</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">SPSS/R Syntax</a></li>
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Slide bài giảng</a></li>
                        </ul>
                    </div>
                </div>

                <!-- 11. CASE STUDY & VÍ DỤ -->
                <div class="accordion-item">
                    <div class="accordion-header flex items-center justify-between px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group cursor-pointer">
                        <div class="flex items-center gap-3">
                            <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                            </svg>
                            <span class="font-semibold text-[13px]">Case study & ví dụ</span>
                        </div>
                        <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary transition-transform duration-300 transform accordion-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                    <div class="accordion-content hidden px-2 pt-1 pb-2">
                        <ul class="flex flex-col gap-1 border-l-2 border-green-200 ml-5 pl-4">
                            <li><a href="#" class="block text-[12px] text-brand-gray hover:text-brand-primary py-1.5 transition">Phân tích bài báo thật</a></li>
                        </ul>
                    </div>
                </div>

            </div>

            <div class="mt-4 bg-green-50/50 rounded-xl p-4 border border-green-100 shrink-0">
                <h4 class="font-bold text-[12px] text-brand-primary uppercase mb-3 tracking-wider">BẮT ĐẦU NGAY</h4>
                <div class="flex flex-col gap-2 mb-4">
                    <div class="flex items-center gap-2">
                        <svg class="w-4 h-4 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                        <span class="text-[12px] text-brand-text font-medium">Lộ trình học tập</span>
                    </div>
                    <div class="flex items-center gap-2">
                        <svg class="w-4 h-4 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                        <span class="text-[12px] text-brand-text font-medium">Tài liệu miễn phí</span>
                    </div>
                </div>
                <button
                    class="w-full bg-brand-primary hover:bg-brand-secondary text-white font-bold py-2 rounded-lg flex items-center justify-center gap-2 transition">
                    Tải miễn phí
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M14 5l7 7m0 0l-7 7m7-7H3"></path>
                    </svg>
                </button>
            </div>

            <!-- Sitemap & Socials -->
            <div class="mt-5 flex items-center justify-between px-1 shrink-0">
                <div class="flex items-center gap-3 text-brand-gray text-[12px] font-semibold">
                    <a href="#" class="hover:text-brand-primary transition">Sitemap</a>
                    <span class="w-1 h-1 rounded-full bg-brand-light"></span>
                    <a href="#" class="hover:text-brand-primary transition">Giới thiệu</a>
                </div>
                <div class="flex items-center gap-2.5">
                    <!-- Facebook -->
                    <a href="#" class="text-brand-light hover:text-[#1877F2] transition transform hover:scale-110" title="Facebook">
                        <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z"></path>
                        </svg>
                    </a>
                    <!-- TikTok -->
                    <a href="#" class="text-brand-light hover:text-black transition transform hover:scale-110" title="TikTok">
                        <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M12.525.02c1.31-.02 2.61-.01 3.91-.01.08 1.53.63 3.09 1.75 4.17 1.12 1.11 2.7 1.62 4.24 1.79v4.03c-1.44-.05-2.89-.35-4.2-.97-.57-.26-1.1-.59-1.62-.93-.01 2.92.01 5.84-.02 8.75-.08 1.4-.54 2.79-1.35 3.94-1.31 1.92-3.58 3.17-5.91 3.21-1.43.08-2.86-.31-4.08-1.03-2.02-1.12-3.44-3.13-3.72-5.38-.28-2.31.5-4.72 2.1-6.42 1.58-1.67 3.93-2.5 6.22-2.22.02 1.34.01 2.68.01 4.02-1.07-.15-2.2.04-3.13.58-.87.5-1.48 1.34-1.69 2.33-.21.99-.07 2.05.44 2.91.56.92 1.57 1.51 2.66 1.61 1.05.08 2.13-.19 2.96-.82.88-.67 1.4-1.74 1.46-2.86.03-4.73.02-9.45.02-14.18z"></path>
                        </svg>
                    </a>
                </div>
            </div>
        </aside>

        <script>
            document.addEventListener('DOMContentLoaded', () => {
                const mobileMenuBtn = document.getElementById('mobileMenuBtn');
                const leftSidebar = document.getElementById('leftSidebar');
                const sidebarOverlay = document.getElementById('sidebarOverlay');

                const toggleSidebar = () => {
                    if (!leftSidebar || !sidebarOverlay) return;
                    
                    const isClosed = leftSidebar.classList.contains('-left-[300px]');
                    if (isClosed) {
                        // Open sidebar
                        leftSidebar.classList.remove('-left-[300px]');
                        leftSidebar.classList.add('left-4');
                        sidebarOverlay.classList.remove('hidden');
                        // tiny delay for transition
                        setTimeout(() => {
                            sidebarOverlay.classList.remove('opacity-0', 'pointer-events-none');
                        }, 10);
                        document.body.style.overflow = 'hidden'; // prevent scrolling
                    } else {
                        // Close sidebar
                        leftSidebar.classList.add('-left-[300px]');
                        leftSidebar.classList.remove('left-4');
                        sidebarOverlay.classList.add('opacity-0', 'pointer-events-none');
                        setTimeout(() => {
                            sidebarOverlay.classList.add('hidden');
                        }, 300);
                        document.body.style.overflow = '';
                    }
                };

                if (mobileMenuBtn) {
                    mobileMenuBtn.addEventListener('click', toggleSidebar);
                }
                if (sidebarOverlay) {
                    sidebarOverlay.addEventListener('click', toggleSidebar);
                }
            });
        </script>
