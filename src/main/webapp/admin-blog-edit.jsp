<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soạn thảo Bài viết - DataLab Admin</title>
    <link rel="icon" href="img/datalab-02.png" type="image/png">
    
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Quill Rich Text Editor CSS -->
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">

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
                        }
                    }
                }
            }
        }
    </script>
    <style>
        /* Custom Quill Overrides to match Datalab Design */
        .ql-toolbar.ql-snow {
            border: 1px solid #E5E7EB;
            border-top-left-radius: 0.75rem;
            border-top-right-radius: 0.75rem;
            background-color: #f9fafb;
            padding: 12px;
        }
        .ql-container.ql-snow {
            border: 1px solid #E5E7EB;
            border-bottom-left-radius: 0.75rem;
            border-bottom-right-radius: 0.75rem;
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-size: 15px;
            background-color: #FFFFFF;
            min-height: 500px;
        }
        .ql-editor {
            min-height: 500px;
            padding: 24px;
        }
        .ql-editor h1, .ql-editor h2 {
            font-weight: 700;
            color: #1F2937;
        }
        
        /* Custom Toggle Switch for Options */
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
            <a href="admin-blog-list.jsp" class="flex items-center gap-2 hover:opacity-80 transition" title="Quay lại danh sách">
                <svg class="w-5 h-5 text-white/80" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18"></path></svg>
                <img src="img/datalab-02.png" alt="DataLab Logo" class="h-8 w-auto brightness-0 invert hidden sm:block">
            </a>
            <div class="w-px h-6 bg-white/20 mx-2 hidden sm:block"></div>
            <h1 class="text-[15px] font-semibold hidden sm:block">Soạn thảo Bài viết</h1>
        </div>
        
        <div class="flex items-center gap-5">
            <div class="flex items-center gap-3 cursor-pointer hover:opacity-80 transition">
                <img src="https://ui-avatars.com/api/?name=Admin&background=fff&color=1A7332" alt="Admin" class="w-8 h-8 rounded-full border border-white/30">
            </div>
        </div>
    </header>

    <!-- Main Workspace -->
    <main class="flex-1 p-6 md:p-8 max-w-[1400px] mx-auto w-full">
        
        <nav class="flex items-center gap-2 text-[12px] font-medium text-brand-gray mb-6">
            <a href="admin-dashboard.jsp" class="hover:text-brand-primary transition">Trang chủ</a>
            <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
            <a href="admin-blog-list.jsp" class="hover:text-brand-primary transition">Quản lý bài viết</a>
            <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
            <span class="text-brand-primary">Soạn thảo</span>
        </nav>

        <div class="flex flex-col lg:flex-row gap-8 items-start">
            
            <!-- Left Column: Content Editor (70%) -->
            <div class="w-full lg:w-[70%] flex flex-col gap-6">
                <!-- Title Input -->
                <div class="bg-white p-6 rounded-xl shadow-sm border border-brand-border">
                    <input type="text" placeholder="Nhập tiêu đề bài viết..." class="w-full text-[28px] font-extrabold text-brand-text placeholder-gray-300 outline-none bg-transparent">
                </div>

                <!-- Summary Input -->
                <div class="bg-white p-5 rounded-xl shadow-sm border border-brand-border">
                    <label class="block text-[13px] font-bold text-brand-text mb-2">Tóm tắt bài viết</label>
                    <textarea placeholder="Nhập đoạn tóm tắt ngắn gọn xuất hiện trên thẻ bài viết..." class="w-full text-[14px] text-brand-text placeholder-gray-400 outline-none bg-transparent resize-none h-20" maxlength="300"></textarea>
                    <div class="text-right text-[11px] text-brand-gray mt-1">Tối đa 300 ký tự</div>
                </div>

                <!-- Rich Text Editor -->
                <div class="shadow-sm rounded-xl bg-white">
                    <div id="toolbar-container">
                        <span class="ql-formats">
                            <select class="ql-header">
                                <option value="2">Heading 2</option>
                                <option value="3">Heading 3</option>
                                <option selected>Normal Text</option>
                            </select>
                        </span>
                        <span class="ql-formats">
                            <button class="ql-bold"></button>
                            <button class="ql-italic"></button>
                            <button class="ql-underline"></button>
                        </span>
                        <span class="ql-formats">
                            <button class="ql-list" value="ordered"></button>
                            <button class="ql-list" value="bullet"></button>
                            <button class="ql-blockquote"></button>
                        </span>
                        <span class="ql-formats">
                            <button class="ql-link"></button>
                            <button class="ql-image"></button>
                        </span>
                        <span class="ql-formats">
                            <button class="ql-clean"></button>
                        </span>
                    </div>
                    <div id="editor">
                        <p><br></p>
                    </div>
                </div>

                <!-- Reference Documents Upload -->
                <div class="bg-white p-5 rounded-xl shadow-sm border border-brand-border">
                    <h3 class="text-[15px] font-bold text-brand-text mb-4 border-b border-brand-border pb-2">Tải lên tài liệu tham khảo</h3>
                    <div class="border-2 border-dashed border-brand-border rounded-xl p-8 flex flex-col items-center justify-center text-center hover:bg-gray-50 hover:border-brand-primary transition cursor-pointer group">
                        <div class="w-12 h-12 bg-sky-50 rounded-full flex items-center justify-center text-sky-500 mb-3 group-hover:scale-110 transition-transform">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 16a4 4 0 01-.88-7.903A5 5 0 1115.9 6L16 6a5 5 0 011 9.9M15 13l-3-3m0 0l-3 3m3-3v12"></path></svg>
                        </div>
                        <p class="text-[14px] font-medium text-brand-text mb-1">Kéo thả tài liệu vào đây</p>
                        <p class="text-[12px] text-brand-gray mb-4">Hỗ trợ PDF, DOCX, XLSX, SAV (Tối đa 20MB)</p>
                        <button class="px-4 py-2 bg-white border border-brand-border text-brand-text text-[13px] font-bold rounded hover:border-brand-primary hover:text-brand-primary transition">Chọn File</button>
                    </div>
                </div>
            </div>

            <!-- Right Column: Settings Sidebar (30%) -->
            <div class="w-full lg:w-[30%] flex flex-col gap-6 sticky top-[84px]">
                
                <!-- Publish Card -->
                <div class="bg-white rounded-xl shadow-sm border border-brand-border p-5">
                    <h3 class="text-[15px] font-bold text-brand-text mb-4 border-b border-brand-border pb-2">Trạng thái xuất bản</h3>
                    <div class="flex items-center justify-between mb-4 text-[13px]">
                        <span class="text-brand-gray">Trạng thái:</span>
                        <span class="font-bold text-orange-500">Bản nháp</span>
                    </div>
                    <div class="flex flex-col gap-3">
                        <button type="button" class="w-full py-2.5 rounded-lg border border-brand-primary text-brand-primary font-bold hover:bg-green-50 transition text-[13px]">
                            Lưu bản nháp
                        </button>
                        <button type="button" class="w-full py-2.5 rounded-lg bg-brand-primary text-white font-bold hover:bg-brand-secondary shadow-sm transition text-[13px]">
                            Xuất bản bài viết
                        </button>
                    </div>
                </div>

                <!-- Categories Card -->
                <div class="bg-white rounded-xl shadow-sm border border-brand-border p-5">
                    <h3 class="text-[15px] font-bold text-brand-text mb-4 border-b border-brand-border pb-2">Chuyên mục</h3>
                    <div class="max-h-[200px] overflow-y-auto custom-scrollbar flex flex-col gap-2.5">
                        <label class="flex items-center gap-2.5 cursor-pointer group">
                            <input type="checkbox" class="w-4 h-4 text-brand-primary rounded border-brand-border focus:ring-brand-primary cursor-pointer">
                            <span class="text-[13px] text-brand-text group-hover:text-brand-primary transition">Bắt đầu nghiên cứu</span>
                        </label>
                        <label class="flex items-center gap-2.5 cursor-pointer group ml-5">
                            <input type="checkbox" class="w-4 h-4 text-brand-primary rounded border-brand-border focus:ring-brand-primary cursor-pointer">
                            <span class="text-[13px] text-brand-text group-hover:text-brand-primary transition">Nghiên cứu khoa học là gì?</span>
                        </label>
                        <label class="flex items-center gap-2.5 cursor-pointer group ml-5">
                            <input type="checkbox" class="w-4 h-4 text-brand-primary rounded border-brand-border focus:ring-brand-primary cursor-pointer">
                            <span class="text-[13px] text-brand-text group-hover:text-brand-primary transition">Các loại nghiên cứu</span>
                        </label>
                        
                        <label class="flex items-center gap-2.5 cursor-pointer group mt-1">
                            <input type="checkbox" class="w-4 h-4 text-brand-primary rounded border-brand-border focus:ring-brand-primary cursor-pointer" checked>
                            <span class="text-[13px] font-medium text-brand-text group-hover:text-brand-primary transition">Phân tích dữ liệu</span>
                        </label>
                        <label class="flex items-center gap-2.5 cursor-pointer group ml-5">
                            <input type="checkbox" class="w-4 h-4 text-brand-primary rounded border-brand-border focus:ring-brand-primary cursor-pointer">
                            <span class="text-[13px] text-brand-text group-hover:text-brand-primary transition">SPSS</span>
                        </label>
                        <label class="flex items-center gap-2.5 cursor-pointer group ml-5">
                            <input type="checkbox" class="w-4 h-4 text-brand-primary rounded border-brand-border focus:ring-brand-primary cursor-pointer" checked>
                            <span class="text-[13px] text-brand-text group-hover:text-brand-primary transition">AMOS</span>
                        </label>
                        <label class="flex items-center gap-2.5 cursor-pointer group ml-5">
                            <input type="checkbox" class="w-4 h-4 text-brand-primary rounded border-brand-border focus:ring-brand-primary cursor-pointer">
                            <span class="text-[13px] text-brand-text group-hover:text-brand-primary transition">SmartPLS</span>
                        </label>
                    </div>
                </div>

                <!-- Hashtags Card -->
                <div class="bg-white rounded-xl shadow-sm border border-brand-border p-5">
                    <h3 class="text-[15px] font-bold text-brand-text mb-4 border-b border-brand-border pb-2">Từ khóa (Hashtags)</h3>
                    
                    <div class="flex items-center gap-2 border border-brand-border rounded-lg p-2 focus-within:border-brand-primary transition">
                        <svg class="w-4 h-4 text-brand-light" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 7h.01M7 3h5c.512 0 1.024.195 1.414.586l7 7a2 2 0 010 2.828l-7 7a2 2 0 01-2.828 0l-7-7A1.994 1.994 0 013 12V7a4 4 0 014-4z"></path></svg>
                        <input type="text" placeholder="Thêm tag (nhấn Enter)..." class="w-full bg-transparent text-[13px] outline-none placeholder-brand-light">
                    </div>
                    
                    <div class="flex flex-wrap gap-2 mt-3">
                        <span class="inline-flex items-center gap-1.5 px-2.5 py-1 rounded bg-brand-bg text-[12px] text-brand-text border border-brand-border hover:border-red-300 transition group cursor-pointer">
                            #NghienCuu
                            <svg class="w-3 h-3 text-brand-gray group-hover:text-red-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                        </span>
                        <span class="inline-flex items-center gap-1.5 px-2.5 py-1 rounded bg-brand-bg text-[12px] text-brand-text border border-brand-border hover:border-red-300 transition group cursor-pointer">
                            #SPSS
                            <svg class="w-3 h-3 text-brand-gray group-hover:text-red-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                        </span>
                    </div>
                </div>

                <!-- Thumbnail Card -->
                <div class="bg-white rounded-xl shadow-sm border border-brand-border p-5">
                    <h3 class="text-[15px] font-bold text-brand-text mb-4 border-b border-brand-border pb-2">Ảnh đại diện (Thumbnail)</h3>
                    
                    <div class="border-2 border-dashed border-brand-border rounded-xl p-6 flex flex-col items-center justify-center text-center hover:bg-gray-50 hover:border-brand-primary transition cursor-pointer group">
                        <div class="w-12 h-12 bg-green-50 rounded-full flex items-center justify-center text-brand-primary mb-3 group-hover:scale-110 transition-transform">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-8l-4-4m0 0L8 8m4-4v12"></path></svg>
                        </div>
                        <p class="text-[13px] font-medium text-brand-text mb-1">Kéo thả ảnh vào đây</p>
                        <p class="text-[11px] text-brand-gray">hoặc bấm để chọn file (JPG, PNG, WEBP)</p>
                    </div>
                </div>

                <!-- Options Card -->
                <div class="bg-white rounded-xl shadow-sm border border-brand-border p-5">
                    <h3 class="text-[15px] font-bold text-brand-text mb-4 border-b border-brand-border pb-2">Tùy chọn khác</h3>
                    
                    <div class="flex items-center justify-between">
                        <div>
                            <div class="text-[13px] font-bold text-brand-text">Bài viết nổi bật</div>
                            <div class="text-[11px] text-brand-gray">Sẽ hiển thị ở trang chủ</div>
                        </div>
                        <!-- Toggle Switch -->
                        <div class="relative inline-block w-10 align-middle select-none transition duration-200 ease-in">
                            <input type="checkbox" name="toggleFeatured" id="toggleFeatured" class="toggle-checkbox absolute block w-5 h-5 rounded-full bg-white border-4 appearance-none cursor-pointer border-gray-300 z-10 transition-transform duration-300"/>
                            <label for="toggleFeatured" class="toggle-label block overflow-hidden h-5 rounded-full bg-gray-300 cursor-pointer transition-colors duration-300"></label>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </main>

    <!-- Quill Editor Init Script -->
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    <script>
        var quill = new Quill('#editor', {
            modules: {
                toolbar: '#toolbar-container'
            },
            placeholder: 'Nhập nội dung bài viết tuyệt vời của bạn ở đây...',
            theme: 'snow'
        });
    </script>
</body>
</html>
