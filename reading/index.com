<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>阅读书架 - Skyler Huang</title>
    <style>
        :root {
            --paper: #faf7f2;
            --paper-warm: #fdfaf5;
            --card-bg: #ffffff;
            --ink: #2c2416;
            --ink-secondary: #5c5347;
            --ink-muted: #8a8175;
            --pine: #2d4a37;
            --pine-light: #3a5c47;
            --pine-pale: rgba(45, 74, 55, 0.06);
            --bronze: #a0783c;
            --bronze-light: #c49a4c;
            --bronze-pale: rgba(160, 120, 60, 0.08);
            --bronze-glow: rgba(160, 120, 60, 0.2);
            --gold: #c49a4c;
            --gold-faded: #d4b06a;
            --border-subtle: #e8e2d8;
            --border-card: #ede7dd;
            --shadow-sm: 0 1px 3px rgba(44, 36, 22, 0.04);
            --shadow-md: 0 3px 12px rgba(44, 36, 22, 0.07);
            --shadow-lg: 0 6px 24px rgba(44, 36, 22, 0.10);
            --shadow-xl: 0 10px 36px rgba(44, 36, 22, 0.13);
            --radius-sm: 6px;
            --radius-md: 10px;
            --radius-lg: 14px;
            --radius-xl: 18px;
            --transition: 0.28s cubic-bezier(0.4, 0, 0.2, 1);
            --font-serif: 'Noto Serif SC', 'Source Han Serif SC', 'STSong', 'Songti SC', 'SimSun', 'KaiTi', '楷体', 'Georgia', 'Times New Roman', serif;
            --font-sans: 'Inter', 'PingFang SC', 'Hiragino Sans GB', 'Noto Sans SC', 'Microsoft YaHei', 'Segoe UI', system-ui, -apple-system, sans-serif;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            scroll-behavior: smooth;
        }

        body {
            background-color: var(--paper);
            color: var(--ink);
            font-family: var(--font-sans);
            line-height: 1.7;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            position: relative;
            overflow-x: hidden;
            background-image:
                radial-gradient(ellipse at 20% 8%, rgba(196, 154, 76, 0.03) 0%, transparent 55%),
                radial-gradient(ellipse at 78% 92%, rgba(45, 74, 55, 0.025) 0%, transparent 55%),
                radial-gradient(ellipse at 50% 40%, rgba(160, 120, 60, 0.018) 0%, transparent 70%);
        }

        /* 顶部装饰线 */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 3px;
            background: linear-gradient(90deg,
                    var(--pine) 0%,
                    var(--bronze-light) 25%,
                    var(--pine-light) 50%,
                    var(--bronze) 75%,
                    var(--pine) 100%);
            z-index: 100;
            box-shadow: 0 1px 6px rgba(45, 74, 55, 0.12);
        }

        /* 主容器 */
        .main-container {
            position: relative;
            z-index: 1;
            width: 100%;
            max-width: 620px;
            padding: 36px 22px 24px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        /* ========== 返回首页 ========== */
        .back-link-wrapper {
            margin-bottom: 12px;
        }

        .back-link {
            display: inline-flex;
            align-items: center;
            gap: 7px;
            text-decoration: none;
            color: var(--pine);
            font-size: 0.88rem;
            font-weight: 500;
            letter-spacing: 0.02em;
            padding: 7px 14px 7px 9px;
            border-radius: 20px;
            transition: var(--transition);
            background: transparent;
            white-space: nowrap;
        }

        .back-link:hover {
            background-color: var(--pine-pale);
            color: #1f3627;
            transform: translateX(-2px);
        }

        .back-link:active {
            transform: scale(0.95);
            background-color: rgba(45, 74, 55, 0.12);
        }

        .back-link svg {
            flex-shrink: 0;
            transition: transform 0.3s ease;
        }

        .back-link:hover svg {
            transform: translateX(-3px);
        }

        /* ========== 头部 ========== */
        .page-header {
            text-align: left;
            margin-bottom: 32px;
            padding-top: 2px;
            position: relative;
        }

        .header-label {
            display: inline-block;
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.12em;
            color: var(--bronze);
            font-weight: 600;
            margin-bottom: 6px;
            padding: 3px 12px;
            background: var(--bronze-pale);
            border-radius: 20px;
            border: 1px solid rgba(160, 120, 60, 0.15);
        }

        .page-title {
            font-family: var(--font-serif);
            font-size: 2rem;
            font-weight: 700;
            letter-spacing: 0.04em;
            color: var(--pine);
            margin: 8px 0 4px;
            line-height: 1.25;
            position: relative;
            display: inline-block;
        }

        .page-subtitle {
            font-size: 0.9rem;
            color: var(--ink-muted);
            font-weight: 400;
            letter-spacing: 0.03em;
            margin-top: 2px;
        }

        .header-ornament {
            display: block;
            width: 48px;
            height: 2px;
            background: linear-gradient(90deg, var(--bronze-light), var(--bronze), transparent);
            border-radius: 1px;
            margin-top: 14px;
            opacity: 0.7;
        }

        /* ========== 书籍列表 ========== */
        .books-list {
            display: flex;
            flex-direction: column;
            gap: 16px;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        /* 单本书卡片 */
        .book-card {
            display: flex;
            align-items: stretch;
            gap: 18px;
            background-color: var(--card-bg);
            border-radius: var(--radius-lg);
            padding: 18px 20px;
            text-decoration: none;
            color: var(--ink);
            transition: var(--transition);
            border: 1.5px solid var(--border-card);
            box-shadow: var(--shadow-sm);
            position: relative;
            cursor: default;
            -webkit-tap-highlight-color: transparent;
            outline: none;
        }

        .book-card:hover {
            border-color: rgba(160, 120, 60, 0.3);
            box-shadow: var(--shadow-lg);
            transform: translateY(-2px);
            background-color: #fffefc;
        }

        .book-card:active {
            transform: scale(0.985);
            box-shadow: var(--shadow-sm);
            transition: 0.1s ease;
        }

        /* ========== 封面占位 ========== */
        .book-cover {
            flex-shrink: 0;
            width: 125px;
            height: 175px;
            border-radius: var(--radius-sm);
            position: relative;
            overflow: hidden;
            box-shadow: 0 3px 10px rgba(44, 36, 22, 0.15), 0 1px 2px rgba(0, 0, 0, 0.08);
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .book-card:hover .book-cover {
            box-shadow: 0 6px 20px rgba(44, 36, 22, 0.22), 0 2px 4px rgba(0, 0, 0, 0.1);
            transform: scale(1.03);
        }

        /* 封面内部光泽 */
        .book-cover::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg,
                    rgba(255, 255, 255, 0.12) 0%,
                    rgba(255, 255, 255, 0.03) 30%,
                    rgba(0, 0, 0, 0.04) 60%,
                    rgba(0, 0, 0, 0.1) 100%);
            pointer-events: none;
            z-index: 2;
            border-radius: inherit;
        }

        /* 书脊阴影 */
        .book-cover::before {
            content: '';
            position: absolute;
            left: 0;
            top: 0;
            width: 8px;
            height: 100%;
            background: linear-gradient(90deg,
                    rgba(0, 0, 0, 0.18) 0%,
                    rgba(0, 0, 0, 0.05) 40%,
                    transparent 100%);
            z-index: 3;
            border-radius: var(--radius-sm) 0 0 var(--radius-sm);
            pointer-events: none;
        }

        /* 封面中央装饰 */
        .cover-pattern {
            position: relative;
            z-index: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 6px;
            pointer-events: none;
        }

        .cover-icon {
            width: 32px;
            height: 32px;
            opacity: 0.85;
        }

        .cover-label {
            font-size: 0.65rem;
            letter-spacing: 0.08em;
            font-weight: 600;
            text-transform: uppercase;
            opacity: 0.75;
            font-family: var(--font-sans);
        }

        /* ---- 各书封面配色 ---- */

        /* 财经类 - 深蓝绿 + 金色 */
        .cover-finance {
            background: linear-gradient(160deg, #1a3c34 0%, #1f4a3f 30%, #17352d 100%);
            color: #d4b06a;
        }
        .cover-finance .cover-icon {
            color: #d4b06a;
        }
        .cover-finance .cover-label {
            color: #c49a4c;
        }

        /* 历史类 - 暖棕 + 古铜 */
        .cover-history {
            background: linear-gradient(160deg, #5c3d2e 0%, #6b4837 30%, #4e3224 100%);
            color: #e0c090;
        }
        .cover-history .cover-icon {
            color: #d4b06a;
        }
        .cover-history .cover-label {
            color: #c9a86c;
        }

        /* 文学类 - 深酒红 + 暖金 */
        .cover-literature {
            background: linear-gradient(160deg, #4a1e2b 0%, #5a2735 30%, #3d1823 100%);
            color: #e8c88a;
        }
        .cover-literature .cover-icon {
            color: #d4b06a;
        }
        .cover-literature .cover-label {
            color: #c9a060;
        }

        /* CPA审计 - 深蓝 + 浅金 */
        .cover-audit {
            background: linear-gradient(160deg, #1e3a5f 0%, #254870 30%, #182f4d 100%);
            color: #c8c0a8;
        }
        .cover-audit .cover-icon {
            color: #b8b090;
        }
        .cover-audit .cover-label {
            color: #a8a080;
        }

        /* 资产评估 - 深灰绿 + 淡金 */
        .cover-valuation {
            background: linear-gradient(160deg, #2f3e35 0%, #3a4d41 30%, #26332c 100%);
            color: #c4b896;
        }
        .cover-valuation .cover-icon {
            color: #bfb08a;
        }
        .cover-valuation .cover-label {
            color: #b0a078;
        }

        /* ========== 书籍信息区域 ========== */
        .book-info {
            flex: 1;
            min-width: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            gap: 5px;
        }

        .book-category-tag {
            display: inline-block;
            font-size: 0.68rem;
            letter-spacing: 0.07em;
            text-transform: uppercase;
            font-weight: 600;
            padding: 2px 10px;
            border-radius: 12px;
            width: fit-content;
            margin-bottom: 2px;
            border: 1px solid;
            line-height: 1.5;
        }

        .tag-finance {
            background: rgba(26, 60, 52, 0.07);
            color: #1a3c34;
            border-color: rgba(26, 60, 52, 0.2);
        }
        .tag-history {
            background: rgba(92, 61, 46, 0.07);
            color: #5c3d2e;
            border-color: rgba(92, 61, 46, 0.2);
        }
        .tag-literature {
            background: rgba(74, 30, 43, 0.07);
            color: #4a1e2b;
            border-color: rgba(74, 30, 43, 0.2);
        }
        .tag-audit {
            background: rgba(30, 58, 95, 0.07);
            color: #1e3a5f;
            border-color: rgba(30, 58, 95, 0.2);
        }
        .tag-valuation {
            background: rgba(47, 62, 53, 0.07);
            color: #2f3e35;
            border-color: rgba(47, 62, 53, 0.2);
        }

        .book-title {
            font-family: var(--font-serif);
            font-size: 1.15rem;
            font-weight: 700;
            letter-spacing: 0.03em;
            color: var(--pine);
            line-height: 1.35;
            margin: 0;
        }

        .book-author {
            font-size: 0.82rem;
            color: var(--ink-secondary);
            letter-spacing: 0.02em;
            font-weight: 450;
        }

        .book-author::before {
            content: '';
            display: inline-block;
            width: 14px;
            height: 1px;
            background: var(--bronze-light);
            vertical-align: middle;
            margin-right: 7px;
            opacity: 0.6;
        }

        /* 短评 */
        .book-comment {
            font-size: 0.84rem;
            color: var(--ink-muted);
            letter-spacing: 0.02em;
            line-height: 1.5;
            font-style: italic;
            position: relative;
            padding-left: 14px;
            margin-top: 3px;
            border-left: 2.5px solid var(--bronze-light);
            border-radius: 0 3px 3px 0;
        }

        /* ========== 底部 ========== */
        .page-footer {
            text-align: center;
            margin-top: 38px;
            padding: 18px 0 8px;
            color: var(--ink-muted);
            font-size: 0.78rem;
            letter-spacing: 0.04em;
            position: relative;
        }

        .page-footer::before {
            content: '';
            display: block;
            width: 56px;
            height: 1.5px;
            background: linear-gradient(90deg, transparent, var(--bronze-light), var(--bronze), transparent);
            margin: 0 auto 16px;
            border-radius: 1px;
            opacity: 0.55;
        }

        .page-footer .footer-dot {
            display: inline-block;
            width: 4px;
            height: 4px;
            background-color: #d4c8b0;
            border-radius: 50%;
            margin: 0 8px;
            vertical-align: middle;
        }

        .page-footer a {
            color: var(--pine);
            text-decoration: none;
            font-weight: 500;
            transition: color 0.2s ease;
        }

        .page-footer a:hover {
            color: #1f3627;
            text-decoration: underline;
            text-underline-offset: 3px;
            text-decoration-thickness: 1px;
        }

        /* ========== 响应式设计 ========== */
        @media (max-width: 600px) {
            .main-container {
                padding: 24px 14px 16px;
                max-width: 100%;
            }

            .page-header {
                margin-bottom: 22px;
            }

            .page-title {
                font-size: 1.6rem;
            }

            .page-subtitle {
                font-size: 0.8rem;
            }

            .books-list {
                gap: 12px;
            }

            .book-card {
                padding: 14px 14px;
                gap: 13px;
                border-radius: var(--radius-md);
                flex-direction: row;
                align-items: center;
            }

            .book-cover {
                width: 90px;
                height: 128px;
                border-radius: 4px;
                flex-shrink: 0;
            }

            .book-cover::before {
                width: 5px;
            }

            .cover-icon {
                width: 24px;
                height: 24px;
            }

            .cover-label {
                font-size: 0.55rem;
                letter-spacing: 0.05em;
            }

            .cover-pattern {
                gap: 4px;
            }

            .book-info {
                gap: 3px;
            }

            .book-title {
                font-size: 1rem;
            }

            .book-author {
                font-size: 0.74rem;
            }

            .book-comment {
                font-size: 0.76rem;
                padding-left: 10px;
                border-left-width: 2px;
            }

            .book-category-tag {
                font-size: 0.62rem;
                padding: 2px 8px;
            }

            .back-link {
                font-size: 0.8rem;
                padding: 6px 11px 6px 7px;
            }

            .page-footer {
                margin-top: 26px;
                font-size: 0.7rem;
            }

            .header-label {
                font-size: 0.7rem;
            }
        }

        @media (max-width: 380px) {
            .main-container {
                padding: 18px 9px 12px;
            }

            .book-card {
                padding: 12px 10px;
                gap: 10px;
                border-radius: var(--radius-sm);
            }

            .book-cover {
                width: 72px;
                height: 102px;
                border-radius: 3px;
            }

            .book-cover::before {
                width: 4px;
            }

            .cover-icon {
                width: 20px;
                height: 20px;
            }

            .cover-label {
                font-size: 0.5rem;
            }

            .book-title {
                font-size: 0.9rem;
            }

            .book-author {
                font-size: 0.7rem;
            }

            .book-comment {
                font-size: 0.7rem;
                padding-left: 8px;
                border-left-width: 1.5px;
            }

            .book-category-tag {
                font-size: 0.58rem;
                padding: 1px 7px;
            }

            .page-title {
                font-size: 1.35rem;
            }

            .page-header {
                margin-bottom: 16px;
            }

            .cover-pattern {
                gap: 3px;
            }
        }

        @media (min-width: 768px) {
            .main-container {
                padding-top: 44px;
                max-width: 640px;
            }

            .book-card {
                padding: 20px 24px;
                gap: 22px;
            }

            .book-cover {
                width: 135px;
                height: 188px;
            }

            .page-title {
                font-size: 2.2rem;
            }

            .book-title {
                font-size: 1.2rem;
            }
        }

        /* 减弱动画偏好 */
        @media (prefers-reduced-motion: reduce) {
            *,
            *::before,
            *::after {
                animation-duration: 0.01ms !important;
                animation-iteration-count: 1 !important;
                transition-duration: 0.01ms !important;
                scroll-behavior: auto !important;
            }
        }
    </style>
</head>
<body>

    <main class="main-container">

        <!-- 返回首页 -->
        <div class="back-link-wrapper">
            <a href="/" class="back-link" aria-label="返回首页">
                <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.3" stroke-linecap="round" stroke-linejoin="round">
                    <polyline points="15 18 9 12 15 6"></polyline>
                </svg>
                返回首页
            </a>
        </div>

        <!-- 页面头部 -->
        <header class="page-header">
            <span class="header-label">Reading Shelf</span>
            <h1 class="page-title">阅读书架</h1>
            <p class="page-subtitle">近期在读 · 随笔记之</p>
            <span class="header-ornament"></span>
        </header>

        <!-- 书籍列表 -->
        <ul class="books-list">

            <!-- 1. 财经类 -->
            <li>
                <article class="book-card">
                    <!-- 封面占位 -->
                    <div class="book-cover cover-finance" aria-hidden="true">
                        <div class="cover-pattern">
                            <!-- 金币/圆形图案 -->
                            <svg class="cover-icon" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <circle cx="16" cy="16" r="13" stroke="currentColor" stroke-width="1.8" fill="none" />
                                <circle cx="16" cy="16" r="7" stroke="currentColor" stroke-width="1.3" fill="none" opacity="0.7" />
                                <circle cx="16" cy="16" r="2.5" fill="currentColor" opacity="0.8" />
                                <line x1="16" y1="3" x2="16" y2="9" stroke="currentColor" stroke-width="1.2" opacity="0.5" />
                                <line x1="16" y1="23" x2="16" y2="29" stroke="currentColor" stroke-width="1.2" opacity="0.5" />
                            </svg>
                            <span class="cover-label">Finance</span>
                        </div>
                    </div>
                    <!-- 书籍信息 -->
                    <div class="book-info">
                        <span class="book-category-tag tag-finance">财经类</span>
                        <h2 class="book-title">穷查理宝典</h2>
                        <p class="book-author">彼得·考夫曼 编</p>
                        <p class="book-comment">多元思维模型的智慧结晶，投资与生活的普世箴言。</p>
                    </div>
                </article>
            </li>

            <!-- 2. 历史类 -->
            <li>
                <article class="book-card">
                    <div class="book-cover cover-history" aria-hidden="true">
                        <div class="cover-pattern">
                            <!-- 古建筑/柱子图案 -->
                            <svg class="cover-icon" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <rect x="6" y="10" width="20" height="18" stroke="currentColor" stroke-width="1.8" fill="none" rx="1" />
                                <line x1="10" y1="10" x2="10" y2="4" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" />
                                <line x1="16" y1="10" x2="16" y2="4" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" />
                                <line x1="22" y1="10" x2="22" y2="4" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" />
                                <rect x="9" y="14" width="5" height="9" stroke="currentColor" stroke-width="1" fill="none" opacity="0.5" rx="0.5" />
                                <rect x="18" y="14" width="5" height="9" stroke="currentColor" stroke-width="1" fill="none" opacity="0.5" rx="0.5" />
                            </svg>
                            <span class="cover-label">History</span>
                        </div>
                    </div>
                    <div class="book-info">
                        <span class="book-category-tag tag-history">历史类</span>
                        <h2 class="book-title">万历十五年</h2>
                        <p class="book-author">黄仁宇</p>
                        <p class="book-comment">大历史观下的帝国缩影，一个平淡年份的深刻剖析。</p>
                    </div>
                </article>
            </li>

            <!-- 3. 文学类名著 -->
            <li>
                <article class="book-card">
                    <div class="book-cover cover-literature" aria-hidden="true">
                        <div class="cover-pattern">
                            <!-- 羽毛笔/书页图案 -->
                            <svg class="cover-icon" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 4 L8 28 L16 24 L24 28 L24 4 Z"
                                stroke="currentColor" stroke-width="1.6" fill="none" stroke-linejoin="round" />
                                <line x1="16" y1="4" x2="16" y2="24" stroke="currentColor" stroke-width="1" opacity="0.5" />
                                <line x1="11" y1="9" x2="15" y2="9" stroke="currentColor" stroke-width="0.9" opacity="0.45" />
                                <line x1="11" y1="12" x2="15" y2="12" stroke="currentColor" stroke-width="0.9" opacity="0.45" />
                                <line x1="17" y1="9" x2="21" y2="9" stroke="currentColor" stroke-width="0.9" opacity="0.45" />
                                <line x1="17" y1="12" x2="21" y2="12" stroke="currentColor" stroke-width="0.9" opacity="0.45" />
                            </svg>
                            <span class="cover-label">Classics</span>
                        </div>
                    </div>
                    <div class="book-info">
                        <span class="book-category-tag tag-literature">文学类 · 名著</span>
                        <h2 class="book-title">百年孤独</h2>
                        <p class="book-author">加西亚·马尔克斯</p>
                        <p class="book-comment">魔幻现实主义的永恒经典，一个家族七代的沧桑史诗。</p>
                    </div>
                </article>
            </li>

            <!-- 4. CPA审计 -->
            <li>
                <article class="book-card">
                    <div class="book-cover cover-audit" aria-hidden="true">
                        <div class="cover-pattern">
                            <!-- 网格/表格图案 -->
                            <svg class="cover-icon" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <rect x="4" y="4" width="24" height="24" stroke="currentColor" stroke-width="1.8" fill="none" rx="1.5" />
                                <line x1="4" y1="12" x2="28" y2="12" stroke="currentColor" stroke-width="1" opacity="0.5" />
                                <line x1="4" y1="20" x2="28" y2="20" stroke="currentColor" stroke-width="1" opacity="0.5" />
                                <line x1="16" y1="4" x2="16" y2="28" stroke="currentColor" stroke-width="1" opacity="0.4" />
                                <circle cx="10" cy="8" r="1.2" fill="currentColor" opacity="0.6" />
                                <circle cx="22" cy="16" r="1.2" fill="currentColor" opacity="0.6" />
                                <circle cx="10" cy="24" r="1.2" fill="currentColor" opacity="0.6" />
                            </svg>
                            <span class="cover-label">Auditing</span>
                        </div>
                    </div>
                    <div class="book-info">
                        <span class="book-category-tag tag-audit">CPA 审计</span>
                        <h2 class="book-title">审计</h2>
                        <p class="book-author">中国注册会计师协会</p>
                        <p class="book-comment">注册会计师必备专业指南，审计理论与实务并重。</p>
                    </div>
                </article>
            </li>

            <!-- 5. 资产评估 -->
            <li>
                <article class="book-card">
                    <div class="book-cover cover-valuation" aria-hidden="true">
                        <div class="cover-pattern">
                            <!-- 柱状图/建筑图案 -->
                            <svg class="cover-icon" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <rect x="3" y="18" width="6" height="12" stroke="currentColor" stroke-width="1.6" fill="none" rx="1" />
                                <rect x="13" y="10" width="6" height="20" stroke="currentColor" stroke-width="1.6" fill="none" rx="1" />
                                <rect x="23" y="14" width="6" height="16" stroke="currentColor" stroke-width="1.6" fill="none" rx="1" />
                                <line x1="3" y1="8" x2="29" y2="8" stroke="currentColor" stroke-width="1" opacity="0.45" stroke-dasharray="3 2" />
                            </svg>
                            <span class="cover-label">Valuation</span>
                        </div>
                    </div>
                    <div class="book-info">
                        <span class="book-category-tag tag-valuation">资产评估</span>
                        <h2 class="book-title">资产评估基础</h2>
                        <p class="book-author">中国资产评估协会</p>
                        <p class="book-comment">评估理论与实务入门，搭建专业价值判断框架。</p>
                    </div>
                </article>
            </li>

        </ul>

        <!-- 底部版权 -->
        <footer class="page-footer">
            <span>&copy; 2024 Skyler Huang</span>
            <span class="footer-dot"></span>
            <span>阅读是随身携带的避难所</span>
            <span class="footer-dot"></span>
            <a href="/">返回首页</a>
        </footer>

    </main>

</body>
</html>
