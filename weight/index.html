<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>每日记录 · 体重饮食运动追踪</title>

    <!-- Supabase JS SDK v2 CDN -->
    <script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2" crossorigin="anonymous">
    </script>

    <style>
        :root {
            --bg: #FAFAFA;
            --card-bg: #FFFFFF;
            --card-shadow: 0 1px 4px rgba(0, 0, 0, 0.06);
            --border: #E8E8E8;
            --text-primary: #2C2C2C;
            --text-secondary: #6B6B6B;
            --text-muted: #9E9E9E;
            --accent: #4A7C6F;
            --accent-hover: #3D6B5F;
            --accent-light: #E8F0ED;
            --danger: #C44D4D;
            --danger-hover: #A83D3D;
            --radius: 14px;
            --radius-sm: 10px;
            --max-width: 600px;
            --font-stack: -apple-system, BlinkMacSystemFont, "Segoe UI", "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", sans-serif;
            --transition: 0.2s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: var(--font-stack);
            background-color: var(--bg);
            color: var(--text-primary);
            line-height: 1.6;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            padding: 0 16px 40px;
        }

        /* ========== 主容器 ========== */
        .container {
            width: 100%;
            max-width: var(--max-width);
            display: flex;
            flex-direction: column;
            gap: 20px;
            margin-top: 18px;
        }

        /* ========== 顶部导航 ========== */
        .top-nav {
            width: 100%;
            max-width: var(--max-width);
            display: flex;
            align-items: center;
            padding-top: 12px;
        }
        .top-nav a {
            text-decoration: none;
            color: var(--accent);
            font-size: 14px;
            font-weight: 500;
            display: inline-flex;
            align-items: center;
            gap: 4px;
            transition: color var(--transition);
            letter-spacing: 0.02em;
        }
        .top-nav a:hover {
            color: var(--accent-hover);
        }
        .top-nav .arrow {
            font-size: 15px;
            line-height: 1;
        }

        /* ========== 日期标题 ========== */
        .date-header {
            text-align: center;
            padding: 6px 0 2px;
        }
        .date-header .date-label {
            font-size: 13px;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.06em;
            margin-bottom: 2px;
        }
        .date-header .date-value {
            font-size: 28px;
            font-weight: 700;
            color: var(--text-primary);
            letter-spacing: 0.03em;
        }

        /* ========== 卡片通用 ========== */
        .card {
            background: var(--card-bg);
            border-radius: var(--radius);
            padding: 22px 20px;
            box-shadow: var(--card-shadow);
            border: 1px solid var(--border);
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .card-title {
            font-size: 16px;
            font-weight: 600;
            color: var(--text-primary);
            letter-spacing: 0.02em;
            margin: 0;
        }
        .card-title::after {
            content: '';
            display: block;
            width: 28px;
            height: 3px;
            background: var(--accent);
            border-radius: 2px;
            margin-top: 6px;
        }

        /* ========== 表单输入组 ========== */
        .form-group {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }
        .form-group label {
            font-size: 13px;
            font-weight: 600;
            color: var(--text-secondary);
            letter-spacing: 0.03em;
            text-transform: uppercase;
        }
        .form-group label .optional {
            font-weight: 400;
            color: var(--text-muted);
            text-transform: none;
            font-size: 12px;
            margin-left: 4px;
        }
        .form-group input,
        .form-group textarea {
            font-family: var(--font-stack);
            font-size: 15px;
            padding: 12px 14px;
            border: 1.5px solid var(--border);
            border-radius: var(--radius-sm);
            background: #FAFAFA;
            color: var(--text-primary);
            outline: none;
            transition: border-color var(--transition), box-shadow var(--transition);
            resize: vertical;
            letter-spacing: 0.02em;
        }
        .form-group input:focus,
        .form-group textarea:focus {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px var(--accent-light);
            background: #FFF;
        }
        .form-group input::placeholder,
        .form-group textarea::placeholder {
            color: #BFBFBF;
        }
        .form-group textarea {
            min-height: 72px;
        }
        /* 数字输入框去掉默认 spinner（可选） */
        .form-group input[type="number"] {
            -moz-appearance: textfield;
        }
        .form-group input[type="number"]::-webkit-outer-spin-button,
        .form-group input[type="number"]::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        /* 行内双字段 */
        .form-row {
            display: flex;
            gap: 12px;
        }
        .form-row .form-group {
            flex: 1;
        }

        /* ========== 提交按钮 ========== */
        .btn-submit {
            width: 100%;
            padding: 14px;
            font-size: 16px;
            font-weight: 600;
            font-family: var(--font-stack);
            letter-spacing: 0.04em;
            color: #FFFFFF;
            background: var(--accent);
            border: none;
            border-radius: var(--radius-sm);
            cursor: pointer;
            transition: background var(--transition), opacity var(--transition), transform 0.1s ease;
            box-shadow: 0 2px 8px rgba(74, 124, 111, 0.25);
        }
        .btn-submit:hover {
            background: var(--accent-hover);
        }
        .btn-submit:active {
            transform: scale(0.98);
        }
        .btn-submit:disabled {
            background: #B0C7C0;
            cursor: not-allowed;
            box-shadow: none;
            opacity: 0.8;
        }

        /* ========== Toast 提示 ========== */
        .toast {
            position: fixed;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            z-index: 9999;
            padding: 12px 22px;
            border-radius: 25px;
            font-size: 14px;
            font-weight: 500;
            letter-spacing: 0.03em;
            color: #FFF;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.18);
            animation: toastIn 0.35s ease, toastOut 0.35s ease 2.5s forwards;
            pointer-events: none;
            max-width: 90vw;
            text-align: center;
        }
        .toast--success {
            background: #4A7C6F;
        }
        .toast--error {
            background: #C44D4D;
        }

        @keyframes toastIn {
            from {
                opacity: 0;
                transform: translateX(-50%) translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateX(-50%) translateY(0);
            }
        }
        @keyframes toastOut {
            from {
                opacity: 1;
            }
            to {
                opacity: 0;
                transform: translateX(-50%) translateY(-20px);
            }
        }

        /* ========== 历史记录区域 ========== */
        .history-section {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }
        .history-section .section-title {
            font-size: 15px;
            font-weight: 600;
            color: var(--text-secondary);
            letter-spacing: 0.03em;
            padding: 0 4px;
        }

        .empty-state {
            text-align: center;
            padding: 40px 20px;
            color: var(--text-muted);
            font-size: 15px;
            letter-spacing: 0.03em;
            line-height: 1.7;
        }
        .empty-state .empty-icon {
            font-size: 40px;
            display: block;
            margin-bottom: 10px;
            opacity: 0.5;
        }

        /* ========== 历史记录卡片 ========== */
        .record-card {
            background: var(--card-bg);
            border-radius: var(--radius);
            padding: 16px 18px;
            box-shadow: var(--card-shadow);
            border: 1px solid var(--border);
            display: flex;
            flex-direction: column;
            gap: 8px;
            position: relative;
            transition: box-shadow var(--transition);
        }
        .record-card:hover {
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .record-card .record-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
        }
        .record-card .record-date {
            font-size: 13px;
            color: var(--text-muted);
            letter-spacing: 0.04em;
            font-weight: 500;
        }
        .record-card .record-weight {
            font-size: 22px;
            font-weight: 700;
            color: var(--accent);
            letter-spacing: 0.02em;
            white-space: nowrap;
        }
        .record-card .record-weight span {
            font-size: 13px;
            font-weight: 500;
            color: var(--text-muted);
            margin-left: 2px;
        }
        .record-card .record-detail {
            font-size: 14px;
            color: var(--text-secondary);
            line-height: 1.5;
            letter-spacing: 0.02em;
            padding-right: 4px;
        }
        .record-card .record-detail .label-inline {
            font-weight: 600;
            color: var(--text-primary);
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            margin-right: 6px;
        }
        .record-card .btn-delete {
            position: absolute;
            top: 14px;
            right: 14px;
            background: none;
            border: none;
            font-size: 18px;
            color: #C5C5C5;
            cursor: pointer;
            padding: 4px 8px;
            border-radius: 6px;
            transition: color var(--transition), background var(--transition);
            line-height: 1;
            font-family: var(--font-stack);
        }
        .record-card .btn-delete:hover {
            color: var(--danger);
            background: #FEF0F0;
        }

        /* ========== 底部版权 ========== */
        .footer {
            text-align: center;
            font-size: 12px;
            color: #C0C0C0;
            letter-spacing: 0.04em;
            padding: 28px 0 8px;
            width: 100%;
            max-width: var(--max-width);
        }

        /* ========== 响应式微调 ========== */
        @media (max-width: 400px) {
            .form-row {
                flex-direction: column;
                gap: 16px;
            }
            .card {
                padding: 18px 14px;
            }
            .record-card {
                padding: 14px 14px;
            }
            .record-card .record-weight {
                font-size: 19px;
            }
            .date-header .date-value {
                font-size: 24px;
            }
        }

        @media (min-width: 601px) {
            .card {
                padding: 26px 26px;
            }
            .record-card {
                padding: 20px 22px;
            }
        }
    </style>
</head>
<body>

    <!-- ==================== 顶部导航 ==================== -->
    <div class="top-nav">
        <a href="/">
            <span class="arrow">←</span> 返回首页
        </a>
    </div>

    <!-- ==================== 主容器 ==================== -->
    <div class="container">

        <!-- ========== 日期标题 ========== -->
        <div class="date-header">
            <div class="date-label">今日日期</div>
            <div class="date-value" id="dateDisplay">----</div>
        </div>

        <!-- ========== 输入区卡片 ========== -->
        <div class="card" id="inputCard">
            <h2 class="card-title">记录今日数据</h2>

            <!-- 体重 -->
            <div class="form-group">
                <label for="weightInput">体重 <span style="color:#C44D4D;">*</span></label>
                <input
                type="number"
                id="weightInput"
                step="0.1"
                min="0"
                max="500"
                placeholder="例如：65.5"
                inputmode="decimal"
                />
            </div>

            <!-- 今日饮食 -->
            <div class="form-group">
                <label for="mealInput">今日饮食</label>
                <textarea
                id="mealInput"
                placeholder="例如：早餐：燕麦牛奶；午餐：鸡胸肉沙拉"
                rows="2"
            ></textarea>
        </div>

        <!-- 运动内容 + 运动时长（行内双字段） -->
        <div class="form-row">
            <div class="form-group">
                <label for="exerciseTypeInput">运动内容</label>
                <input
                type="text"
                id="exerciseTypeInput"
                placeholder="如：跑步、瑜伽"
                />
            </div>
            <div class="form-group">
                <label for="exerciseDurationInput">
                    运动时长 <span class="optional">(分钟·可选)</span>
                </label>
                <input
                type="number"
                id="exerciseDurationInput"
                step="1"
                min="0"
                max="1440"
                placeholder="如：30"
                inputmode="numeric"
                />
            </div>
        </div>

        <!-- 提交按钮 -->
        <button class="btn-submit" id="btnSubmit" type="button">
            保存今日记录
        </button>
    </div>

    <!-- ========== 历史记录列表 ========== -->
    <div class="history-section" id="historySection">
        <h3 class="section-title">📋 历史记录</h3>
        <div id="recordsContainer">
            <!-- 动态渲染 -->
        </div>
    </div>

</div>

<!-- ==================== 底部版权 ==================== -->
<div class="footer">
    © 2026 Skyler · 数据安全存储于云端
</div>

<!-- ==================== Toast 容器 ==================== -->
<div id="toastContainer"></div>

<!-- ==================== 脚本 ==================== -->
<script>
    (function() {
        // ============================================================
        //  Supabase 初始化
        // ============================================================
        const SUPABASE_URL = 'https://nmpseuwcmdsqypehluve.supabase.co';
        const SUPABASE_ANON_KEY =
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5tcHNldXdjbWRzcXlwZWhsdXZlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODQ2MDM2MjEsImV4cCI6MjEwMDE3OTYyMX0.nXekidDzUX7atdw3BjWQuaGYMLUCKM2Ss5ZzNqxkEDQ';

        // 检查 Supabase SDK 是否加载成功
        if (typeof supabase === 'undefined') {
            showToast('Supabase SDK 加载失败，请检查网络连接后刷新页面', 'error');
            console.error('Supabase SDK 未加载。请确认 CDN 可访问。');
            return;
        }

        const sb = supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

        // ============================================================
        //  DOM 引用
        // ============================================================
        const dateDisplay = document.getElementById('dateDisplay');
        const weightInput = document.getElementById('weightInput');
        const mealInput = document.getElementById('mealInput');
        const exerciseTypeInput = document.getElementById('exerciseTypeInput');
        const exerciseDurationInput = document.getElementById('exerciseDurationInput');
        const btnSubmit = document.getElementById('btnSubmit');
        const recordsContainer = document.getElementById('recordsContainer');
        const toastContainer = document.getElementById('toastContainer');

        // ============================================================
        //  工具函数
        // ============================================================

        /** 获取今天日期字符串 YYYY-MM-DD */
        function getTodayDateStr() {
            const now = new Date();
            const yyyy = now.getFullYear();
            const mm = String(now.getMonth() + 1).padStart(2, '0');
            const dd = String(now.getDate()).padStart(2, '0');
            return `${yyyy}-${mm}-${dd}`;
        }

        /** 显示 Toast 提示 */
        function showToast(message, type) {
            // 移除已有 toast
            const existing = toastContainer.querySelector('.toast');
            if (existing) existing.remove();

            const toast = document.createElement('div');
            toast.className = `toast toast--${type === 'error' ? 'error' : 'success'}`;
            toast.textContent = message;
            toastContainer.appendChild(toast);

            // 动画结束后自动移除
            toast.addEventListener('animationend', function(e) {
                if (e.animationName === 'toastOut') {
                    toast.remove();
                }
            });
        }

        /** 设置提交按钮的 loading 状态 */
        function setSubmitLoading(loading) {
            if (loading) {
                btnSubmit.textContent = '保存中…';
                btnSubmit.disabled = true;
            } else {
                btnSubmit.textContent = '保存今日记录';
                btnSubmit.disabled = false;
            }
        }

        /** 清空所有输入框 */
        function clearInputs() {
            weightInput.value = '';
            mealInput.value = '';
            exerciseTypeInput.value = '';
            exerciseDurationInput.value = '';
        }

        // ============================================================
        //  Supabase 数据操作函数
        // ============================================================

        /**
         * 查询所有记录，按 date 降序排列
         * 注意：需要 Supabase 表 weight_records 配置了允许 anon SELECT 的 RLS 策略。
         * 若未配置，请在 Supabase Dashboard → Table Editor → weight_records → Policies 中添加：
         *   CREATE POLICY "allow_anon_select" ON weight_records FOR SELECT USING (true);
         */
        async function fetchRecords() {
            const { data, error } = await sb
                .from('weight_records')
                .select('*')
                .order('date', { ascending: false })
                .order('created_at', { ascending: false });

            if (error) {
                console.error('查询记录失败：', error);
                throw error;
            }
            return data || [];
        }

        /**
         * 新增一条记录
         * 注意：需要 Supabase 表 weight_records 配置了允许 anon INSERT 的 RLS 策略：
         *   CREATE POLICY "allow_anon_insert" ON weight_records FOR INSERT WITH CHECK (true);
         */
        async function addRecord(record) {
            const { data, error } = await sb
                .from('weight_records')
                .insert([record])
                .select();

            if (error) {
                console.error('插入记录失败：', error);
                throw error;
            }
            return data;
        }

        /**
         * 删除指定 id 的记录
         * 注意：需要 Supabase 表 weight_records 配置了允许 anon DELETE 的 RLS 策略：
         *   CREATE POLICY "allow_anon_delete" ON weight_records FOR DELETE USING (true);
         */
        async function deleteRecordById(id) {
            const { error } = await sb
                .from('weight_records')
                .delete()
                .eq('id', id);

            if (error) {
                console.error('删除记录失败：', error);
                throw error;
            }
        }

        // ============================================================
        //  渲染函数
        // ============================================================

        /** 渲染历史记录列表 */
        function renderRecords(records) {
            if (!records || records.length === 0) {
                recordsContainer.innerHTML = `
                        <div class="empty-state">
                            <span class="empty-icon">📝</span>
                            暂无记录，开始记录你的第一天吧
                        </div>`;
                return;
            }

            let html = '';
            records.forEach(rec => {
                // 运动内容展示
                let exerciseDisplay = '';
                if (rec.exercise_type && rec.exercise_type.trim()) {
                    if (rec.exercise_duration != null && rec.exercise_duration !== '') {
                        exerciseDisplay =
                            `${escapeHtml(rec.exercise_type)} ${rec.exercise_duration} 分钟`;
                    } else {
                        exerciseDisplay = escapeHtml(rec.exercise_type);
                    }
                }

                // 饮食内容
                const mealText = rec.meal && rec.meal.trim() ? escapeHtml(rec.meal) : '';

                html += `
                        <div class="record-card" data-id="${escapeHtml(String(rec.id))}">
                            <div class="record-header">
                                <span class="record-date">${escapeHtml(rec.date)}</span>
                                <span class="record-weight">${escapeHtml(String(rec.weight))}<span>kg</span></span>
                            </div>
                            ${mealText ? `<div class="record-detail"><span class="label-inline">饮食</span>${mealText}</div>` : ''}
                            ${exerciseDisplay ? `<div class="record-detail"><span class="label-inline">运动</span>${exerciseDisplay}</div>` : ''}
                            <button class="btn-delete" data-id="${escapeHtml(String(rec.id))}" title="删除此记录" aria-label="删除记录">×</button>
                        </div>`;
            });

            recordsContainer.innerHTML = html;

            // 绑定删除事件
            recordsContainer.querySelectorAll('.btn-delete').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = this.getAttribute('data-id');
                    handleDelete(id, this);
                });
            });
        }

        /** 简单的 HTML 转义（防止 XSS） */
        function escapeHtml(str) {
            const div = document.createElement('div');
            div.textContent = str;
            return div.innerHTML;
        }

        // ============================================================
        //  业务逻辑
        // ============================================================

        /** 加载并渲染历史记录 */
        async function loadRecords() {
            try {
                const records = await fetchRecords();
                renderRecords(records);
            } catch (err) {
                console.error('加载记录失败：', err);
                showToast('加载历史记录失败，请检查网络或刷新页面', 'error');
            }
        }

        /** 处理提交 */
        async function handleSubmit() {
            // 基本校验：体重不能为空
            const weightVal = weightInput.value.trim();
            if (!weightVal) {
                showToast('请输入体重（kg）', 'error');
                weightInput.focus();
                return;
            }
            const weightNum = parseFloat(weightVal);
            if (isNaN(weightNum) || weightNum <= 0) {
                showToast('请输入有效的体重数值', 'error');
                weightInput.focus();
                return;
            }

            // 收集数据
            const mealVal = mealInput.value.trim();
            const exerciseTypeVal = exerciseTypeInput.value.trim();
            const exerciseDurationRaw = exerciseDurationInput.value.trim();

            let exerciseDurationVal = null;
            if (exerciseDurationRaw !== '') {
                const durNum = parseInt(exerciseDurationRaw, 10);
                if (!isNaN(durNum) && durNum >= 0) {
                    exerciseDurationVal = durNum;
                }
            }

            const record = {
                date: getTodayDateStr(),
                weight: weightNum,
                meal: mealVal || null,
                exercise_type: exerciseTypeVal || null,
                exercise_duration: exerciseDurationVal,
                created_at: new Date().toISOString(),
            };

            // 提交
            setSubmitLoading(true);
            try {
                await addRecord(record);
                showToast('✅ 记录保存成功！', 'success');
                clearInputs();
                await loadRecords(); // 刷新列表
            } catch (err) {
                console.error('保存记录失败：', err);
                // 根据错误类型给出更友好的提示
                let errMsg = '保存失败，请检查网络后重试';
                if (err && err.message) {
                    // Supabase 常见错误：RLS 策略问题
                    if (err.message.includes('row-level security') || err.message.includes(
                            'policy')) {
                        errMsg = '保存失败：表权限未配置，请在 Supabase 中设置 RLS 策略';
                    } else if (err.message.includes('network') || err.message.includes('fetch')) {
                        errMsg = '网络异常，请检查网络连接后重试';
                    } else if (err.message.includes('duplicate')) {
                        errMsg = '该记录已存在';
                    }
                }
                showToast(errMsg, 'error');
            } finally {
                setSubmitLoading(false);
            }
        }

        /** 处理删除 */
        async function handleDelete(id, btnElement) {
            // 二次确认
            if (!confirm('确定要删除这条记录吗？此操作不可撤销。')) {
                return;
            }

            // 禁用按钮防止重复点击
            const originalText = btnElement.textContent;
            btnElement.textContent = '…';
            btnElement.disabled = true;
            btnElement.style.pointerEvents = 'none';

            try {
                await deleteRecordById(id);
                showToast('记录已删除', 'success');
                await loadRecords(); // 刷新列表
            } catch (err) {
                console.error('删除记录失败：', err);
                let errMsg = '删除失败，请检查网络后重试';
                if (err && err.message && (err.message.includes('row-level security') || err.message
                        .includes('policy'))) {
                    errMsg = '删除失败：表权限未配置，请在 Supabase 中设置 RLS 策略';
                }
                showToast(errMsg, 'error');
                // 恢复按钮
                btnElement.textContent = originalText;
                btnElement.disabled = false;
                btnElement.style.pointerEvents = '';
            }
        }

        // ============================================================
        //  初始化
        // ============================================================
        function init() {
            // 显示今天日期
            dateDisplay.textContent = getTodayDateStr();

            // 绑定提交事件
            btnSubmit.addEventListener('click', handleSubmit);

            // 支持回车提交（在体重输入框按回车时触发提交）
            weightInput.addEventListener('keydown', function(e) {
                if (e.key === 'Enter') {
                    e.preventDefault();
                    handleSubmit();
                }
            });

            // 加载历史记录
            loadRecords();
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
