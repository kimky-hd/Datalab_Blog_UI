<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!-- 1. DYNAMIC ISLAND HEADER -->
        <header
            class="fixed top-4 left-1/2 -translate-x-1/2 w-[98%] h-[56px] bg-white/80 backdrop-blur-xl rounded-[2rem] shadow-island z-50 flex items-center justify-between px-4 md:px-10 border border-white/50">
            <div class="flex items-center">
                <!-- Mobile Menu Toggle -->
                <button id="mobileMenuBtn" class="lg:hidden w-10 h-10 rounded-full bg-brand-bg flex items-center justify-center text-brand-gray hover:text-brand-primary transition-colors mr-2 shrink-0">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                    </svg>
                </button>
                
                <!-- Logo -->
                <a href="#" class="flex flex-col text-brand-primary shrink-0 transition-transform hover:scale-105">
                <div class="flex items-center gap-1.5">
                    <img src="img/datalab-02.png" alt="DataLab Logo" class="h-7 w-auto object-contain">
                    <span class="font-bold text-[18px] tracking-tight leading-none">DataLab</span>
                </div>
                </a>
            </div>

            <!-- Search Bar -->
            <div class="flex-1 max-w-xl mx-2 md:mx-8 hidden sm:block">
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
            <div class="flex items-center gap-2 md:gap-4 shrink-0">
                <button
                    class="hidden sm:flex w-10 h-10 rounded-full bg-brand-bg items-center justify-center text-brand-gray hover:text-brand-primary hover:bg-green-50 transition-colors">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                            d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z"></path>
                    </svg>
                </button>
                <button id="loginTriggerIcon"
                    class="w-10 h-10 rounded-full bg-brand-bg flex items-center justify-center text-brand-gray hover:text-brand-primary hover:bg-green-50 transition-colors">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                            d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                    </svg>
                </button>
            </div>
        </header>

        <!-- Login Modal Overlay -->
        <div id="loginModal" class="fixed inset-0 z-[100] hidden flex items-center justify-center opacity-0 transition-opacity duration-300">
            <!-- Backdrop -->
            <div class="absolute inset-0 bg-brand-text/40 backdrop-blur-sm" id="loginBackdrop"></div>
            
            <!-- Modal Content -->
            <div class="relative w-full max-w-md bg-white/95 backdrop-blur-xl rounded-[2rem] shadow-island border border-white/50 p-8 transform scale-95 transition-transform duration-300" id="loginModalContent">
                <!-- Close Button -->
                <button id="closeLoginBtn" class="absolute top-4 right-4 w-8 h-8 rounded-full bg-brand-bg flex items-center justify-center text-brand-gray hover:text-brand-primary hover:bg-green-50 transition">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                </button>

                <div class="text-center mb-8">
                    <img src="img/datalab-02.png" alt="Logo" class="h-10 mx-auto mb-4">
                    <h2 class="text-[24px] font-bold text-brand-text">Chào mừng trở lại!</h2>
                    <p class="text-[13px] text-brand-gray mt-1">Đăng nhập để truy cập tài nguyên nghiên cứu</p>
                </div>

                <form class="flex flex-col gap-4">
                    <div>
                        <label class="block text-[12px] font-bold text-brand-text mb-1.5">Email / Tên đăng nhập</label>
                        <input type="text" class="w-full bg-brand-bg focus:bg-white border border-brand-border focus:border-brand-primary focus:ring-2 focus:ring-brand-primary/20 rounded-xl px-4 py-2.5 text-[13px] outline-none transition" placeholder="Nhập email của bạn">
                    </div>
                    <div>
                        <div class="flex items-center justify-between mb-1.5">
                            <label class="block text-[12px] font-bold text-brand-text">Mật khẩu</label>
                            <a href="#" class="text-[11px] font-semibold text-brand-primary hover:underline">Quên mật khẩu?</a>
                        </div>
                        <input type="password" class="w-full bg-brand-bg focus:bg-white border border-brand-border focus:border-brand-primary focus:ring-2 focus:ring-brand-primary/20 rounded-xl px-4 py-2.5 text-[13px] outline-none transition" placeholder="••••••••">
                    </div>
                    
                    <button type="button" onclick="window.location.href='admin-dashboard.jsp'" class="w-full bg-brand-primary hover:bg-brand-secondary text-white font-bold py-3 rounded-xl shadow-md transition mt-2">
                        Đăng nhập
                    </button>
                    
                    <div class="text-center mt-4 flex items-center justify-center gap-4">
                        <button type="button" class="w-10 h-10 rounded-full bg-brand-bg border border-brand-border flex items-center justify-center text-brand-text hover:bg-white hover:border-brand-primary transition">
                            <svg class="w-4 h-4" viewBox="0 0 24 24" fill="currentColor"><path d="M12.545,10.239v3.821h5.445c-0.712,2.315-2.647,3.972-5.445,3.972c-3.332,0-6.033-2.701-6.033-6.032s2.701-6.032,6.033-6.032c1.498,0,2.866,0.549,3.921,1.453l2.814-2.814C17.503,2.988,15.139,2,12.545,2C7.021,2,2.543,6.477,2.543,12s4.478,10,10.002,10c8.396,0,10.249-7.85,9.426-11.748L12.545,10.239z"/></svg>
                        </button>
                        <button type="button" class="w-10 h-10 rounded-full bg-brand-bg border border-brand-border flex items-center justify-center text-[#1877F2] hover:bg-white hover:border-[#1877F2] transition">
                            <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24"><path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.469h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.469h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/></svg>
                        </button>
                    </div>

                    <div class="text-center mt-2">
                        <span class="text-[12px] text-brand-gray">Chưa có tài khoản?</span>
                        <a href="#" class="text-[12px] font-bold text-brand-primary hover:underline ml-1">Đăng ký ngay</a>
                    </div>
                </form>
            </div>
        </div>

        <script>
            document.addEventListener('DOMContentLoaded', () => {
                const loginModal = document.getElementById('loginModal');
                const loginModalContent = document.getElementById('loginModalContent');
                const loginTriggers = [document.getElementById('loginTriggerIcon')];
                const closeBtn = document.getElementById('closeLoginBtn');
                const backdrop = document.getElementById('loginBackdrop');

                const openModal = () => {
                    loginModal.classList.remove('hidden');
                    // Small delay to allow display:block to apply before animating opacity
                    setTimeout(() => {
                        loginModal.classList.remove('opacity-0');
                        loginModalContent.classList.remove('scale-95');
                        loginModalContent.classList.add('scale-100');
                    }, 10);
                };

                const closeModal = () => {
                    loginModal.classList.add('opacity-0');
                    loginModalContent.classList.remove('scale-100');
                    loginModalContent.classList.add('scale-95');
                    
                    // Wait for transition to finish before hiding
                    setTimeout(() => {
                        loginModal.classList.add('hidden');
                    }, 300);
                };

                loginTriggers.forEach(trigger => {
                    if(trigger) {
                        trigger.addEventListener('click', (e) => {
                            e.preventDefault();
                            openModal();
                        });
                    }
                });

                if(closeBtn) closeBtn.addEventListener('click', closeModal);
                if(backdrop) backdrop.addEventListener('click', closeModal);
            });
        </script>
