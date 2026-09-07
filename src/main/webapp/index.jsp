<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Google Fonts & Font Awesome -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #fafbfc;
      --surface: #ffffff;
      --primary: #0f172a;
      --primary-light: #1e293b;
      --accent: #2563eb;
      --accent-soft: #dbeafe;
      --muted: #64748b;
      --border: #e9edf2;
      --radius-card: 20px;
      --radius-btn: 40px;
      --shadow-card: 0 12px 32px rgba(0, 0, 0, 0.03), 0 4px 8px rgba(0, 0, 0, 0.02);
      --shadow-hover: 0 24px 48px rgba(0, 0, 0, 0.06);
      --transition: 0.22s cubic-bezier(0.25, 0.46, 0.45, 0.94);
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    .container {
      width: 100%;
      max-width: 1260px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---------- HEADER (friendly & clean) ---------- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.86);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.03);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      padding: 14px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.02em;
      color: var(--primary);
    }
    .brand .accent {
      color: var(--accent);
    }
    .brand i {
      color: var(--accent);
      font-size: 24px;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--bg);
      border-radius: 60px;
      padding: 6px 6px 6px 18px;
      border: 1px solid var(--border);
      transition: var(--transition);
      flex: 1 1 260px;
      min-width: 180px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(37, 99, 235, 0.08);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      width: 100%;
      font-size: 14px;
      padding: 10px 0;
      outline: none;
      color: var(--primary);
    }
    .search-wrap input::placeholder {
      color: var(--muted);
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      width: 40px;
      height: 40px;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
      display: grid;
      place-items: center;
    }
    .search-wrap button:hover {
      background: #1d4ed8;
      transform: scale(0.96);
    }

    .nav-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .nav-actions .icon-btn {
      background: transparent;
      border: none;
      width: 44px;
      height: 44px;
      border-radius: 44px;
      display: grid;
      place-items: center;
      font-size: 18px;
      color: var(--primary-light);
      cursor: pointer;
      transition: var(--transition);
    }
    .nav-actions .icon-btn:hover {
      background: var(--bg);
    }

    .cart-btn {
      position: relative;
      display: grid;
      place-items: center;
      width: 44px;
      height: 44px;
      border-radius: 44px;
      background: var(--accent-soft);
      color: var(--accent);
      border: none;
      cursor: pointer;
      transition: var(--transition);
    }
    .cart-btn:hover {
      background: #bfdbfe;
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

    /* desktop nav */
    .nav-links {
      display: flex;
      align-items: center;
      gap: 4px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--primary-light);
      transition: var(--transition);
      text-decoration: none;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .nav-links a i {
      font-size: 15px;
    }
    .nav-links a:hover {
      background: var(--bg);
      color: var(--accent);
    }

    /* mobile menu */
    .mobile-menu {
      display: none;
      background: var(--surface);
      padding: 16px 0;
      border-top: 1px solid var(--border);
    }
    .mobile-menu a {
      display: block;
      padding: 12px 20px;
      font-weight: 500;
      color: var(--primary);
      text-decoration: none;
      border-radius: 12px;
      transition: var(--transition);
    }
    .mobile-menu a:hover {
      background: var(--bg);
    }

    /* ---------- HERO (friendly & inviting) ---------- */
    .hero {
      background: linear-gradient(145deg, #f0f5ff 0%, #ffffff 100%);
      border-radius: 32px;
      margin: 24px auto;
      padding: 52px 40px;
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      gap: 32px;
      justify-content: space-between;
      box-shadow: var(--shadow-card);
      border: 1px solid rgba(255, 255, 255, 0.6);
    }
    .hero-content {
      flex: 1 1 320px;
    }
    .hero-content .badge {
      display: inline-block;
      background: var(--accent-soft);
      color: var(--accent);
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 13px;
      margin-bottom: 12px;
    }
    .hero-content h1 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 800;
      font-size: 38px;
      line-height: 1.15;
      letter-spacing: -0.02em;
      color: var(--primary);
    }
    .hero-content p {
      color: var(--muted);
      font-size: 16px;
      max-width: 480px;
      margin: 16px 0 24px;
    }
    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: var(--radius-btn);
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: var(--transition);
      text-decoration: none;
      font-size: 15px;
    }
    .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 4px 12px rgba(37, 99, 235, 0.25);
    }
    .btn-primary:hover {
      background: #1d4ed8;
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(37, 99, 235, 0.3);
    }
    .btn-outline {
      background: transparent;
      border: 1.5px solid var(--border);
      color: var(--primary);
    }
    .btn-outline:hover {
      background: var(--bg);
      border-color: var(--accent);
    }

    .hero-image {
      flex: 1 1 200px;
      display: flex;
      justify-content: center;
    }
    .hero-image img {
      max-width: 280px;
      width: 100%;
      border-radius: 24px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.04);
    }

    /* ---------- SECTION TITLES ---------- */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      margin-bottom: 20px;
    }
    .section-head h2 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 700;
      font-size: 26px;
      letter-spacing: -0.01em;
    }
    .section-head .muted {
      color: var(--muted);
      font-size: 15px;
    }
    .section-head .link-all {
      color: var(--accent);
      font-weight: 600;
      font-size: 14px;
      text-decoration: none;
      transition: var(--transition);
    }
    .section-head .link-all:hover {
      opacity: 0.7;
    }

    /* ---------- CATEGORIES (friendly tiles) ---------- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: var(--surface);
      padding: 22px 12px;
      border-radius: var(--radius-card);
      text-align: center;
      box-shadow: var(--shadow-card);
      border: 1px solid var(--border);
      transition: var(--transition);
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }
    .cat-card .icon {
      font-size: 32px;
      color: var(--accent);
      background: var(--accent-soft);
      width: 60px;
      height: 60px;
      display: grid;
      place-items: center;
      border-radius: 60px;
      margin: 0 auto 10px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 15px;
      margin: 4px 0 2px;
    }
    .cat-card .sub {
      font-size: 13px;
      color: var(--muted);
    }

    /* ---------- PRODUCTS (cards) ---------- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 22px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius-card);
      overflow: hidden;
      box-shadow: var(--shadow-card);
      transition: var(--transition);
      border: 1px solid var(--border);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
    }
    .product-card img {
      width: 100%;
      height: 180px;
      object-fit: cover;
      display: block;
      background: #f8fafc;
    }
    .product-body {
      padding: 16px 16px 8px;
      flex: 1;
    }
    .product-body .title {
      font-weight: 600;
      font-size: 15px;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 12px;
      color: var(--muted);
      background: var(--bg);
      display: inline-block;
      padding: 2px 10px;
      border-radius: 40px;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: 8px;
      flex-wrap: wrap;
    }
    .price-current {
      font-weight: 700;
      font-size: 18px;
      color: var(--primary);
    }
    .price-old {
      font-size: 14px;
      color: var(--muted);
      text-decoration: line-through;
    }
    .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      color: #f59e0b;
      font-size: 13px;
      margin-left: auto;
    }
    .product-footer {
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
      border-radius: 40px;
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
      border-radius: 40px;
      width: 44px;
      display: grid;
      place-items: center;
      cursor: pointer;
      transition: var(--transition);
      color: var(--muted);
    }
    .btn-wish:hover {
      background: var(--bg);
      color: #ef4444;
      border-color: #ef4444;
    }

    /* ---------- FLASH DEAL (friendly) ---------- */
    .deal-card {
      display: flex;
      flex-wrap: wrap;
      background: var(--surface);
      border-radius: var(--radius-card);
      overflow: hidden;
      box-shadow: var(--shadow-card);
      border: 1px solid var(--border);
      align-items: center;
    }
    .deal-card img {
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
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 28px;
      font-weight: 700;
    }
    .deal-content .desc {
      color: var(--muted);
      margin: 6px 0 16px;
    }
    .timer-group {
      display: flex;
      gap: 12px;
      margin: 18px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 14px;
      border-radius: 14px;
      min-width: 68px;
      text-align: center;
    }
    .time-box .num {
      font-size: 26px;
      font-weight: 700;
      line-height: 1.2;
    }
    .time-box .label {
      font-size: 11px;
      opacity: 0.7;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 16px;
      margin: 12px 0 8px;
    }
    .deal-price .current {
      font-size: 30px;
      font-weight: 700;
    }
    .deal-price .old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 18px;
    }
    .deal-price .badge-discount {
      background: #ef4444;
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 14px;
    }
    .stock-info {
      color: var(--muted);
      font-size: 14px;
      margin: 12px 0 18px;
    }

    /* ---------- TESTIMONIALS ---------- */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testi-card {
      min-width: 280px;
      flex: 1 0 280px;
      background: var(--surface);
      padding: 24px 20px;
      border-radius: var(--radius-card);
      box-shadow: var(--shadow-card);
      border: 1px solid var(--border);
      scroll-snap-align: start;
    }
    .testi-card .stars {
      color: #f59e0b;
      margin-bottom: 8px;
    }
    .testi-card p {
      font-size: 15px;
      color: var(--primary);
    }
    .testi-footer {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 16px;
    }
    .testi-footer .avatar {
      width: 44px;
      height: 44px;
      border-radius: 44px;
      object-fit: cover;
      background: var(--bg);
    }

    /* ---------- NEWSLETTER ---------- */
    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius-card);
      padding: 44px 32px;
      text-align: center;
    }
    .newsletter-box h3 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 28px;
      font-weight: 700;
    }
    .newsletter-box p {
      opacity: 0.8;
      margin: 6px 0 20px;
    }
    .newsletter-box form {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 10px;
    }
    .newsletter-box input {
      padding: 14px 20px;
      border-radius: 40px;
      border: none;
      width: 300px;
      max-width: 100%;
      font-size: 15px;
    }
    .newsletter-box .btn-primary {
      background: var(--accent);
      color: white;
      padding: 14px 32px;
    }
    .newsletter-box .btn-primary:hover {
      background: #1d4ed8;
    }
    #newsletterMsg {
      margin-top: 12px;
      font-size: 15px;
      color: #93c5fd;
    }

    /* ---------- FOOTER ---------- */
    footer {
      padding: 40px 0 24px;
      color: var(--muted);
      border-top: 1px solid var(--border);
      margin-top: 24px;
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
    .footer-socials {
      display: flex;
      gap: 12px;
      margin-top: 12px;
    }
    .footer-socials a {
      background: var(--bg);
      width: 40px;
      height: 40px;
      border-radius: 40px;
      display: grid;
      place-items: center;
      color: var(--primary);
      transition: var(--transition);
      border: 1px solid var(--border);
    }
    .footer-socials a:hover {
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
      margin-bottom: 8px;
      font-size: 15px;
    }
    .footer-links a {
      display: block;
      color: var(--muted);
      text-decoration: none;
      line-height: 2;
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

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 900px) {
      .nav-links {
        display: none;
      }
      .mobile-toggle {
        display: block;
      }
      .hero {
        padding: 32px 24px;
      }
      .hero-content h1 {
        font-size: 30px;
      }
      .deal-card img {
        max-width: 100%;
        height: 200px;
      }
    }
    @media (max-width: 600px) {
      .header-inner {
        flex-wrap: wrap;
      }
      .search-wrap {
        order: 3;
        flex: 1 1 100%;
      }
      .products-grid {
        grid-template-columns: 1fr 1fr;
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .hero-content h1 {
        font-size: 26px;
      }
      .deal-content h3 {
        font-size: 22px;
      }
      .timer-group {
        gap: 8px;
      }
      .time-box {
        min-width: 56px;
        padding: 8px 6px;
      }
      .time-box .num {
        font-size: 20px;
      }
    }
    @media (max-width: 420px) {
      .products-grid {
        grid-template-columns: 1fr;
      }
      .categories-grid {
        grid-template-columns: 1fr 1fr;
      }
    }

    /* utilities */
    .muted {
      color: var(--muted);
    }
    .mt-1 {
      margin-top: 8px;
    }
    .gap-2 {
      gap: 12px;
    }
    .flex {
      display: flex;
      align-items: center;
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div class="flex" style="gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
        <i class="fas fa-bars"></i>
      </button>
      <a class="brand" href="#">
        <i class="fas fa-store-alt"></i>
        <span>Nexus<span class="accent">Shop</span></span>
      </a>
    </div>

    <ul class="nav-links">
      <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
    </ul>

    <div class="nav-actions">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search">
        <button id="searchBtn" aria-label="submit search"><i class="fas fa-arrow-right"></i></button>
      </div>
      <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
      <button class="cart-btn" id="cartBtn" aria-label="Cart">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-badge" id="cartCount">0</span>
      </button>
    </div>
  </div>

  <!-- mobile menu -->
  <div class="mobile-menu" id="mobileMenu">
    <div class="container">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
      <a href="#"><i class="fas fa-fire"></i> Trending</a>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <div class="container">
    <div class="hero">
      <div class="hero-content">
        <span class="badge"><i class="fas fa-gift"></i> New winter drop</span>
        <h1>Discover premium <br>essentials</h1>
        <p>Curated style, tech & accessories — made for everyday life. Limited deals inside.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow">Shop now <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
        </div>
      </div>
      <div class="hero-image">
        <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?w=400&auto=format&fit=crop" alt="hero product" />
      </div>
    </div>
  </div>

  <!-- CATEGORIES -->
  <section class="container section" id="categories">
    <div class="section-head">
      <div>
        <h2>Shop by category</h2>
        <span class="muted">Find exactly what you need</span>
      </div>
      <a href="#" class="link-all">All categories <i class="fas fa-arrow-right"></i></a>
    </div>
    <div class="categories-grid" id="categoriesGrid"></div>
  </section>

  <!-- PRODUCTS -->
  <section class="container section" id="products">
    <div class="section-head">
      <div>
        <h2>Trending now</h2>
        <span class="muted">Popular picks this week</span>
      </div>
      <a href="#" class="link-all">View all <i class="fas fa-arrow-right"></i></a>
    </div>
    <div class="products-grid" id="productsGrid"></div>
  </section>

  <!-- DEAL -->
  <section class="container section" id="deals">
    <div class="section-head">
      <div>
        <h2>Flash sale</h2>
        <span class="muted">Limited time, don't miss out</span>
      </div>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=600&auto=format&fit=crop" alt="deal product">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="desc">Ultra‑thin, blazing fast — now with M2 chip.</p>
        <div class="timer-group" id="timerGroup">
          <div class="time-box"><span class="num" id="dealDays">0</span><div class="label">Days</div></div>
          <div class="time-box"><span class="num" id="dealHours">00</span><div class="label">Hours</div></div>
          <div class="time-box"><span class="num" id="dealMinutes">00</span><div class="label">Min</div></div>
          <div class="time-box"><span class="num" id="dealSeconds">00</span><div class="label">Sec</div></div>
        </div>
        <div class="deal-price">
          <span class="current">$999</span>
          <span class="old">$1,199</span>
          <span class="badge-discount">-17%</span>
        </div>
        <div class="stock-info"><i class="fas fa-box"></i> Only <strong>12</strong> items left</div>
        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="container section">
    <div class="section-head">
      <div>
        <h2>Real reviews</h2>
        <span class="muted">What our customers say</span>
      </div>
    </div>
    <div class="testimonials-scroll" id="testimonials">
      <div class="testi-card">
        <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>“Absolutely love the quality and fast delivery. My new favorite store.”</p>
        <div class="testi-footer">
          <img class="avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=60&h=60&fit=crop&crop=face" alt="avatar">
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:13px;">Verified buyer</div></div>
        </div>
      </div>
      <div class="testi-card">
        <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>“Great selection and the checkout was smooth. Will shop again.”</p>
        <div class="testi-footer">
          <img class="avatar" src="https://images.unsplash.com/photo-1546456073-6712f79251bb?w=60&h=60&fit=crop&crop=face" alt="avatar">
          <div><strong>Michael Lee</strong><div class="muted" style="font-size:13px;">Frequent buyer</div></div>
        </div>
      </div>
      <div class="testi-card">
        <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>“Incredible customer support and the products are top-tier.”</p>
        <div class="testi-footer">
          <img class="avatar" src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=60&h=60&fit=crop&crop=face" alt="avatar">
          <div><strong>James Park</strong><div class="muted" style="font-size:13px;">Top contributor</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="container section">
    <div class="newsletter-box">
      <h3>Stay in the loop</h3>
      <p>Subscribe for exclusive offers & early access</p>
      <form id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required>
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
        <div class="brand"><i class="fas fa-store-alt"></i> Nexus<span class="accent">Shop</span></div>
        <p class="muted" style="margin-top:8px;">Modern e‑commerce demo built with care.</p>
        <div class="footer-socials">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="footer-links">
        <div><h5>Company</h5><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
        <div><h5>Support</h5><a href="#">Help Center</a><a href="#">Shipping</a><a href="#">Contact</a></div>
      </div>
    </div>
    <div class="copy">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
  // ---------- DATA ----------
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories',
