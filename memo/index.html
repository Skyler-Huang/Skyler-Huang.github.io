<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>备忘录 - Skyler Huang</title>
    <style>
        :root {
            --paper: #faf7f2;
            --card-bg: #ffffff;
            --ink: #2c2416;
            --ink-secondary: #5c5347;
            --ink-muted: #8a8175;
            --pine: #2d4a37;
            --pine-light: #3a5c47;
            --pine-pale: rgba(45, 74, 55, 0.06);
            --pine-glow: rgba(45, 74, 55, 0.15);
            --bronze: #a0783c;
            --bronze-light: #c49a4c;
            --bronze-dark: #8a5f2f;
            --bronze-pale: rgba(160, 120, 60, 0.08);
            --bronze-glow: rgba(160, 120, 60, 0.22);
            --border-subtle: #e8e2d8;
            --border-card: #ede7dd;
            --border-input: #e0d9cd;
            --shadow-sm: 0 1px 3px rgba(44, 36, 22, 0.04);
            --shadow-md: 0 3px 12px rgba(44, 36, 22, 0.07);
            --shadow-lg: 0 6px 24px rgba(44, 36, 22, 0.10);
            --shadow-xl: 0 10px 36px rgba(44, 36, 22, 0.13);
            --radius-sm: 6px;
            --radius-md: 10px;
            --radius-lg: 14px;
            --radius-xl: 18px;
            --radius-full: 50%;
            --transition: 0.28s cubic-bezier(0.4, 0, 0.2, 1);
            --transition-fast: 0.18s cubic-bezier(0.4, 0, 0.2, 1);
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
                radial-gradient(ellipse at 20% 8%, rgba(196, 154, 76, 0.025) 0%, transparent 55%),
                radial-gradient(ellipse at 78% 88%, rgba(45, 74, 55, 0.02) 0%, transparent 55%),
                radial-gradient(ellipse at 50% 50%, rgba(160, 120, 60, 0.015) 0%, transparent 70%);
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
            max-width: 600px;
            padding: 36px 22px 24px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            flex: 1;
            min-height: 100vh;
        }

        /* ========== 返回首页 ========== */
        .back-link-wrapper {
            margin-bottom: 10px;
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

        /* ========== 页面头部 ========== */
        .page-header {
            text-align: left;
            margin-bottom: 24px;
            padding-top: 2px;
            position: relative;
        }

        .header-label {
            display: inline-block;
            font-size: 0.72rem;
            text-transform: uppercase;
            letter-spacing: 0.13em;
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
            font-size: 1.9rem;
            font-weight: 700;
            letter-spacing: 0.04em;
            color: var(--pine);
            margin: 8px 0 2px;
            line-height: 1.25;
        }

        .page-subtitle {
            font-size: 0.85rem;
            color: var(--ink-muted);
            font-weight: 400;
            letter-spacing: 0.03em;
            margin-top: 2px;
        }

        .header-ornament {
            display: block;
            width: 44px;
            height: 2px;
            background: linear-gradient(90deg, var(--bronze-light), var(--bronze), transparent);
            border-radius: 1px;
            margin-top: 12px;
            opacity: 0.7;
        }

        /* ========== 输入区域 ========== */
        .memo-input-section {
            background-color: var(--card-bg);
            border-radius: var(--radius-lg);
            padding: 18px 20px;
            border: 1.5px solid var(--border-card);
            box-shadow: var(--shadow-sm);
            margin-bottom: 20px;
            transition: var(--transition);
        }

        .memo-input-section:focus-within {
            border-color: rgba(45, 74, 55, 0.35);
            box-shadow: var(--shadow-md), 0 0 0 6px var(--pine-pale);
        }

        .memo-textarea {
            width: 100%;
            min-height: 90px;
            padding: 14px 16px;
            font-family: var(--font-sans);
            font-size: 0.95rem;
            line-height: 1.65;
            color: var(--ink);
            background-color: #fdfcf9;
            border: 1.5px solid var(--border-input);
            border-radius: var(--radius-md);
            resize: vertical;
            outline: none;
            transition: var(--transition-fast);
            letter-spacing: 0.02em;
        }

        .memo-textarea::placeholder {
            color: #b8b0a0;
            letter-spacing: 0.03em;
            font-style: italic;
        }

        .memo-textarea:focus {
            border-color: var(--pine-light);
            box-shadow: 0 0 0 4px rgba(45, 74, 55, 0.07);
            background-color: #fffefb;
        }

        .memo-textarea.shake {
            animation: shake 0.5s ease;
            border-color: #c97a5a;
            box-shadow: 0 0 0 4px rgba(180, 90, 50, 0.1);
        }

        @keyframes shake {
            0%,
            100% {
                transform: translateX(0);
            }
            15% {
                transform: translateX(-6px);
            }
            30% {
                transform: translateX(5px);
            }
            45% {
                transform: translateX(-4px);
            }
            60% {
                transform: translateX(3px);
            }
            75% {
                transform: translateX(-1px);
            }
            90% {
                transform: translateX(1px);
            }
        }

        .memo-input-footer {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 12px;
            gap: 12px;
            flex-wrap: wrap;
        }

        .char-hint {
            font-size: 0.72rem;
            color: var(--ink-muted);
            letter-spacing: 0.03em;
            white-space: nowrap;
        }

        .char-hint.warning {
            color: #b8744a;
        }

        .submit-btn {
            display: inline-flex;
            align-items: center;
            gap: 7px;
            padding: 10px 22px;
            font-family: var(--font-sans);
            font-size: 0.9rem;
            font-weight: 600;
            letter-spacing: 0.04em;
            color: #fffef9;
            background: linear-gradient(135deg, var(--bronze-light) 0%, var(--bronze) 60%, var(--bronze-dark) 100%);
            border: none;
            border-radius: 24px;
            cursor: pointer;
            transition: var(--transition);
            box-shadow: 0 2px 8px rgba(160, 120, 60, 0.25);
            white-space: nowrap;
            position: relative;
            overflow: hidden;
            -webkit-tap-highlight-color: transparent;
            user-select: none;
            -webkit-user-select: none;
        }

        .submit-btn::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.25);
            transform: translate(-50%, -50%);
            transition: width 0.6s ease, height 0.6s ease;
        }

        .submit-btn:active::after {
            width: 300px;
            height: 300px;
        }

        .submit-btn:hover {
            background: linear-gradient(135deg, #d4a852 0%, #b0803a 60%, #966a30 100%);
            box-shadow: 0 4px 16px rgba(160, 120, 60, 0.38);
            transform: translateY(-1px);
        }

        .submit-btn:active {
            transform: scale(0.94);
            box-shadow: 0 1px 5px rgba(160, 120, 60, 0.2);
            transition: 0.08s ease;
        }

        .submit-btn svg {
            flex-shrink: 0;
        }

        /* ========== 统计信息 ========== */
        .memo-stats {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 16px;
            font-size: 0.8rem;
            color: var(--ink-muted);
            letter-spacing: 0.03em;
        }

        .memo-stats .count {
            font-weight: 650;
            color: var(--bronze);
            font-size: 0.9rem;
        }

        .memo-stats .divider {
            width: 1px;
            height: 12px;
            background-color: #d8cfbf;
            border-radius: 1px;
        }

        /* ========== 备忘录列表 ========== */
        .memos-list {
            display: flex;
            flex-direction: column;
            gap: 10px;
            list-style: none;
            padding: 0;
            margin: 0;
            flex: 1;
        }

        /* ========== 空状态 ========== */
        .empty-state {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 48px 24px;
            color: var(--ink-muted);
            gap: 12px;
            flex: 1;
            min-height: 200px;
        }

        .empty-state.hidden {
            display: none;
        }

        .empty-icon {
            opacity: 0.5;
            margin-bottom: 4px;
        }

        .empty-title {
            font-family: var(--font-serif);
            font-size: 1.05rem;
            font-weight: 600;
            color: var(--ink-secondary);
            letter-spacing: 0.04em;
        }

        .empty-desc {
            font-size: 0.82rem;
            color: var(--ink-muted);
            letter-spacing: 0.03em;
            max-width: 260px;
            line-height: 1.5;
        }

        /* ========== 单条备忘录卡片 ========== */
        .memo-card {
            display: flex;
            align-items: flex-start;
            gap: 14px;
            background-color: var(--card-bg);
            border-radius: var(--radius-md);
            padding: 15px 16px;
            border: 1.5px solid var(--border-card);
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
            position: relative;
            animation: memoFadeIn 0.4s cubic-bezier(0.22, 0.61, 0.36, 1);
            overflow: hidden;
        }

        @keyframes memoFadeIn {
            0% {
                opacity: 0;
                transform: translateY(-12px) scale(0.96);
            }
            100% {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        .memo-card.removing {
            animation: memoFadeOut 0.32s cubic-bezier(0.55, 0, 1, 0.45) forwards;
            pointer-events: none;
        }

        @keyframes memoFadeOut {
            0% {
                opacity: 1;
                transform: scale(1);
                max-height: 200px;
                margin-bottom: 0;
                padding: 15px 16px;
                border-width: 1.5px;
            }
            60% {
                opacity: 0.35;
                transform: scale(0.9);
            }
            100% {
                opacity: 0;
                transform: scale(0.85);
                max-height: 0;
                margin-bottom: -10px;
                padding: 0 16px;
                border-width: 0;
            }
        }

        .memo-card:hover {
            border-color: rgba(160, 120, 60, 0.22);
            box-shadow: var(--shadow-md);
            background-color: #fffefc;
        }

        /* 左侧墨绿细条 */
        .memo-card::before {
            content: '';
            position: absolute;
            left: 0;
            top: 10px;
            bottom: 10px;
            width: 3px;
            background: var(--pine-light);
            border-radius: 0 2px 2px 0;
            opacity: 0.5;
            transition: var(--transition);
        }

        .memo-card:hover::before {
            opacity: 0.8;
            background: var(--bronze-light);
        }

        /* 卡片内容区域 */
        .memo-content-area {
            flex: 1;
            min-width: 0;
            display: flex;
            flex-direction: column;
            gap: 5px;
            padding-left: 2px;
        }

        .memo-time {
            font-size: 0.7rem;
            color: var(--ink-muted);
            letter-spacing: 0.04em;
            font-weight: 450;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .memo-time-dot {
            width: 5px;
            height: 5px;
            border-radius: 50%;
            background-color: var(--bronze-light);
            opacity: 0.6;
            flex-shrink: 0;
        }

        .memo-text {
            font-size: 0.9rem;
            line-height: 1.6;
            color: var(--ink);
            letter-spacing: 0.02em;
            word-break: break-word;
            white-space: pre-wrap;
        }

        /* 删除按钮 */
        .delete-btn {
            flex-shrink: 0;
            width: 34px;
            height: 34px;
            border-radius: var(--radius-full);
            border: 1.5px solid #d5c8b0;
            background: transparent;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition-fast);
            color: #b0a088;
            -webkit-tap-highlight-color: transparent;
            user-select: none;
            -webkit-user-select: none;
            outline: none;
            align-self: center;
            margin-top: 2px;
        }

        .delete-btn:hover {
            background-color: #f5ede0;
            border-color: #c49a4c;
            color: #a0783c;
            box-shadow: 0 2px 8px rgba(160, 120, 60, 0.18);
            transform: rotate(8deg) scale(1.08);
        }

        .delete-btn:active {
            background-color: #e8d5b8;
            border-color: #b0803a;
            color: #8a5f2f;
            transform: scale(0.88);
            transition: 0.06s ease;
        }

        .delete-btn svg {
            width: 14px;
            height: 14px;
            pointer-events: none;
            transition: transform 0.2s ease;
        }

        .delete-btn:hover svg {
            transform: rotate(90deg);
        }

        /* ========== 底部版权 ========== */
        .page-footer {
            text-align: center;
            margin-top: 36px;
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
                padding: 22px 12px 16px;
                max-width: 100%;
            }

            .page-header {
                margin-bottom: 18px;
            }

            .page-title {
                font-size: 1.5rem;
            }

            .page-subtitle {
                font-size: 0.78rem;
            }

            .header-label {
                font-size: 0.66rem;
                padding: 2px 10px;
            }

            .memo-input-section {
                padding: 14px 14px;
                border-radius: var(--radius-md);
                margin-bottom: 14px;
            }

            .memo-textarea {
                min-height: 75px;
                font-size: 0.88rem;
                padding: 11px 13px;
                border-radius: var(--radius-sm);
            }

            .memo-input-footer {
                margin-top: 10px;
                gap: 8px;
            }

            .submit-btn {
                padding: 9px 18px;
                font-size: 0.82rem;
                border-radius: 22px;
                letter-spacing: 0.03em;
            }

            .char-hint {
                font-size: 0.68rem;
            }

            .memos-list {
                gap: 8px;
            }

            .memo-card {
                padding: 12px 13px;
                gap: 10px;
                border-radius: var(--radius-sm);
            }

            .memo-card::before {
                top: 8px;
                bottom: 8px;
                width: 2.5px;
            }

            .memo-text {
                font-size: 0.84rem;
            }

            .memo-time {
                font-size: 0.66rem;
            }

            .delete-btn {
                width: 30px;
                height: 30px;
            }

            .delete-btn svg {
                width: 12px;
                height: 12px;
            }

            .memo-stats {
                font-size: 0.73rem;
                margin-bottom: 12px;
            }

            .memo-stats .count {
                font-size: 0.82rem;
            }

            .empty-state {
                padding: 36px 16px;
                gap: 8px;
                min-height: 160px;
            }

            .empty-icon svg {
                width: 40px;
                height: 40px;
            }

            .empty-title {
                font-size: 0.95rem;
            }

            .empty-desc {
                font-size: 0.75rem;
                max-width: 220px;
            }

            .back-link {
                font-size: 0.8rem;
                padding: 6px 11px 6px 7px;
            }

            .page-footer {
                margin-top: 24px;
                font-size: 0.7rem;
            }
        }

        @media (max-width: 380px) {
            .main-container {
                padding: 16px 8px 10px;
            }

            .memo-input-section {
                padding: 11px 10px;
                border-radius: var(--radius-sm);
                margin-bottom: 10px;
            }

            .memo-textarea {
                min-height: 65px;
                font-size: 0.82rem;
                padding: 10px 11px;
            }

            .memo-card {
                padding: 10px 11px;
                gap: 8px;
                border-radius: var(--radius-sm);
            }

            .memo-card::before {
                top: 6px;
                bottom: 6px;
                width: 2px;
            }

            .memo-text {
                font-size: 0.8rem;
            }

            .memo-time {
                font-size: 0.63rem;
            }

            .delete-btn {
                width: 28px;
                height: 28px;
                border-width: 1.2px;
            }

            .delete-btn svg {
                width: 11px;
                height: 11px;
            }

            .submit-btn {
                padding: 8px 15px;
                font-size: 0.76rem;
                border-radius: 20px;
            }

            .page-title {
                font-size: 1.3rem;
            }

            .page-header {
                margin-bottom: 14px;
            }

            .memo-stats {
                font-size: 0.68rem;
                margin-bottom: 10px;
                gap: 6px;
            }

            .memo-stats .count {
                font-size: 0.76rem;
            }

            .empty-state {
                padding: 28px 12px;
                min-height: 130px;
            }

            .empty-title {
                font-size: 0.85rem;
            }

            .empty-desc {
                font-size: 0.7rem;
            }
        }

        @media (min-width: 768px) {
            .main-container {
                padding-top: 44px;
                max-width: 620px;
            }

            .page-title {
                font-size: 2.1rem;
            }

            .memo-textarea {
                font-size: 0.98rem;
                min-height: 100px;
            }

            .memo-card {
                padding: 17px 20px;
                gap: 16px;
            }

            .delete-btn {
                width: 36px;
                height: 36px;
            }

            .delete-btn svg {
                width: 15px;
                height: 15px;
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
            <span class="header-label">Quick Memo</span>
            <h1 class="page-title">备忘录</h1>
            <p class="page-subtitle">随手记录 · 本地存储</p>
            <span class="header-ornament"></span>
        </header>

        <!-- 输入区域 -->
        <section class="memo-input-section">
            <textarea
            id="memoTextarea"
            class="memo-textarea"
            placeholder="写下你的想法、待办或灵感…"
            maxlength="2000"
            rows="3"
            aria-label="备忘录输入框"
        ></textarea>
        <div class="memo-input-footer">
            <span class="char-hint" id="charHint">0 / 2000</span>
            <button
            id="submitBtn"
            class="submit-btn"
            type="button"
            aria-label="添加备忘录"
        >
        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round">
            <line x1="12" y1="5" x2="12" y2="19"></line>
            <line x1="5" y1="12" x2="19" y2="12"></line>
        </svg>
        记录
    </button>
</div>
</section>

<!-- 统计信息 -->
<div class="memo-stats" id="memoStats">
    <span>共</span>
    <span class="count" id="memoCount">0</span>
    <span>条记录</span>
    <span class="divider"></span>
    <span id="memoStatsHint">暂无内容</span>
</div>

<!-- 备忘录列表 -->
<ul class="memos-list" id="memosList" aria-label="备忘录列表"></ul>

<!-- 空状态 -->
<div class="empty-state" id="emptyState">
    <div class="empty-icon">
        <svg width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="8" y="10" width="32" height="30" rx="4" stroke="#b8b0a0" stroke-width="1.8" fill="none" />
            <line x1="14" y1="19" x2="34" y2="19" stroke="#c4b898" stroke-width="1.4" stroke-linecap="round" />
            <line x1="14" y1="25" x2="30" y2="25" stroke="#d4c8b0" stroke-width="1.2" stroke-linecap="round" />
            <line x1="14" y1="31" x2="26" y2="31" stroke="#e0d4c0" stroke-width="1" stroke-linecap="round" />
            <circle cx="38" cy="12" r="5" fill="#faf7f2" stroke="#c49a4c" stroke-width="1.3" />
            <line x1="38" y1="9" x2="38" y2="15" stroke="#c49a4c" stroke-width="1.5" stroke-linecap="round" />
            <line x1="35" y1="12" x2="41" y2="12" stroke="#c49a4c" stroke-width="1.5" stroke-linecap="round" />
        </svg>
    </div>
    <p class="empty-title">还没有备忘录</p>
    <p class="empty-desc">在上方输入框中写下第一条记录吧</p>
</div>

<!-- 底部版权 -->
<footer class="page-footer">
    <span>&copy; 2024 Skyler Huang</span>
    <span class="footer-dot"></span>
    <span>数据仅存储于本地浏览器</span>
    <span class="footer-dot"></span>
    <a href="/">返回首页</a>
</footer>

</main>

<script>
    (function() {
        // ============ DOM 元素 ============
        const memoTextarea = document.getElementById('memoTextarea');
        const submitBtn = document.getElementById('submitBtn');
        const memosList = document.getElementById('memosList');
        const emptyState = document.getElementById('emptyState');
        const memoCountEl = document.getElementById('memoCount');
        const memoStatsHint = document.getElementById('memoStatsHint');
        const charHint = document.getElementById('charHint');
        const memoStats = document.getElementById('memoStats');

        // ============ 常量 ============
        const STORAGE_KEY = 'memo_app_skyler_notes';
        const MAX_LENGTH = 2000;

        // ============ 数据操作 ============
        function loadMemos() {
            try {
                const raw = localStorage.getItem(STORAGE_KEY);
                if (!raw) return [];
                const data = JSON.parse(raw);
                if (!Array.isArray(data)) return [];
                // 过滤掉无效数据
                return data.filter(item =>
                    item && typeof item.id === 'string' &&
                    typeof item.content === 'string' &&
                    typeof item.timestamp === 'number'
                );
            } catch (e) {
                console.warn('备忘录数据读取失败，已重置。', e);
                return [];
            }
        }

        function saveMemos(memos) {
            try {
                localStorage.setItem(STORAGE_KEY, JSON.stringify(memos));
            } catch (e) {
                console.error('备忘录保存失败，可能存储空间不足。', e);
                // 可以在这里给用户一个提示
                showStorageWarning();
            }
        }

        function addMemo(content) {
            const memos = loadMemos();
            const newMemo = {
                id: Date.now().toString() + '_' + Math.random().toString(36).slice(2, 6),
                content: content.trim(),
                timestamp: Date.now(),
            };
            memos.push(newMemo);
            saveMemos(memos);
            return newMemo;
        }

        function deleteMemoById(id) {
            const memos = loadMemos();
            const filtered = memos.filter(m => m.id !== id);
            saveMemos(filtered);
            return filtered;
        }

        // ============ 时间格式化 ============
        function formatTime(timestamp) {
            const now = new Date();
            const date = new Date(timestamp);
            const todayStart = new Date(now.getFullYear(), now.getMonth(), now.getDate());
            const yesterdayStart = new Date(todayStart.getTime() - 86400000);
            const thisYearStart = new Date(now.getFullYear(), 0, 1);

            const hours = date.getHours().toString().padStart(2, '0');
            const minutes = date.getMinutes().toString().padStart(2, '0');
            const timeStr = `${hours}:${minutes}`;

            if (date >= todayStart) {
                return `今天 ${timeStr}`;
            } else if (date >= yesterdayStart) {
                return `昨天 ${timeStr}`;
            } else if (date >= thisYearStart) {
                const month = (date.getMonth() + 1).toString().padStart(2, '0');
                const day = date.getDate().toString().padStart(2, '0');
                return `${month}月${day}日 ${timeStr}`;
            } else {
                const year = date.getFullYear();
                const month = (date.getMonth() + 1).toString().padStart(2, '0');
                const day = date.getDate().toString().padStart(2, '0');
                return `${year}年${month}月${day}日 ${timeStr}`;
            }
        }

        // ============ 渲染 ============
        function renderAllMemos() {
            const memos = loadMemos();
            // 按时间倒序排列（最新在前）
            const sorted = [...memos].sort((a, b) => b.timestamp - a.timestamp);

            // 清空列表
            memosList.innerHTML = '';

            if (sorted.length === 0) {
                emptyState.classList.remove('hidden');
                memoStats.style.opacity = '0.5';
            } else {
                emptyState.classList.add('hidden');
                memoStats.style.opacity = '1';
                sorted.forEach(memo => {
                    const card = createMemoCard(memo);
                    memosList.appendChild(card);
                });
            }

            // 更新统计
            updateStats(sorted.length);
        }

        function createMemoCard(memo) {
            const li = document.createElement('li');
            li.className = 'memo-card';
            li.setAttribute('data-id', memo.id);
            li.setAttribute('role', 'listitem');

            // 内容区域
            const contentArea = document.createElement('div');
            contentArea.className = 'memo-content-area';

            const timeEl = document.createElement('span');
            timeEl.className = 'memo-time';
            timeEl.innerHTML = '<span class="memo-time-dot"></span>' + escapeHTML(formatTime(memo.timestamp));

            const textEl = document.createElement('p');
            textEl.className = 'memo-text';
            textEl.textContent = memo.content;

            contentArea.appendChild(timeEl);
            contentArea.appendChild(textEl);

            // 删除按钮
            const deleteBtn = document.createElement('button');
            deleteBtn.className = 'delete-btn';
            deleteBtn.setAttribute('aria-label', '删除此条备忘录');
            deleteBtn.setAttribute('title', '删除');
            deleteBtn.innerHTML = `
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.3" stroke-linecap="round" stroke-linejoin="round">
                            <line x1="18" y1="6" x2="6" y2="18"></line>
                            <line x1="6" y1="6" x2="18" y2="18"></line>
                        </svg>
                    `;

            // 删除事件
            deleteBtn.addEventListener('click', function(e) {
                e.stopPropagation();
                handleDelete(memo.id, li);
            });

            li.appendChild(contentArea);
            li.appendChild(deleteBtn);

            return li;
        }

        function updateStats(count) {
            memoCountEl.textContent = count;
            if (count === 0) {
                memoStatsHint.textContent = '暂无内容';
            } else if (count === 1) {
                memoStatsHint.textContent = '仅有1条记录';
            } else {
                memoStatsHint.textContent = `最新优先显示`;
            }
        }

        // ============ 删除处理 ============
        function handleDelete(id, cardElement) {
            // 添加删除动画
            cardElement.classList.add('removing');

            // 动画结束后从DOM和数据中移除
            const handleAnimationEnd = function(e) {
                if (e.target === cardElement && e.animationName === 'memoFadeOut') {
                    cardElement.removeEventListener('animationend', handleAnimationEnd);
                    cardElement.remove();

                    // 从localStorage中删除
                    const remaining = deleteMemoById(id);
                    updateStats(remaining.length);

                    // 如果全部删除，显示空状态
                    if (remaining.length === 0) {
                        emptyState.classList.remove('hidden');
                        memoStats.style.opacity = '0.5';
                    }
                }
            };

            cardElement.addEventListener('animationend', handleAnimationEnd);

            // 兜底：如果动画事件未触发，1秒后强制清理
            setTimeout(() => {
                if (cardElement.parentNode) {
                    cardElement.remove();
                    const remaining = deleteMemoById(id);
                    updateStats(remaining.length);
                    if (remaining.length === 0) {
                        emptyState.classList.remove('hidden');
                        memoStats.style.opacity = '0.5';
                    }
                }
            }, 500);
        }

        // ============ 提交处理 ============
        function handleSubmit() {
            const content = memoTextarea.value;

            // 检查空内容
            if (!content || content.trim() === '') {
                // 抖动提示
                memoTextarea.classList.add('shake');
                memoTextarea.focus();
                setTimeout(() => {
                    memoTextarea.classList.remove('shake');
                }, 500);
                return;
            }

            // 添加备忘录
            const newMemo = addMemo(content);

            // 清空输入框
            memoTextarea.value = '';
            updateCharCount();
            memoTextarea.focus();

            // 重新渲染列表
            renderAllMemos();

            // 滚动到顶部以查看新记录
            memosList.scrollIntoView({ behavior: 'smooth', block: 'start' });
        }

        // ============ 字符计数 ============
        function updateCharCount() {
            const len = memoTextarea.value.length;
            charHint.textContent = `${len} / ${MAX_LENGTH}`;
            if (len >= MAX_LENGTH * 0.9) {
                charHint.classList.add('warning');
            } else {
                charHint.classList.remove('warning');
            }
        }

        // ============ HTML 转义 ============
        function escapeHTML(str) {
            const div = document.createElement('div');
            div.textContent = str;
            return div.innerHTML;
        }

        // ============ 存储警告 ============
        function showStorageWarning() {
            // 简单的视觉提示：在统计区域短暂显示警告
            const originalText = memoStatsHint.textContent;
            memoStatsHint.textContent = '⚠ 存储异常';
            memoStatsHint.style.color = '#c97a5a';
            setTimeout(() => {
                memoStatsHint.textContent = originalText;
                memoStatsHint.style.color = '';
            }, 2500);
        }

        // ============ 事件绑定 ============
        submitBtn.addEventListener('click', handleSubmit);

        // Ctrl+Enter 或 Cmd+Enter 提交
        memoTextarea.addEventListener('keydown', function(e) {
            if ((e.ctrlKey || e.metaKey) && e.key === 'Enter') {
                e.preventDefault();
                handleSubmit();
            }
            // 普通 Enter 键也提交（方便移动端和桌面端快速操作）
            // Shift+Enter 换行
            if (e.key === 'Enter' && !e.shiftKey && !e.ctrlKey && !e.metaKey) {
                e.preventDefault();
                handleSubmit();
            }
        });

        // 字符计数更新
        memoTextarea.addEventListener('input', updateCharCount);

        // ============ 初始化 ============
        function init() {
            updateCharCount();
            renderAllMemos();
            // 自动聚焦输入框（桌面端友好）
            if (window.innerWidth >= 600) {
                setTimeout(() => {
                    memoTextarea.focus();
                }, 300);
            }
        }

        // 页面加载完成后初始化
        if (document.readyState === 'loading') {
            document.addEventListener('DOMContentLoaded', init);
        } else {
            init();
        }
    })();
</script>

</body>
</html>
