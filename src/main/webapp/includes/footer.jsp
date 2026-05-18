<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!-- 4. BACKGROUND WAVE DECORATION (Dưới cùng trang web) -->
        <div class="wave-bg fixed bottom-0 left-0 w-full h-[320px] overflow-hidden opacity-40" style="z-index: -1;">
            <!-- Seamless Wave 1 (Slow) -->
            <svg class="absolute bottom-0 left-0 w-[200%] h-full animate-wave-slow" viewBox="0 0 2880 320"
                preserveAspectRatio="none">
                <path fill="#C6F6D5"
                    d="M0,160 C360,160 360,280 720,280 C1080,280 1080,160 1440,160 C1800,160 1800,280 2160,280 C2520,280 2520,160 2880,160 L2880,320 L0,320 Z">
                </path>
            </svg>
            <!-- Seamless Wave 2 (Fast) -->
            <svg class="absolute bottom-0 left-0 w-[200%] h-full animate-wave-fast opacity-50" viewBox="0 0 2880 320"
                preserveAspectRatio="none">
                <path fill="#9AE6B4"
                    d="M0,192 C360,192 360,80 720,80 C1080,80 1080,192 1440,192 C1800,192 1800,80 2160,80 C2520,80 2520,192 2880,192 L2880,320 L0,320 Z">
                </path>
            </svg>
        </div>

        <!-- 5. DYNAMIC ISLAND LIQUID GLASS FOOTER -->
        <div class="px-6 md:px-12 pb-8 relative z-10">
            <footer
                class="bg-white/40 backdrop-blur-2xl rounded-[2.5rem] py-6 px-6 md:py-8 md:px-10 shadow-island border border-white/40 max-w-[1200px] mx-auto">
                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-8 md:gap-12">

                    <div class="md:col-span-1">
                        <a href="#" class="flex items-center gap-2 text-brand-primary mb-5">
                            <img src="img/datalab-02.png" alt="DataLab Logo" class="h-8 w-auto object-contain">
                            <span class="font-bold text-xl tracking-tight">DataLab</span>
                        </a>
                        <p class="text-[12.5px] text-brand-gray mb-6 leading-relaxed">
                            Nền tảng nghiên cứu khoa học chuyên sâu cho cộng đồng học thuật Việt Nam.
                        </p>
                        <div class="flex gap-3">
                            <a href="#"
                                class="w-8 h-8 rounded-full bg-white/60 flex items-center justify-center text-brand-primary hover:bg-brand-primary hover:text-white transition-all shadow-sm">
                                <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                                    <path
                                        d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.469h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.469h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z" />
                                </svg>
                            </a>
                            <a href="#"
                                class="w-8 h-8 rounded-full bg-white/60 flex items-center justify-center text-brand-primary hover:bg-brand-primary hover:text-white transition-all shadow-sm">
                                <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                                    <path
                                        d="M12 0C8.74 0 8.333.015 7.053.072 2.695.272.273 2.69.073 7.052.014 8.333 0 8.741 0 12c0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98C8.333 23.986 8.741 24 12 24c3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98C15.668.014 15.259 0 12 0zm0 5.838a6.162 6.162 0 100 12.324 6.162 6.162 0 000-12.324zM12 16a4 4 0 110-8 4 4 0 010 8zm6.406-11.845a1.44 1.44 0 100 2.881 1.44 1.44 0 000-2.881z" />
                                </svg>
                            </a>
                        </div>
                    </div>

                    <div>
                        <h4 class="font-bold text-[14px] text-brand-text mb-5">Khám phá</h4>
                        <ul class="flex flex-col gap-3 text-[12.5px] text-brand-gray">
                            <li><a href="#" class="hover:text-brand-primary transition-colors">Tài liệu SPSS</a></li>
                            <li><a href="#" class="hover:text-brand-primary transition-colors">Khóa học Online</a></li>
                            <li><a href="#" class="hover:text-brand-primary transition-colors">Cộng đồng</a></li>
                        </ul>
                    </div>

                    <div>
                        <h4 class="font-bold text-[14px] text-brand-text mb-5">Liên hệ</h4>
                        <ul class="flex flex-col gap-3 text-[12.5px] text-brand-gray">
                            <li class="flex gap-2">
                                <svg class="w-4 h-4 text-brand-primary/60 shrink-0 mt-0.5" fill="none"
                                    stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z">
                                    </path>
                                </svg>
                                <span>contact@datalab.vn</span>
                            </li>
                        </ul>
                    </div>

                    <div>
                        <h4 class="font-bold text-[14px] text-brand-text mb-5">Bản tin</h4>
                        <div class="flex relative">
                            <input type="email" placeholder="Email của bạn"
                                class="w-full bg-white/60 border border-green-100 rounded-full py-2.5 pl-4 pr-10 text-[12px] focus:outline-none focus:border-brand-primary transition-all">
                            <button
                                class="absolute right-1 top-1 w-8 h-8 bg-brand-primary rounded-full flex items-center justify-center text-white hover:shadow-md transition-all">
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M14 5l7 7m0 0l-7 7m7-7H3"></path>
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>

                <div class="text-center text-[11px] text-brand-light pt-10 mt-10 border-t border-brand-border/30">
                    <p>© 2026 DataLab Academy. Crafted with precision.</p>
                </div>
            </footer>
        </div>

        <!-- 6. FLOATING ACTIONS (Zalo & Back to Top) -->
        <div class="fixed bottom-6 right-8 flex flex-col gap-4 z-[60]">
            <!-- Zalo CTA -->
            <a href="#" target="_blank" class="flex items-center group transition-all duration-500">
                <div class="relative">
                    <!-- Sóng xung quanh icon để tạo sự chú ý tinh tế -->
                    <div class="absolute inset-0 bg-[#0068FF]/20 rounded-full animate-ping group-hover:hidden"></div>
                    <div class="w-14 h-14 relative flex items-center justify-center transition-transform duration-500 group-hover:scale-110">
                        <img src="img/Logo Zalo Arc.png" alt="Zalo" class="w-full h-full object-contain drop-shadow-md">
                    </div>
                </div>
                <div class="max-w-0 overflow-hidden transition-all duration-700 ease-in-out group-hover:max-w-[250px] opacity-0 group-hover:opacity-100">
                    <div class="ml-3 px-4 py-2 bg-white/40 backdrop-blur-md border border-white/50 rounded-2xl shadow-island">
                        <span class="text-[#0068FF] font-semibold text-[12.5px] whitespace-nowrap tracking-tight">Kết nối cộng đồng DataLab</span>
                    </div>
                </div>
            </a>

            <!-- Back to Top Button -->
            <button id="backToTop"
                class="w-12 h-12 bg-white/80 backdrop-blur-xl border border-white rounded-full shadow-island flex items-center justify-center text-brand-primary opacity-0 translate-y-10 invisible transition-all duration-500 hover:scale-110 active:scale-95 group ml-auto">
                <svg class="w-6 h-6 transition-transform group-hover:-translate-y-1" fill="none" stroke="currentColor"
                    viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M5 15l7-7 7 7"></path>
                </svg>
            </button>
        </div>
