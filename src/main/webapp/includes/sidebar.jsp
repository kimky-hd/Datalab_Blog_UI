<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!-- 2. LEFT SIDEBAR -->
        <aside
            class="fixed top-[90px] left-6 w-[250px] h-[calc(100vh-114px)] bg-white/90 backdrop-blur-xl border border-white rounded-[2rem] shadow-island overflow-hidden flex flex-col p-6 z-40 custom-scrollbar">

            <div
                class="bg-brand-primary text-white rounded-xl px-4 py-3 flex items-center justify-between mb-4 shadow-soft cursor-pointer hover:bg-brand-secondary transition">
                <span class="font-bold text-[13px]">Bắt đầu nghiên cứu</span>
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                </svg>
            </div>

            <div class="flex flex-col gap-1">
                <a href="#"
                    class="flex items-center gap-3 px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group">
                    <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none"
                        stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                    </svg>
                    <span class="font-semibold">Chọn đề tài</span>
                </a>
                <a href="#"
                    class="flex items-center gap-3 px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group">
                    <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none"
                        stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253">
                        </path>
                    </svg>
                    <span class="font-semibold">Tổng quan tài liệu</span>
                </a>
                <a href="#"
                    class="flex items-center gap-3 px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group">
                    <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none"
                        stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M4 5a1 1 0 011-1h14a1 1 0 011 1v2a1 1 0 01-1 1H5a1 1 0 01-1-1V5zM4 13a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H5a1 1 0 01-1-1v-6zM16 13a1 1 0 011-1h2a1 1 0 011 1v6a1 1 0 01-1 1h-2a1 1 0 01-1-1v-6z">
                        </path>
                    </svg>
                    <span class="font-semibold">Khung lý thuyết</span>
                </a>
                <a href="#"
                    class="flex items-center gap-3 px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group">
                    <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none"
                        stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M11 4a2 2 0 114 0v1a1 1 0 001 1h3a1 1 0 011 1v3a1 1 0 01-1 1h-1a2 2 0 100 4h1a1 1 0 011 1v3a1 1 0 01-1 1h-3a1 1 0 01-1-1v-1a2 2 0 10-4 0v1a1 1 0 01-1 1H7a1 1 0 01-1-1v-3a1 1 0 00-1-1H4a2 2 0 110-4h1a1 1 0 001-1V7a1 1 0 011-1h3a1 1 0 001-1V4z">
                        </path>
                    </svg>
                    <span class="font-semibold">Thiết kế nghiên cứu</span>
                </a>
                <a href="#"
                    class="flex items-center gap-3 px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group">
                    <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none"
                        stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z">
                        </path>
                    </svg>
                    <span class="font-semibold">Phân tích dữ liệu</span>
                </a>
                <a href="#"
                    class="flex items-center gap-3 px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group">
                    <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none"
                        stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z">
                        </path>
                    </svg>
                    <span class="font-semibold">Viết học thuật</span>
                </a>
                <a href="#"
                    class="flex items-center gap-3 px-3 py-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group">
                    <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none"
                        stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M8 14v3m4-3v3m4-3v3M3 21h18M3 10h18M3 7l9-4 9 4M4 10h16v11H4V10z"></path>
                    </svg>
                    <span class="font-semibold">Kỹ năng trình bày</span>
                </a>
                <a href="#"
                    class="flex items-center gap-3 px-3 py-2 mt-2 text-brand-gray hover:text-brand-primary hover:bg-green-50/50 rounded-lg transition group">
                    <svg class="w-4 h-4 text-brand-light group-hover:text-brand-primary" fill="none"
                        stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z">
                        </path>
                    </svg>
                    <span class="font-semibold">Case study thực tế</span>
                </a>
            </div>

            <div class="mt-8 bg-green-50/50 rounded-xl p-4 border border-green-100">
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
        </aside>
