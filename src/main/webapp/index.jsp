<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · Dashboard</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Inter', sans-serif;
      background: #f4f6fa;
      color: #0b1a2e;
      line-height: 1.5;
      padding: 20px;
    }
    .container {
      max-width: 1300px;
      margin: 0 auto;
    }

    /* header */
    header {
      background: white;
      border-radius: 24px;
      padding: 16px 28px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 16px;
      box-shadow: 0 4px 16px rgba(0,0,0,0.02);
      margin-bottom: 32px;
      border: 1px solid #eef2f6;
    }
    .brand {
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 10px;
      color: #0b1a2e;
      text-decoration: none;
    }
    .brand i { color: #6366f1; font-size: 26px; }
    .brand span { color: #6366f1; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .search-box {
      display: flex;
      align-items: center;
      background: #f1f4f9;
      border-radius: 60px;
      padding: 4px 4px 4px 18px;
      border: 1px solid transparent;
      transition: 0.2s;
    }
    .search-box:focus-within {
      border-color: #6366f1;
      background: white;
      box-shadow: 0 0 0 4px rgba(99,102,241,0.08);
    }
    .search-box input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      width: 180px;
      outline: none;
      font-family: inherit;
    }
    .search-box input::placeholder { color: #8b95a9; }
    .search-box button {
      background: #6366f1;
      border: none;
      width: 40px;
      height: 40px;
      border-radius: 40px;
      color: white;
      cursor: pointer;
      transition: 0.2s;
    }
    .search-box button:hover { background: #4f46e5; transform: scale(0.96); }

    .cart-btn {
      background: #eef2ff;
      border: none;
      width: 48px;
      height: 48px;
      border-radius: 48px;
      display: grid;
      place-items: center;
      color: #6366f1;
      font-size: 20px;
      cursor: pointer;
      position: relative;
      transition: 0.2s;
    }
    .cart-btn:hover { background: #dbe1ff; }
    .cart-badge {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #ef4444;
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

    /* dashboard grid */
    .dashboard-grid {
      display: grid;
      grid-template-columns: 1fr 320px;
      gap: 28px;
    }
    @media (max-width: 960px) {
      .dashboard-grid { grid-template-columns: 1fr; }
    }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: white;
      border-radius: 20px;
      overflow: hidden;
      box-shadow: 0 4px 16px rgba(0,0,0,0.02);
      border: 1px solid #eef2f6;
      transition: 0.25s ease;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 16px 40px rgba(0,0,0,0.04);
      border-color: #d5dbe6;
    }
    .product-card img {
      width: 100%;
      height: 190px;
      object-fit: cover;
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
    .product-body .category {
      font-size: 12px;
      color: #6b7a93;
      background: #f1f4f9;
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
      font-weight: 700;
      font-size: 19px;
    }
    .price-old {
      color: #8b95a9;
      text-decoration: line-through;
      font-size: 14px;
    }
    .rating {
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
      background: #0b1a2e;
      color: white;
      border: none;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 13px;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .btn-add:hover { background: #6366f1; }
    .btn-buy {
      background: #6366f1;
      color: white;
      border: none;
      padding: 10px 16px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 13px;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      gap: 6px;
      white-space: nowrap;
    }
    .btn-buy:hover { background: #4f46e5; }
    .btn-wish {
      background: transparent;
      border: 1px solid #eef2f6;
      border-radius: 40px;
      width: 44px;
      display: grid;
      place-items: center;
      cursor: pointer;
      color: #8b95a9;
      transition: 0.2s;
    }
    .btn-wish:hover { background: #f1f4f9; color: #ef4444; border-color: #ef4444; }

    /* sidebar cart */
    .sidebar {
      background: white;
      border-radius: 24px;
      padding: 24px 20px;
      border: 1px solid #eef2f6;
      box-shadow: 0 4px 16px rgba(0,0,0,0.02);
      height: fit-content;
      position: sticky;
      top: 20px;
    }
    .sidebar h3 {
      font-size: 18px;
      font-weight: 700;
      display: flex;
      align-items: center;
      gap: 10px;
      margin-bottom: 16px;
      padding-bottom: 12px;
      border-bottom: 1px solid #f1f4f9;
    }
    .cart-item {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 10px 0;
      border-bottom: 1px solid #f1f4f9;
    }
    .cart-item img {
      width: 48px;
      height: 48px;
      border-radius: 12px;
      object-fit: cover;
      background: #f8fafc;
    }
    .cart-item .info {
      flex: 1;
    }
    .cart-item .info .name {
      font-weight: 500;
      font-size: 14px;
    }
    .cart-item .info .price {
      font-weight: 600;
      font-size: 14px;
      color: #0b1a2e;
    }
    .cart-item .qty {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .cart-item .qty button {
      background: #f1f4f9;
      border: none;
      width: 28px;
      height: 28px;
      border-radius: 28px;
      cursor: pointer;
      font-weight: 700;
      transition: 0.2s;
    }
    .cart-item .qty button:hover { background: #dbe1ff; }
    .cart-item .qty span {
      font-weight: 600;
      min-width: 20px;
      text-align: center;
    }
    .cart-item .remove {
      background: transparent;
      border: none;
      color: #8b95a9;
      cursor: pointer;
      padding: 4px 8px;
      border-radius: 8px;
      transition: 0.2s;
    }
    .cart-item .remove:hover { background: #fee2e2; color: #ef4444; }

    .cart-total {
      margin-top: 16px;
      padding-top: 16px;
      border-top: 2px solid #f1f4f9;
      display: flex;
      justify-content: space-between;
      font-weight: 700;
      font-size: 18px;
    }
    .checkout-btn {
      width: 100%;
      margin-top: 16px;
      background: #0b1a2e;
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
    }
    .checkout-btn:hover { background: #6366f1; }
    .empty-cart {
      text-align: center;
      color: #8b95a9;
      padding: 24px 0;
    }
    .empty-cart i { font-size: 32px; opacity: 0.3; margin-bottom: 8px; }

    /* flash message */
    .toast {
      position: fixed;
      bottom: 24px;
      right: 24px;
      background: #0b1a2e;
      color: white;
      padding: 14px 24px;
      border-radius: 60px;
      font-weight: 500;
      box-shadow: 0 8px 32px rgba(0,0,0,0.12);
      opacity: 0;
      transform: translateY(20px);
      transition: 0.3s ease;
      pointer-events: none;
      z-index: 99;
    }
    .toast.show {
      opacity: 1;
      transform: translateY(0);
    }

    @media (max-width: 600px) {
      header { padding: 12px 16px; }
      .search-box input { width: 120px; }
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
  <header>
    <a href="#" class="brand"><i class="fas fa-cube"></i> Nexus<span>Shop</span></a>
    <div class="header-actions">
      <div class="search-box">
        <input type="search" id="searchInput" placeholder="Search products...">
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <button class="cart-btn" id="cartBtn">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-badge" id="cartCount">0</span>
      </button>
    </div>
  </header>

  <!-- dashboard -->
  <div class="dashboard-grid">
    <!-- product grid -->
    <section>
      <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:16px;">
        <h2 style="font-weight:700; font-size:24px;">🛍️ Products</h2>
        <span style="color:#6b7a93; font-size:14px;" id="productCount">8 items</span>
      </div>
      <div class="product-grid" id="productsGrid"></div>
    </section>

    <!-- cart sidebar -->
    <aside class="sidebar">
      <h3><i class="fas fa-bag-shopping" style="color:#6366f1;"></i> Your Cart</h3>
      <div id="cartItems">
        <div class="empty-cart">
          <i class="fas fa-shopping-bag"></i>
          <p>Cart is empty</p>
          <span style="font-size:13px;">Add some items!</span>
        </div>
      </div>
      <div id="cartFooter" style="display:none;">
        <div class="cart-total">
          <span>Total</span>
          <span id="cartTotal">$0</span>
        </div>
        <button class="checkout-btn" id="checkoutBtn"><i class="fas fa-lock"></i> Proceed to Checkout</button>
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
    { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?w=400&auto=format&fit=crop', category: 'Footwear' },
    { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=400&auto=format&fit=crop', category: 'Cameras' },
    { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?w=400&auto=format&fit=crop', category: 'Fragrance' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?w=400&auto=format&fit=crop', category: 'Accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?w=400&auto=format&fit=crop', category: 'Audio' }
  ];

  // ---------- STATE ----------
  let cart = []; // { id, title, price, img, qty }

  // DOM refs
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
    toast._timeout = setTimeout(() => toast.classList.remove('show'), 2200);
  }

  function updateCartUI() {
    // badge
    const totalItems = cart.reduce((sum, item) => sum + item.qty, 0);
    cartCountBadge.textContent = totalItems;

    // render cart items
    if (cart.length === 0) {
      cartItemsEl.innerHTML = `<div class="empty-cart"><i class="fas fa-shopping-bag"></i><p>Cart is empty</p><span style="font-size:13px;">Add some items!</span></div>`;
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

    // attach events
    document.querySelectorAll('.cart-item button').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const idx = parseInt(btn.dataset.idx);
        const action = btn.dataset.action;
        if (action === 'inc') {
          cart[idx].qty += 1;
        } else if (action === 'dec') {
          if (cart[idx].qty > 1) cart[idx].qty -= 1;
          else cart.splice(idx, 1);
        } else if (action === 'remove') {
          cart.splice(idx, 1);
        }
        updateCartUI();
        // re-render products to sync "Add" button states (optional)
        renderProducts(PRODUCTS);
      });
    });
  }

  // ---------- RENDER PRODUCTS ----------
  function renderProducts(list) {
    productsGrid.innerHTML = '';
    list.forEach(p => {
      const inCart = cart.find(item => item.id === p.id);
      const qtyInCart = inCart ? inCart.qty : 0;

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
            <span class="rating"><i class="fas fa-star"></i> ${p.rating} (${p.reviews})</span>
          </div>
        </div>
        <div class="product-actions">
          <button class="btn-add" data-id="${p.id}">
            ${qtyInCart > 0 ? `<i class="fas fa-check"></i> In Cart (${qtyInCart})` : `<i class="fas fa-cart-plus"></i> Add`}
          </button>
          <button class="btn-buy" data-id="${p.id}"><i class="fas fa-bolt"></i> Buy</button>
          <button class="btn-wish" aria-label="wishlist"><i class="far fa-heart"></i></button>
        </div>
      `;
      productsGrid.appendChild(card);
    });

    // attach add & buy events
    document.querySelectorAll('.btn-add').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const id = parseInt(btn.dataset.id);
        const product = PRODUCTS.find(p => p.id === id);
        if (!product) return;
        const existing = cart.find(item => item.id === id);
        if (existing) {
          existing.qty += 1;
        } else {
          cart.push({ ...product, qty: 1 });
        }
        updateCartUI();
        renderProducts(PRODUCTS); // refresh button text
        showToast(`🛒 ${product.title} added to cart`);
      });
    });

    document.querySelectorAll('.btn-buy').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const id = parseInt(btn.dataset.id);
        const product = PRODUCTS.find(p => p.id === id);
        if (!product) return;
        // add to cart then checkout
        const existing = cart.find(item => item.id === id);
        if (existing) {
          existing.qty += 1;
        } else {
          cart.push({ ...product, qty: 1 });
        }
        updateCartUI();
        renderProducts(PRODUCTS);
        showToast(`⚡ ${product.title} added & ready for checkout!`);
        // scroll to cart
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
    if (cart.length === 0) {
      showToast('Your cart is empty!');
      return;
    }
    const total = cart.reduce((sum, item) => sum + item.price * item.qty, 0);
    showToast(`✅ Checkout successful! Total: $${total.toFixed(0)}`);
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
