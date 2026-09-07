<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · Fresh UI</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f7f9fc;
      --surface: #ffffff;
      --primary: #111827;
      --accent: #8b5cf6;
      --accent-soft: #ede9fe;
      --accent-light: #a78bfa;
      --muted: #6b7280;
      --border: #e5e7eb;
      --shadow-sm: 0 4px 12px rgba(0,0,0,0.02), 0 1px 2px rgba(0,0,0,0.04);
      --shadow-md: 0 12px 32px rgba(0,0,0,0.04), 0 4px 12px rgba(0,0,0,0.02);
      --shadow-lg: 0 24px 48px rgba(0,0,0,0.06);
      --radius-xl: 24px;
      --radius-lg: 16px;
      --radius-full: 60px;
      --transition: 0.2s ease;
    }

    body {
      font-family: 'Space Grotesk', sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---- HEADER (fresh & minimal) ---- */
    header {
      background: rgba(255,255,255,0.78);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      position: sticky;
      top: 0;
      z-index: 60;
    }

    .header-grid {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 14px 0;
      gap: 16px;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.02em;
      color: var(--primary);
      text-decoration: none;
    }
    .brand .accent {
      color: var(--accent);
    }
    .brand i {
      font-size: 26px;
      color: var(--accent);
    }

    .nav-desktop {
      display: flex;
      align-items: center;
      gap: 4px;
      list-style: none;
    }
    .nav-desktop a {
      padding: 8px 16px;
      border-radius: var(--radius-full);
      font-weight: 500;
      font-size: 14px;
      color: var(--primary);
      text-decoration: none;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .nav-desktop a i {
      font-size: 14px;
      color: var(--muted);
    }
    .nav-desktop a:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }
    .nav-desktop a:hover i {
      color: var(--accent);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: var(--radius-full);
      padding: 4px 4px 4px 18px;
      transition: var(--transition);
      box-shadow: var(--shadow-sm);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(139, 92, 246, 0.08);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      width: 160px;
      outline: none;
      font-family: inherit;
    }
    .search-wrap input::placeholder {
      color: var(--muted);
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      width: 40px;
      height: 40px;
      border-radius: 40px;
      color: white;
      cursor: pointer;
      transition: var(--transition);
      display: grid;
      place-items: center;
    }
    .search-wrap button:hover {
      background: #7c3aed;
      transform: scale(0.96);
    }

    .icon-btn {
      background: transparent;
      border: none;
      width: 44px;
      height: 44px;
      border-radius: 44px;
      display: grid;
      place-items: center;
      font-size: 18px;
      color: var(--primary);
      cursor: pointer;
      transition: var(--transition);
    }
    .icon-btn:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }

    .cart-btn {
      position: relative;
      background: var(--accent-soft);
      border: none;
      width: 44px;
      height: 44px;
      border-radius: 44px;
      display: grid;
      place-items: center;
      color: var(--accent);
      cursor: pointer;
      transition: var(--transition);
    }
    .cart-btn:hover {
      background: #d8cffa;
    }
    .cart-badge {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--accent);
      color: white;
      font-size: 11px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 30px;
      display: grid;
      place-items: center;
      border: 2px solid white;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 24px;
      color: var(--primary);
      cursor: pointer;
    }

    /* mobile menu */
    .mobile-menu {
      display: none;
      background: var(--surface);
      border-top: 1px solid var(--border);
      padding: 16px 0;
    }
    .mobile-menu a {
      display: block;
      padding: 12px 20px;
      font-weight: 500;
      text-decoration: none;
      color: var(--primary);
      border-radius: 12px;
      transition: var(--transition);
    }
    .mobile-menu a:hover {
      background: var(--accent-soft);
    }

    /* ---- HERO (friendly, gradient) ---- */
    .hero-section {
      background: linear-gradient(145deg, #f5f3ff 0%, #ffffff 100%);
      border-radius: var(--radius-xl);
      margin: 28px auto;
      padding: 48px 40px;
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      gap: 32px;
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(255,255,255,0.6);
    }
    .hero-text {
      flex: 1 1 300px;
    }
    .hero-text .chip {
      display: inline-block;
      background: var(--accent-soft);
      color: var(--accent);
      padding: 4px 16px;
      border-radius: var(--radius-full);
      font-weight: 600;
      font-size: 13px;
      margin-bottom: 12px;
    }
    .hero-text h1 {
      font-size: 38px;
      font-weight: 700;
      letter-spacing: -0.02em;
      line-height: 1.1;
    }
    .hero-text p {
      color: var(--muted);
      margin: 16px 0 24px;
      max-width: 440px;
      font-size: 16px;
    }
    .btn-group {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: var(--radius-full);
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: var(--transition);
      font-family: inherit;
      font-size: 15px;
      text-decoration: none;
    }
    .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 4px 14px rgba(139, 92, 246, 0.3);
    }
    .btn-primary:hover {
      background: #7c3aed;
      transform: translateY(-2px);
      box-shadow: 0 8px 24px rgba(139, 92, 246, 0.35);
    }
    .btn-outline {
      background: transparent;
      border: 1.5px solid var(--border);
      color: var(--primary);
    }
    .btn-outline:hover {
      background: var(--surface);
      border-color: var(--accent);
    }

    .hero-visual {
      flex: 1 1 180px;
      display: flex;
      justify-content: center;
    }
    .hero-visual img {
      max-width: 280px;
      width: 100%;
      border-radius: var(--radius-lg);
      box-shadow: var(--shadow-md);
    }

    /* ---- SECTION HEAD ---- */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      margin-bottom: 20px;
    }
    .section-head h2 {
      font-weight: 700;
      font-size: 26px;
      letter-spacing: -0.01em;
    }
    .section-head .muted {
      color: var(--muted);
      font-size: 15px;
      margin-left: 8px;
    }
    .section-head .link {
      color: var(--accent);
      font-weight: 600;
      font-size: 14px;
      text-decoration: none;
      transition: var(--transition);
    }
    .section-head .link:hover {
      opacity: 0.7;
    }

    /* ---- CATEGORIES (rounded tiles) ---- */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 16px;
    }
    .cat-item {
      background: var(--surface);
      padding: 24px 12px;
      border-radius: var(--radius-lg);
      text-align: center;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border);
      transition: var(--transition);
      cursor: pointer;
    }
    .cat-item:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-md);
      border-color: var(--accent-soft);
    }
    .cat-item .icon {
      width: 64px;
      height: 64px;
      background: var(--accent-soft);
      border-radius: 64px;
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 28px;
      color: var(--accent);
    }
    .cat-item h4 {
      font-weight: 600;
      font-size: 15px;
    }
    .cat-item .sub {
      font-size: 13px;
      color: var(--muted);
    }

    /* ---- PRODUCTS (clean cards) ---- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-md);
    }
    .product-card img {
      width: 100%;
      height: 190px;
      object-fit: cover;
      background: #f3f4f6;
    }
    .product-body {
      padding: 16px 16px 8px;
      flex: 1;
    }
    .product-body .p-name {
      font-weight: 600;
      font-size: 15px;
    }
    .product-body .p-cat {
      font-size: 12px;
      color: var(--muted);
      background: var(--bg);
      display: inline-block;
      padding: 2px 12px;
      border-radius: 40px;
      margin-top: 4px;
    }
    .p-price {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 8px;
    }
    .p-price .current {
      font-weight: 700;
      font-size: 19px;
    }
    .p-price .old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 14px;
    }
    .p-rating {
      margin-left: auto;
      color: #f59e0b;
      font-size: 13px;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .product-actions {
      padding: 12px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .btn-add {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 10px;
      border-radius: var(--radius-full);
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .btn-add:hover {
      background: var(--accent);
    }
    .btn-wish {
      background: transparent;
      border: 1px solid var(--border);
      border-radius: var(--radius-full);
      width: 44px;
      display: grid;
      place-items: center;
      cursor: pointer;
      transition: var(--transition);
      color: var(--muted);
    }
    .btn-wish:hover {
      background: var(--accent-soft);
      color: #ef4444;
      border-color: #ef4444;
    }

    /* ---- DEAL (split layout) ---- */
    .deal-box {
      display: flex;
      flex-wrap: wrap;
      background: var(--surface);
      border-radius: var(--radius-xl);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border);
    }
    .deal-box img {
      width: 100%;
      max-width: 380px;
      height: 280px;
      object-fit: cover;
      flex: 1 1 240px;
    }
    .deal-content {
      padding: 32px 28px;
      flex: 2 1 300px;
    }
    .deal-content h3 {
      font-size: 28px;
      font-weight: 700;
    }
    .deal-content .desc {
      color: var(--muted);
      margin: 6px 0 18px;
    }
    .timer-box {
      display: flex;
      gap: 14px;
      margin: 16px 0 20px;
    }
    .time-unit {
      background: var(--primary);
      color: white;
      padding: 10px 14px;
      border-radius: 14px;
      min-width: 68px;
      text-align: center;
    }
    .time-unit .num {
      font-size: 26px;
      font-weight: 700;
      line-height: 1.2;
    }
    .time-unit .label {
      font-size: 11px;
      opacity: 0.7;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 16px;
      margin: 10px 0 12px;
    }
    .deal-price .big {
      font-size: 32px;
      font-weight: 700;
    }
    .deal-price .old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 18px;
    }
    .deal-price .disc {
      background: #ef4444;
      color: white;
      padding: 4px 14px;
      border-radius: var(--radius-full);
      font-weight: 700;
      font-size: 14px;
    }
    .stock {
      color: var(--muted);
      font-size: 14px;
      margin: 10px 0 18px;
    }

    /* ---- TESTIMONIALS (scroll) ---- */
    .testi-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testi-card {
      min-width: 270px;
      flex: 1 0 270px;
      background: var(--surface);
      padding: 24px 20px;
      border-radius: var(--radius-lg);
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border);
      scroll-snap-align: start;
    }
    .testi-card .stars {
      color: #f59e0b;
      margin-bottom: 8px;
    }
    .testi-card p {
      font-size: 15px;
    }
    .testi-user {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 16px;
    }
    .testi-user img {
      width: 44px;
      height: 44px;
      border-radius: 44px;
      object-fit: cover;
      background: var(--bg);
    }

    /* ---- NEWSLETTER (soft) ---- */
    .newsletter-wrap {
      background: var(--primary);
      color: white;
      border-radius: var(--radius-xl);
      padding: 44px 32px;
      text-align: center;
    }
    .newsletter-wrap h3 {
      font-size: 28px;
      font-weight: 700;
    }
    .newsletter-wrap p {
      opacity: 0.75;
      margin: 6px 0 20px;
    }
    .newsletter-wrap form {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 10px;
    }
    .newsletter-wrap input {
      padding: 14px 22px;
      border-radius: var(--radius-full);
      border: none;
      width: 300px;
      max-width: 100%;
      font-size: 15px;
      font-family: inherit;
    }
    .newsletter-wrap .btn-primary {
      background: var(--accent);
    }
    .newsletter-wrap .btn-primary:hover {
      background: #7c3aed;
    }
    #newsletterMsg {
      margin-top: 12px;
      font-size: 15px;
      color: #c4b5fd;
    }

    /* ---- FOOTER ---- */
    footer {
      padding: 40px 0 24px;
      color: var(--muted);
      border-top: 1px solid var(--border);
      margin-top: 28px;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 32px;
      justify-content: space-between;
    }
    .footer-brand {
      max-width: 260px;
    }
    .footer-brand .brand {
      font-size: 20px;
    }
    .footer-social {
      display: flex;
      gap: 12px;
      margin-top: 12px;
    }
    .footer-social a {
      background: var(--bg);
      width: 40px;
      height: 40px;
      border-radius: 40px;
      display: grid;
      place-items: center;
      color: var(--primary);
      border: 1px solid var(--border);
      transition: var(--transition);
    }
    .footer-social a:hover {
      background: var(--accent);
      color: white;
      border-color: var(--accent);
    }
    .footer-links {
      display: flex;
      gap: 48px;
      flex-wrap: wrap;
    }
    .footer-links h5 {
      font-weight: 600;
      color: var(--primary);
      margin-bottom: 6px;
      font-size: 15px;
    }
    .footer-links a {
      display: block;
      color: var(--muted);
      text-decoration: none;
      line-height: 2.2;
      font-size: 14px;
    }
    .footer-links a:hover {
      color: var(--primary);
    }
    .copy {
      text-align: center;
      margin-top: 32px;
      font-size: 13px;
      border-top: 1px solid var(--border);
      padding-top: 24px;
    }

    /* ---- RESPONSIVE ---- */
    @media (max-width: 900px) {
      .nav-desktop {
        display: none;
      }
      .mobile-toggle {
        display: block;
      }
      .hero-section {
        padding: 32px 24px;
      }
      .hero-text h1 {
        font-size: 30px;
      }
      .deal-box img {
        max-width: 100%;
        height: 200px;
      }
    }
    @media (max-width: 600px) {
      .header-grid {
        flex-wrap: wrap;
      }
      .search-wrap {
        order: 3;
        flex: 1 1 100%;
      }
      .search-wrap input {
        width: 100%;
      }
      .product-grid {
        grid-template-columns: 1fr 1fr;
      }
      .category-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .hero-text h1 {
        font-size: 26px;
      }
      .deal-content h3 {
        font-size: 22px;
      }
      .timer-box {
        gap: 8px;
      }
      .time-unit {
        min-width: 56px;
        padding: 8px 6px;
      }
      .time-unit .num {
        font-size: 20px;
      }
    }
    @media (max-width: 420px) {
      .product-grid {
        grid-template-columns: 1fr;
      }
      .category-grid {
        grid-template-columns: 1fr 1fr;
      }
    }

    .section { margin: 40px 0; }
    .muted { color: var(--muted); }
    .flex { display: flex; align-items: center; gap: 8px; }
  </style>
</head>
<body>

<header>
  <div class="container header-grid">
    <div class="flex">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a href="#" class="brand"><i class="fas fa-cube"></i> Nexus<span class="accent">Shop</span></a>
    </div>

    <ul class="nav-desktop">
      <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-th"></i> Categories</a></li>
      <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
      <li><a href="#"><i class="fas fa-trending-up"></i> Trending</a></li>
    </ul>

    <div class="header-actions">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search...">
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
      <button class="cart-btn" id="cartBtn">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-badge" id="cartCount">0</span>
      </button>
    </div>
  </div>

  <!-- mobile menu -->
  <div class="mobile-menu" id="mobileMenu">
    <div class="container">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#categories"><i class="fas fa-th"></i> Categories</a>
      <a href="#deals"><i class="fas fa-bolt"></i> Deals</a>
      <a href="#"><i class="fas fa-trending-up"></i> Trending</a>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <div class="container">
    <div class="hero-section">
      <div class="hero-text">
        <span class="chip"><i class="fas fa-star"></i> New collection</span>
        <h1>Style meets <br>performance</h1>
        <p>Discover thoughtfully curated products for your daily life. Limited deals inside.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow">Explore <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-outline" id="exploreDeals">View deals</button>
        </div>
      </div>
      <div class="hero-visual">
        <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?w=400&auto=format&fit=crop" alt="hero">
      </div>
    </div>
  </div>

  <!-- CATEGORIES -->
  <section class="container section" id="categories">
    <div class="section-head">
      <div><h2>Categories</h2><span class="muted">shop by interest</span></div>
      <a href="#" class="link">All <i class="fas fa-arrow-right"></i></a>
    </div>
    <div class="category-grid" id="categoriesGrid"></div>
  </section>

  <!-- PRODUCTS -->
  <section class="container section" id="products">
    <div class="section-head">
      <div><h2>Popular</h2><span class="muted">trending now</span></div>
      <a href="#" class="link">View all <i class="fas fa-arrow-right"></i></a>
    </div>
    <div class="product-grid" id="productsGrid"></div>
  </section>

  <!-- DEAL -->
  <section class="container section" id="deals">
    <div class="section-head">
      <div><h2>Flash sale</h2><span class="muted">limited time</span></div>
    </div>
    <div class="deal-box">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=600&auto=format&fit=crop" alt="deal">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="desc">Ultra-portable, powerful M2 chip, all‑day battery.</p>
        <div class="timer-box" id="timerGroup">
          <div class="time-unit"><span class="num" id="dealDays">0</span><div class="label">Days</div></div>
          <div class="time-unit"><span class="num" id="dealHours">00</span><div class="label">Hours</div></div>
          <div class="time-unit"><span class="num" id="dealMinutes">00</span><div class="label">Min</div></div>
          <div class="time-unit"><span class="num" id="dealSeconds">00</span><div class="label">Sec</div></div>
        </div>
        <div class="deal-price">
          <span class="big">$999</span>
          <span class="old">$1,199</span>
          <span class="disc">-17%</span>
        </div>
        <div class="stock"><i class="fas fa-box"></i> Only <strong>12</strong> left</div>
        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="container section">
    <div class="section-head">
      <div><h2>Testimonials</h2><span class="muted">what people say</span></div>
    </div>
    <div class="testi-scroll" id="testimonials">
      <div class="testi-card">
        <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>“Amazing quality and super fast shipping. Love the experience.”</p>
        <div class="testi-user">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=60&h=60&fit=crop&crop=face" alt="avatar">
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:13px;">Verified</div></div>
        </div>
      </div>
      <div class="testi-card">
        <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>“Great selection and easy checkout. Will definitely order again.”</p>
        <div class="testi-user">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?w=60&h=60&fit=crop&crop=face" alt="avatar">
          <div><strong>Michael Lee</strong><div class="muted" style="font-size:13px;">Top buyer</div></div>
        </div>
      </div>
      <div class="testi-card">
        <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>“Incredible support and the products are premium. Highly recommend.”</p>
        <div class="testi-user">
          <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=60&h=60&fit=crop&crop=face" alt="avatar">
          <div><strong>James Park</strong><div class="muted" style="font-size:13px;">Frequent</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="container section">
    <div class="newsletter-wrap">
      <h3>Stay inspired</h3>
      <p>Get exclusive offers and first access</p>
      <form id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="Your email" aria-label="Email" required>
        <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <a href="#" class="brand"><i class="fas fa-cube"></i> Nexus<span class="accent">Shop</span></a>
        <p class="muted" style="margin-top:6px;">Modern e‑commerce demo with a fresh UI.</p>
        <div class="footer-social">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="footer-links">
        <div><h5>Company</h5><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
        <div><h5>Support</h5><a href="#">Help</a><a href="#">Shipping</a><a href="#">Contact</a></div>
      </div>
    </div>
    <div class="copy">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
  // ---------- DATA ----------
  const CATEGORIES = [
    { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?w=400&auto=format&fit=crop', category: 'Phones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400&auto=format&fit=crop', category: 'Laptops' },
    { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?w=400&auto=format&fit=crop
