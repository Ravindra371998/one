<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nexus · Warm & Friendly</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Nunito', sans-serif;
      background: #faf6f0;
      color: #2d1b0e;
      padding: 20px;
    }
    .container {
      max-width: 1320px;
      margin: 0 auto;
    }

    /* header - warm & friendly */
    .header {
      background: #ffffff;
      border-radius: 28px;
      padding: 14px 28px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 14px;
      box-shadow: 0 4px 20px rgba(180, 120, 80, 0.06);
      border: 1px solid #f0e4d8;
      margin-bottom: 28px;
    }
    .brand {
      font-weight: 800;
      font-size: 24px;
      display: flex;
      align-items: center;
      gap: 10px;
      color: #2d1b0e;
      text-decoration: none;
    }
    .brand i { color: #e07c4a; font-size: 28px; }
    .brand span { color: #e07c4a; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .search-box {
      display: flex;
      align-items: center;
      background: #f5ede6;
      border-radius: 60px;
      padding: 2px 2px 2px 18px;
      border: 1px solid transparent;
      transition: 0.2s;
    }
    .search-box:focus-within {
      border-color: #e07c4a;
      background: #ffffff;
      box-shadow: 0 0 0 4px rgba(224, 124, 74, 0.10);
    }
    .search-box input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      width: 160px;
      outline: none;
      font-family: inherit;
    }
    .search-box input::placeholder { color: #a68b7a; }
    .search-box button {
      background: #e07c4a;
      border: none;
      width: 42px;
      height: 42px;
      border-radius: 42px;
      color: white;
      cursor: pointer;
      transition: 0.2s;
    }
    .search-box button:hover { background: #cc6a3a; transform: scale(0.95); }

    .cart-btn {
      background: #f5ede6;
      border: none;
      width: 50px;
      height: 50px;
      border-radius: 50px;
      display: grid;
      place-items: center;
      color: #e07c4a;
      font-size: 20px;
      cursor: pointer;
      position: relative;
      transition: 0.2s;
    }
    .cart-btn:hover { background: #ecddd2; }
    .cart-badge {
      position: absolute;
      top: -2px;
      right: -2px;
      background: #e07c4a;
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

    /* layout */
    .dashboard {
      display: grid;
      grid-template-columns: 1fr 340px;
      gap: 28px;
    }
    @media (max-width: 960px) {
      .dashboard { grid-template-columns: 1fr; }
    }

    /* product grid */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
      gap: 22px;
    }
    .product-card {
      background: #ffffff;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 4px 16px rgba(180, 120, 80, 0.04);
      border: 1px solid #f0e4d8;
      transition: 0.25s ease;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 20px 40px rgba(180, 120, 80, 0.08);
      border-color: #e0cbbc;
    }
    .product-card img {
      width: 100%;
      height: 180px;
      object-fit: cover;
      background: #faf6f0;
    }
    .product-body {
      padding: 14px 14px 6px;
      flex: 1;
    }
    .product-body .title {
      font-weight: 700;
      font-size: 15px;
      margin-bottom: 2px;
      color: #2d1b0e;
    }
    .product-body .category {
      font-size: 12px;
      color: #8b6f5c;
      background: #f5ede6;
      display: inline-block;
      padding: 2px 12px;
      border-radius: 40px;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 8px;
      flex-wrap: wrap;
    }
    .price-current {
      font-weight: 800;
      font-size: 18px;
      color: #2d1b0e;
    }
    .price-old {
      color: #b5957e;
      text-decoration: line-through;
      font-size: 14px;
    }
    .rating {
      margin-left: auto;
      color: #f5a623;
      font-size: 13px;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .product-actions {
      padding: 10px 14px 14px;
      display: flex;
      gap: 8px;
    }
    .btn-add {
      flex: 1;
      background: #2d1b0e;
      color: white;
      border: none;
      padding: 10px 8px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 13px;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
      font-family: inherit;
    }
    .btn-add:hover { background: #e07c4a; }
    .btn-buy {
      background: #e07c4a;
      color: white;
      border: none;
      padding: 10px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 13px;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      gap: 6px;
      font-family: inherit;
      white-space: nowrap;
    }
    .btn-buy:hover { background: #cc6a3a; }
    .btn-wish {
      background: transparent;
      border: 1px solid #f0e4d8;
      border-radius: 40px;
      width: 44px;
      display: grid;
      place-items: center;
      cursor: pointer;
      color: #b5957e;
      transition: 0.2s;
    }
    .btn-wish:hover { background: #f5ede6; color: #e07c4a; border-color: #e07c4a; }

    /* sidebar - warm cart */
    .sidebar {
      background: #ffffff;
      border-radius: 28px;
      padding: 24px 20px;
      border: 1px solid #f0e4d8;
      box-shadow: 0 4px 16px rgba(180, 120, 80, 0.04);
      height: fit-content;
      position: sticky;
      top: 20px;
    }
    .sidebar h3 {
      font-size: 20px;
      font-weight: 800;
      display: flex;
      align-items: center;
      gap: 10px;
      margin-bottom: 16px;
      padding-bottom: 12px;
      border-bottom: 2px solid #f5ede6;
      color: #2d1b0e;
    }
    .sidebar h3 i { color: #e07c4a; }

    .cart-item {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 10px 0;
      border-bottom: 1px solid #f5ede6;
    }
    .cart-item img {
      width: 48px;
      height: 48px;
      border-radius: 14px;
      object-fit: cover;
      background: #faf6f0;
    }
    .cart-item .info {
      flex: 1;
    }
    .cart-item .info .name {
      font-weight: 700;
      font-size: 14px;
      color: #2d1b0e;
    }
    .cart-item .info .price {
      font-weight: 700;
      font-size: 14px;
      color: #e07c4a;
    }
    .cart-item .qty {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .cart-item .qty button {
      background: #f5ede6;
      border: none;
      width: 28px;
      height: 28px;
      border-radius: 28px;
      cursor: pointer;
      font-weight: 700;
      transition: 0.2s;
      font-size: 16px;
      color: #2d1b0e;
    }
    .cart-item .qty button:hover { background: #ecddd2; color: #e07c4a; }
    .cart-item .qty span {
      font-weight: 700;
      min-width: 20px;
      text-align: center;
    }
    .cart-item .remove {
      background: transparent;
      border: none;
      color: #b5957e;
      cursor: pointer;
      padding: 4px 8px;
      border-radius: 8px;
      transition: 0.2s;
    }
    .cart-item .remove:hover { background: #fee2e2; color: #e07c4a; }

    .cart-total {
      margin-top: 16px;
      padding-top: 16px;
      border-top: 2px solid #f5ede6;
      display: flex;
      justify-content: space-between;
      font-weight: 800;
      font-size: 20px;
      color: #2d1b0e;
    }
    .checkout-btn {
      width: 100%;
      margin-top: 16px;
      background: #2d1b0e;
      color: white;
      border: none;
      padding: 14px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 16px;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      font-family: inherit;
    }
    .checkout-btn:hover { background: #e07c4a; }
    .empty-cart {
      text-align: center;
      color: #b5957e;
      padding: 24px 0;
    }
    .empty-cart i { font-size: 36px; opacity: 0.3; margin-bottom: 8px; }

    /* toast */
    .toast {
      position: fixed;
      bottom: 24px;
      right: 24px;
      background: #2d1b0e;
      color: white;
      padding: 14px 28px;
      border-radius: 60px;
      font-weight: 600;
      box-shadow: 0 8px 32px rgba(45, 27, 14, 0.15);
      opacity: 0;
      transform: translateY(20px);
      transition: 0.3s ease;
      pointer-events: none;
      z-index: 99;
      font-family: inherit;
    }
    .toast.show {
      opacity: 1;
      transform: translateY(0);
    }

    @media (max-width: 600px) {
      .header { padding: 12px 16px; }
      .search-box input { width: 110px; }
      .product-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 420px) {
      .product-grid { grid-template-columns: 1fr; }
    }
  </style>
</head>
<body>

<div class="container">
  <!-- header -->
  <header class="header">
    <a href="#" class="brand"><i class="fas fa-cube"></i> Nexus<span>Shop</span></a>
    <div class="header-actions">
      <div class="search-box">
        <input type="search" id="searchInput" placeholder="Search...">
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <button class="cart-btn" id="cartBtn">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-badge" id="cartCount">0</span>
      </button>
    </div>
  </header>

  <!-- dashboard -->
  <div class="dashboard">
    <!-- products -->
    <section>
      <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:16px;">
        <h2 style="font-weight:800; font-size:24px; color:#2d1b0e;">☕ Handpicked</h2>
        <span style="color:#8b6f5c; font-size:14px;" id="productCount">8 items</span>
      </div>
      <div class="product-grid" id="productsGrid"></div>
    </section>

    <!-- cart sidebar -->
    <aside class="sidebar">
      <h3><i class="fas fa-bag-shopping"></i> Cart</h3>
      <div id="cartItems">
        <div class="empty-cart">
          <i class="fas fa-shopping-bag"></i>
          <p>Your cart is empty</p>
          <span style="font-size:13px;">Add some goodies!</span>
        </div>
      </div>
      <div id="cartFooter" style="display:none;">
        <div class="cart-total">
          <span>Total</span>
          <span id="cartTotal">$0</span>
        </div>
        <button class="checkout-btn" id="checkoutBtn"><i class="fas fa-lock"></i> Checkout</button>
      </div>
    </aside>
  </div>
</div>

<!-- toast -->
<div class="toast" id="toast"></div>

<script>
  // ---------- DATA ----------
  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?w=400&auto=format&fit=crop', category: 'Phones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400&auto=format&fit=crop', category: 'Laptops' },
    { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?w=400&auto=format&fit=crop', category: 'Wearables' },
    { id: 4, title: 'Nike Air Max', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?w=400&auto=format&fit=crop', category: 'Footwear' },
    { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=400&auto=format&fit=crop', category: 'Cameras' },
    { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?w=400&auto=format&fit=crop', category: 'Fragrance' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?w=400&auto=format&fit=crop', category: 'Accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?w=400&auto=format&fit=crop', category: 'Audio' }
  ];

  // ---------- STATE ----------
  let cart = [];

  // DOM
  const productsGrid = document.getElementById('productsGrid');
  const cartItemsEl = document.getElementById('cartItems');
  const cartFooter = document.getElementById('cartFooter');
  const cartTotalEl = document.getElementById('cartTotal');
  const cartCountBadge = document.getElementById('cartCount');
  const toast = document.getElementById('toast');
  const searchInput = document.getElementById('searchInput');

  // ---------- HELPERS ----------
  function showToast(msg) {
    toast.textContent = msg;
    toast.classList.add('show');
    clearTimeout(toast._timeout);
    toast._timeout = setTimeout(() => toast.classList.remove('show'), 2300);
  }

  function updateCartUI() {
    const totalItems = cart.reduce((sum, item) => sum + item.qty, 0);
    cartCountBadge.textContent = totalItems;

    if (cart.length === 0) {
      cartItemsEl.innerHTML = `<div class="empty-cart"><i class="fas fa-shopping-bag"></i><p>Your cart is empty</p><span style="font-size:13px;">Add some goodies!</span></div>`;
      cartFooter.style.display = 'none';
      return;
    }

    cartFooter.style.display = 'block';
    let html = '';
    let total = 0;
    cart.forEach((item, idx) => {
      total += item.price * item.qty;
      html += `
        <div class="cart-item">
          <img src="${item.img}" alt="${item.title}">
          <div class="info">
            <div class="name">${item.title}</div>
            <div class="price">$${(item.price * item.qty).toFixed(0)}</div>
          </div>
          <div class="qty">
            <button data-idx="${idx}" data-action="dec">−</button>
            <span>${item.qty}</span>
            <button data-idx="${idx}" data-action="inc">+</button>
          </div>
          <button class="remove" data-idx="${idx}" data-action="remove"><i class="fas fa-trash-alt"></i></button>
        </div>
      `;
    });
    cartItemsEl.innerHTML = html;
    cartTotalEl.textContent = `$${total.toFixed(0)}`;

    // cart controls
    document.querySelectorAll('.cart-item button').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const idx = parseInt(btn.dataset.idx);
        const action = btn.dataset.action;
        if (action === 'inc') cart[idx].qty += 1;
        else if (action === 'dec') {
          if (cart[idx].qty > 1) cart[idx].qty -= 1;
          else cart.splice(idx, 1);
        } else if (action === 'remove') cart.splice(idx, 1);
        updateCartUI();
        renderProducts(PRODUCTS);
      });
    });
  }

  // ---------- RENDER PRODUCTS ----------
  function renderProducts(list) {
    productsGrid.innerHTML = '';
    list.forEach(p => {
      const inCart = cart.find(item => item.id === p.id);
      const qty = inCart ? inCart.qty : 0;

      const card = document.createElement('div');
      card.className = 'product-card';
      card.innerHTML = `
        <img src="${p.img}" alt="${p.title}" loading="lazy">
        <div class="product-body">
          <div class="title">${p.title}</div>
          <span class="category">${p.category}</span>
          <div class="price-row">
            <span class="price-current">$${p.price}</span>
            ${p.oldPrice ? `<span class="price-old">$${p.oldPrice}</span>` : ''}
            <span class="rating"><i class="fas fa-star"></i> ${p.rating}</span>
          </div>
        </div>
        <div class="product-actions">
          <button class="btn-add" data-id="${p.id}">
            ${qty > 0 ? `<i class="fas fa-check"></i> ${qty} in cart` : `<i class="fas fa-cart-plus"></i> Add`}
          </button>
          <button class="btn-buy" data-id="${p.id}"><i class="fas fa-bolt"></i> Buy</button>
          <button class="btn-wish" aria-label="wishlist"><i class="far fa-heart"></i></button>
        </div>
      `;
      productsGrid.appendChild(card);
    });

    // add
    document.querySelectorAll('.btn-add').forEach(btn => {
      btn.addEventListener('click', () => {
        const id = parseInt(btn.dataset.id);
        const product = PRODUCTS.find(p => p.id === id);
        if (!product) return;
        const existing = cart.find(item => item.id === id);
        if (existing) existing.qty += 1;
        else cart.push({ ...product, qty: 1 });
        updateCartUI();
        renderProducts(PRODUCTS);
        showToast(`🛒 ${product.title} added`);
      });
    });

    // buy
    document.querySelectorAll('.btn-buy').forEach(btn => {
      btn.addEventListener('click', () => {
        const id = parseInt(btn.dataset.id);
        const product = PRODUCTS.find(p => p.id === id);
        if (!product) return;
        const existing = cart.find(item => item.id === id);
        if (existing) existing.qty += 1;
        else cart.push({ ...product, qty: 1 });
        updateCartUI();
        renderProducts(PRODUCTS);
        showToast(`⚡ ${product.title} ready for checkout!`);
        document.querySelector('.sidebar').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
    });
  }

  // ---------- SEARCH ----------
  function handleSearch() {
    const q = searchInput.value.trim().toLowerCase();
    if (!q) {
      renderProducts(PRODUCTS);
      document.getElementById('productCount').textContent = `${PRODUCTS.length} items`;
      return;
    }
    const filtered = PRODUCTS.filter(p => 
      p.title.toLowerCase().includes(q) || 
      p.category.toLowerCase().includes(q)
    );
    renderProducts(filtered);
    document.getElementById('productCount').textContent = `${filtered.length} items`;
  }

  document.getElementById('searchBtn').addEventListener('click', handleSearch);
  searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') handleSearch(); });

  // ---------- CHECKOUT ----------
  document.getElementById('checkoutBtn').addEventListener('click', () => {
    if (cart.length === 0) { showToast('Your cart is empty!'); return; }
    const total = cart.reduce((sum, item) => sum + item.price * item.qty, 0);
    showToast(`✅ Order placed! Total: $${total.toFixed(0)}`);
    cart = [];
    updateCartUI();
    renderProducts(PRODUCTS);
  });

  // ---------- INIT ----------
  renderProducts(PRODUCTS);
  updateCartUI();
  document.getElementById('productCount').textContent = `${PRODUCTS.length} items`;
</script>

</body>
</html>
