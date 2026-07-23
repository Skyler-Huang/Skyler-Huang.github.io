const siteData = {
    header: {
        name: '黄乐天',
        englishName: 'Skyler',
        tagline: '会计学专业 · 用技术为专业能力提效',
        githubUrl: 'https://github.com/Skyler-Huang',
        avatarLetter: 'S'
    },
    quotes: [
        '行动是治愈恐惧的良药。',
        '会计是商业的语言。',
        '慢即是快，少即是多。',
        '复杂的事情简单做，简单的事情重复做。',
        '学习是为了忘记，然后内化。',
        '专注是稀缺品。',
        '把标准定高一点，结果不会太差。',
        '流水不争先，争的是滔滔不绝。'
    ],
    navigation: {
        items: [
            { label: '首页', href: '/', isActive: true },
            {
                label: '专业',
                hasDropdown: true,
                dropdown: [
                    { label: '关于我', href: '/about/' },
                    { label: '学习笔记', href: '/blog/' },
                    { label: '知识库', href: '/wiki/' },
                    { label: '术语卡片', href: '/glossary/' }
                ]
            },
            {
                label: '工具',
                hasDropdown: true,
                dropdown: [
                    { label: '记账打卡工具', href: '/recording/' },
                    { label: '体重饮食记录', href: '/weight/' },
                    { label: '备忘录', href: '/memo/' }
                ]
            },
            {
                label: '生活',
                hasDropdown: true,
                dropdown: [
                    { label: '当前状态', href: '/now/' },
                    { label: '书单/读书笔记', href: '/reading/' },
                    { label: '随手拍', href: '/photos/' },
                    { label: '最近在听', href: '/playlist/' },
                    { label: '旅行记录', href: '/travel/' },
                    { label: '收集的句子', href: '/quotes/' }
                ]
            },
            {
                label: '连接',
                hasDropdown: true,
                dropdown: [
                    { label: '社交聚合', href: '/social/' },
                    { label: '留言板', href: '/board/' },
                    { label: '访客签名簿', href: '/guestbook/' }
                ]
            }
        ]
    },
    categories: [
        {
            id: 'professional',
            title: '专业',
            cards: [
                { title: '关于我', description: '了解更多背景、经历与方向', link: '/about/' },
                { title: '学习笔记', description: '会计、审计与财务数字化的思考碎片', link: '/blog/' }
            ],
            placeholder: '更多功能持续扩展中'
        },
        {
            id: 'tools',
            title: '工具',
            cards: [
                { title: '记账打卡工具', description: '日常记账与习惯追踪', link: '/recording/' },
                { title: '体重饮食记录', description: '记录每日体重、饮食与运动', link: '/weight/' },
                { title: '备忘录', description: '随手记录待办与灵感', link: '/memo/' }
            ],
            placeholder: '更多功能持续扩展中'
        },
        {
            id: 'life',
            title: '生活',
            cards: [
                { title: '当前状态', description: '我正在做什么', link: '/now/' },
                { title: '书单/读书笔记', description: '阅读记录与感想', link: '/reading/' },
                { title: '随手拍', description: '日常影像碎片', link: '/photos/' },
                { title: '最近在听', description: '音乐与播客推荐', link: '/playlist/' },
                { title: '旅行记录', description: '去过的地方', link: '/travel/' },
                { title: '收集的句子', description: '喜欢的文字片段', link: '/quotes/' }
            ],
            placeholder: '更多功能持续扩展中'
        },
        {
            id: 'connect',
            title: '连接',
            cards: [
                {
                    title: '联系我',
                    description: '欢迎理性、克制的交流。',
                    email: 'hletian1220@gmail.com',
                    phone: '15872157112',
                    accent: true
                },
                { title: '社交聚合', description: '各平台入口', link: '/social/' },
                { title: '留言板', description: '访客留言', link: '/board/' },
                { title: '访客签名簿', description: '留下你的足迹', link: '/guestbook/' }
            ],
            placeholder: '更多功能持续扩展中'
        }
    ],
    about: [
        '会计学专业大二在读，对传统审计与海外财务方向保持持续关注。',
        '相信技术可以成为专业能力的杠杆——目前正在探索提示词工程、财务数字化工具与自动化工作流，试图在严谨的学科框架中，找到一条更具效率与创造力的路径。',
        '希望将严谨的会计思维与现代效率工具相结合，为未来的职业道路做好准备。课余时间维护个人知识库与效率工具集，信奉「慢即是快」，在浮躁中保留一份对精耕细作的耐心。'
    ],
    footer: {
        copyright: '© 2026 黄乐天',
        domain: 'hletian.cn',
        powered: 'Powered by GitHub Pages',
        note: '正在建设中，持续更新中',
        lastUpdated: '2026-07-23'
    }
};
