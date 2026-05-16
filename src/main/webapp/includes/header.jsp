<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!-- 1. DYNAMIC ISLAND HEADER -->
        <header
            class="fixed top-4 left-1/2 -translate-x-1/2 w-[98%] h-[56px] bg-white/80 backdrop-blur-xl rounded-[2rem] shadow-island z-50 flex items-center justify-between px-10 border border-white/50">
            <!-- Logo -->
            <a href="#" class="flex flex-col text-brand-primary shrink-0 transition-transform hover:scale-105">
                <div class="flex items-center gap-1.5">
                    <img src="img/datalab-02.png" alt="DataLab Logo" class="h-7 w-auto object-contain">
                    <span class="font-bold text-[18px] tracking-tight leading-none">DataLab</span>
                </div>
            </a>

            <!-- Search Bar -->
            <div class="flex-1 max-w-xl mx-8">
                <div class="relative w-full group">
                    <div class="absolute inset-y-0 left-4 flex items-center pointer-events-none">
                        <svg class="w-4 h-4 text-brand-light group-focus-within:text-brand-primary transition-colors"
                            fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                        </svg>
                    </div>
                    <input type="text" placeholder="Tìm kiếm tài liệu, khóa học..."
                        class="w-full bg-brand-bg focus:bg-white focus:outline-none focus:ring-2 focus:ring-brand-primary/20 border border-transparent focus:border-brand-primary/50 rounded-full py-2.5 pl-11 pr-4 text-[13px] font-medium text-brand-text placeholder-brand-light transition-all">
                </div>
            </div>

            <!-- Right Actions -->
            <div class="flex items-center gap-4 shrink-0">
                <button
                    class="w-10 h-10 rounded-full bg-brand-bg flex items-center justify-center text-brand-gray hover:text-brand-primary hover:bg-green-50 transition-colors">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                            d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z"></path>
                    </svg>
                </button>
                <button
                    class="w-10 h-10 rounded-full bg-brand-bg flex items-center justify-center text-brand-gray hover:text-brand-primary hover:bg-green-50 transition-colors">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                            d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                    </svg>
                </button>
                <div class="w-px h-6 bg-brand-border mx-1"></div>
                <button
                    class="w-10 h-10 rounded-full overflow-hidden border-2 border-transparent hover:border-brand-primary transition-all shadow-sm">
                    <img src="https://ui-avatars.com/api/?name=User&background=1A7332&color=fff" alt="Avatar"
                        class="w-full h-full object-cover">
                </button>
            </div>
        </header>
