<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
<title>Nemesis Studios</title>
<meta name="description" content="Nemesis Studios — independent game development studio.">
<link rel="icon" href="https://raw.githubusercontent.com/HS1HYDRAX7/NS-SITE/main/assets/images/logo/NS%20icon.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@500;600;700&family=Manrope:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<style>

:root{
  --red-1:#ff3b3f;
  --red-2:#ff6a4d;
  --red-3:#c40f2e;
  --red-glow: 255,59,63;
  --glass-fill: rgba(255,255,255,0.08);
  --glass-fill-strong: rgba(255,255,255,0.14);
  --glass-border: rgba(255,255,255,0.35);
  --glass-sheen: rgba(255,255,255,0.55);
  --bg-1:#050810;
  --bg-2:#0c1522;
  --bg-3:#160a12;
  --text-1:#f3f6fb;
  --text-2:#b9c4d4;
  --shadow-deep: 0 20px 60px rgba(0,0,0,0.45);

  --state-stable:#33d17a;
  --state-unstable:#ff3b3f;
  --state-build:#3aa7ff;
  --state-updating:#ffcc33;
}

@media (prefers-color-scheme: light){
  :root{
    --glass-fill: rgba(255,255,255,0.45);
    --glass-fill-strong: rgba(255,255,255,0.65);
    --glass-border: rgba(255,255,255,0.7);
    --glass-sheen: rgba(255,255,255,0.85);
    --bg-1:#eaf1fb;
    --bg-2:#fdf1f0;
    --bg-3:#f5e6ea;
    --text-1:#1a1420;
    --text-2:#5a5560;
    --shadow-deep: 0 20px 50px rgba(150,40,50,0.12);
  }
}

*{box-sizing:border-box;}
html,body{margin:0;padding:0;}
body{
  font-family:'Manrope', sans-serif;
  background:
    radial-gradient(1200px 700px at 85% -10%, rgba(var(--red-glow),0.25), transparent 60%),
    radial-gradient(900px 600px at 10% 110%, rgba(58,167,255,0.10), transparent 60%),
    linear-gradient(160deg, var(--bg-1), var(--bg-2) 45%, var(--bg-3));
  color:var(--text-1);
  min-height:100vh;
  overflow-x:hidden;
  position:relative;
  transition:background 0.6s ease, color 0.6s ease;
}

h1,h2,h3,.brand-word{
  font-family:'Rajdhani', 'Manrope', sans-serif;
  font-weight:700;
  letter-spacing:0.01em;
}

::selection{background:rgba(var(--red-glow),0.35);}

#shapes-field{
  position:fixed;
  inset:0;
  overflow:hidden;
  z-index:0;
  pointer-events:none;
}
.shape{
  position:absolute;
  top:-140px;
  opacity:0.5;
  background:linear-gradient(135deg, rgba(var(--red-glow),0.35), rgba(255,255,255,0.06));
  border:1px solid rgba(255,255,255,0.25);
  backdrop-filter:blur(2px);
  animation-name:fall;
  animation-timing-function:linear;
  animation-iteration-count:infinite;
}
.shape.circle{border-radius:50%;}
.shape.rrect{border-radius:22%;}
.shape.square{border-radius:18%;}
.shape.tri{
  background:none;
  border:none;
  width:0;
  height:0;
  opacity:0.4;
}
.shape.tri::before{
  content:'';
  position:absolute;
  inset:0;
  clip-path:polygon(50% 0%, 100% 100%, 0% 100%);
  background:linear-gradient(160deg, rgba(var(--red-glow),0.4), rgba(255,255,255,0.08));
  border-radius:14%;
}

@keyframes fall{
  0%{transform:translateY(-10vh) translateX(0) rotate(0deg);}
  100%{transform:translateY(115vh) translateX(var(--drift,40px)) rotate(360deg);}
}

@media (prefers-reduced-motion: reduce){
  .shape{animation:none; display:none;}
}

.container{
  max-width:1280px;
  margin:0 auto;
  padding:0 32px;
  position:relative;
  z-index:2;
}

.glass{
  background:var(--glass-fill);
  border:1px solid var(--glass-border);
  border-radius:26px;
  backdrop-filter:blur(22px) saturate(160%);
  -webkit-backdrop-filter:blur(22px) saturate(160%);
  box-shadow:var(--shadow-deep), inset 0 1px 0 var(--glass-sheen), inset 0 0 40px rgba(255,255,255,0.03);
  position:relative;
}
.glass::after{
  content:'';
  position:absolute;
  top:0;left:0;right:0;
  height:45%;
  border-radius:26px 26px 60% 60% / 26px 26px 100% 100%;
  background:linear-gradient(180deg, rgba(255,255,255,0.16), rgba(255,255,255,0));
  pointer-events:none;
}

header{
  position:sticky;
  top:0;
  z-index:50;
  padding:18px 0;
}
.nav-glass{
  display:flex;
  align-items:center;
  justify-content:space-between;
  padding:12px 24px;
  border-radius:20px;
}
.brand{
  display:flex;
  align-items:center;
  gap:12px;
  font-size:20px;
}
.brand img{
  width:40px;
  height:40px;
  border-radius:12px;
  object-fit:cover;
  box-shadow:0 4px 14px rgba(var(--red-glow),0.4);
}
nav ul{
  list-style:none;
  display:flex;
  gap:28px;
  margin:0;
  padding:0;
}
nav a{
  color:var(--text-2);
  text-decoration:none;
  font-weight:600;
  font-size:15px;
  transition:color 0.25s ease;
}
nav a:hover, nav a:focus-visible{color:var(--red-1);}

.hero{
  padding:120px 0 80px;
  display:flex;
  align-items:center;
  gap:56px;
  min-height:80vh;
}

.hero-logo-wrap{
  flex:0 0 auto;
  display:flex;
  justify-content:flex-end;
  align-items:center;
  width:320px;
  max-width:38vw;
}
.hero-logo-glass{
  padding:22px;
  border-radius:34px;
  animation:float-logo 7s ease-in-out infinite;
}
.hero-logo-glass img{
  width:100%;
  aspect-ratio:1/1;
  object-fit:contain;
  display:block;
  filter:drop-shadow(0 10px 30px rgba(var(--red-glow),0.5));
}
@keyframes float-logo{
  0%,100%{transform:translateY(0px);}
  50%{transform:translateY(-14px);}
}

.btn{
  display:inline-flex;
  align-items:center;
  gap:10px;
  padding:14px 28px;
  border-radius:16px;
  font-weight:700;
  font-size:15px;
  text-decoration:none;
  border:1px solid var(--glass-border);
  cursor:pointer;
  transition:transform 0.2s ease, box-shadow 0.2s ease, background 0.2s ease;
}
.btn-primary{
  background:linear-gradient(135deg, var(--red-1), var(--red-3));
  color:#fff;
  box-shadow:0 10px 30px rgba(var(--red-glow),0.45), inset 0 1px 0 rgba(255,255,255,0.4);
}
.btn-primary:hover{transform:translateY(-3px); box-shadow:0 16px 36px rgba(var(--red-glow),0.55), inset 0 1px 0 rgba(255,255,255,0.5);}
.btn-ghost{
  background:var(--glass-fill);
  color:var(--text-1);
  backdrop-filter:blur(14px);
}
.btn-ghost:hover{transform:translateY(-3px); background:var(--glass-fill-strong);}
.btn:active{transform:translateY(0);}
.btn:focus-visible{outline:2px solid var(--red-1); outline-offset:3px;}

section{padding:70px 0;}
.section-head{margin-bottom:40px; max-width:640px;}
.section-head h2{font-size:clamp(28px,4vw,42px); margin:0 0 12px;}
.section-head p{color:var(--text-2); font-size:16px; line-height:1.6; margin:0;}

#games-grid{
  display:grid;
  grid-template-columns:repeat(auto-fit, minmax(300px, 1fr));
  gap:28px;
}
.game-card{
  border-radius:26px;
  overflow:hidden;
  display:flex;
  flex-direction:column;
  transition:transform 0.35s ease, box-shadow 0.35s ease;
}
.game-card:hover{transform:translateY(-8px);}
.game-cover{
  width:100%;
  aspect-ratio:16/9;
  object-fit:cover;
  display:block;
  border-bottom:1px solid var(--glass-border);
}
.game-body{padding:22px 24px 26px; display:flex; flex-direction:column; gap:14px; flex:1;}
.game-body h3{margin:0; font-size:22px;}
.game-body p{margin:0; color:var(--text-2); font-size:14.5px; line-height:1.55; flex:1;}

.status-row{
  display:flex;
  align-items:center;
  gap:10px;
  flex-wrap:wrap;
}
.pill{
  display:inline-flex;
  align-items:center;
  gap:8px;
  padding:6px 14px;
  border-radius:999px;
  font-size:13px;
  font-weight:700;
  border:1px solid rgba(255,255,255,0.25);
  background:rgba(255,255,255,0.08);
}
.pill .dot{
  width:9px;
  height:9px;
  border-radius:50%;
  box-shadow:0 0 10px currentColor;
  animation:pulse-dot 1.8s ease-in-out infinite;
}
@keyframes pulse-dot{
  0%,100%{opacity:1;}
  50%{opacity:0.4;}
}
.pill.stable{color:var(--state-stable);}
.pill.unstable{color:var(--state-unstable);}
.pill.build{color:var(--state-build);}
.pill.updating{color:var(--state-updating);}
.version-tag{
  font-family:'Rajdhani', sans-serif;
  font-weight:700;
  font-size:14px;
  color:var(--text-1);
  opacity:0.85;
}

.game-actions{display:flex; gap:10px; flex-wrap:wrap; margin-top:6px;}
.game-actions .btn{padding:10px 18px; font-size:13.5px;}

.download-panel{
  display:none;
  flex-direction:column;
  gap:14px;
  padding:20px 24px;
  border-top:1px solid var(--glass-border);
  animation:reveal 0.4s ease;
}
.download-panel.open{display:flex;}
@keyframes reveal{
  from{opacity:0; transform:translateY(-8px);}
  to{opacity:1; transform:translateY(0);}
}
.download-panel .row{display:flex; gap:10px; flex-wrap:wrap;}
.versions-list{
  display:none;
  flex-direction:column;
  gap:8px;
  max-height:220px;
  overflow-y:auto;
  padding-right:4px;
}
.versions-list.open{display:flex;}
.version-item{
  display:flex;
  align-items:center;
  justify-content:space-between;
  gap:10px;
  padding:10px 14px;
  border-radius:14px;
  background:rgba(255,255,255,0.06);
  border:1px solid rgba(255,255,255,0.15);
  font-size:13.5px;
}
.version-item a{color:var(--red-2); text-decoration:none; font-weight:700;}
.version-item a:hover{text-decoration:underline;}

.add-game-slot{
  border-radius:26px;
  border:2px dashed rgba(255,255,255,0.25);
  display:flex;
  align-items:center;
  justify-content:center;
  min-height:220px;
  color:var(--text-2);
  font-size:14px;
  text-align:center;
  padding:24px;
}

.support-section .glass{
  padding:48px;
  display:flex;
  align-items:center;
  justify-content:space-between;
  gap:32px;
  flex-wrap:wrap;
}
.support-copy h2{margin:0 0 10px; font-size:clamp(26px,3.6vw,36px);}
.support-copy p{margin:0; color:var(--text-2); max-width:460px; line-height:1.6;}

footer{
  padding:40px 0 60px;
  text-align:center;
  color:var(--text-2);
  font-size:13.5px;
}

@media (min-width:1600px){
  .container{max-width:1520px;}
  .hero{min-height:70vh;}
}

@media (max-width:900px){
  .hero{flex-direction:column; text-align:center; padding-top:150px;}
  .hero-copy p{margin-left:auto; margin-right:auto;}
  .hero-logo-wrap{width:220px; max-width:60vw; justify-content:center;}
  nav ul{gap:16px;}
  .support-section .glass{flex-direction:column; text-align:center;}
}

@media (max-width:600px){
  .container{padding:0 18px;}
  nav ul{display:none;}
  .hero{padding-top:130px;}
  .hero-copy h1{font-size:38px;}
  section{padding:50px 0;}
}
</style>
</head>
<body>

<div id="shapes-field" aria-hidden="true"></div>

<header>
  <div class="container">
    <div class="nav-glass glass">
      <div class="brand">
        <img src="https://raw.githubusercontent.com/HS1HYDRAX7/NS-SITE/main/assets/images/logo/NS%20icon.png" alt="Nemesis Studios logo" width="1280" height="1280" onerror="this.style.display='none'">
        <span class="brand-word">Nemesis Studios</span>
      </div>
      <nav>
        <ul>
          <li><a href="#games" data-scroll-to="games">Games</a></li>
          <li><a href="#support" data-scroll-to="support">Support us</a></li>
        </ul>
      </nav>
    </div>
  </div>
</header>

<main>
  <section class="hero">
    <div class="container" style="display:flex; align-items:center; gap:56px; flex-wrap:wrap;">
      <div class="hero-copy">
        <h1>We build worlds.<span>Then we break them.</span></h1>
        <p>Nemesis Studios is an independent game development studio crafting original titles from the ground up — built in the open, shipped in pieces, polished over time.</p>
        <div style="display:flex; gap:14px; flex-wrap:wrap;">
          <a href="#games" class="btn btn-primary" data-scroll-to="games">See our games</a>
          <a href="#support" class="btn btn-ghost" data-scroll-to="support">Support the studio</a>
        </div>
      </div>
        </div>
      </div>
    </div>
  </section>

  <section id="games">
    <div class="container">
      <div class="section-head">
        <h2>Currently in development</h2>
        <p>Two projects, two very different worlds. Track their status and grab the latest builds as they roll out.</p>
      </div>

      <div id="games-grid">

        <article class="game-card glass" data-game="bloodtubbies">
          <img class="game-cover" src="https://raw.githubusercontent.com/HS1HYDRAX7/NS-SITE/main/assets/images/games/bloodtubbies.png" alt="Bloodtubbies cover art">
          <div class="game-body">
            <h3>Bloodtubbies</h3>
            <p>A twisted take on childhood nostalgia. Expect chaos, gore-soaked charm and a soundtrack that will not leave your head.</p>
            <div class="status-row">
              <span class="pill unstable"><span class="dot"></span>Unstable</span>
              <span class="version-tag">V0.0.1</span>
            </div>
            <div class="game-actions">
              <button class="btn btn-primary toggle-download" type="button" aria-expanded="false">Get build</button>
            </div>
            <div class="download-panel">
              <div class="row">
                <a class="btn btn-primary" href="https://github.com/HS1HYDRAX7/NS-SITE/releases/latest" target="_blank" rel="noopener">Download latest (.apk)</a>
                <button class="btn btn-ghost toggle-versions" type="button" aria-expanded="false">Older versions</button>
              </div>
              <div class="versions-list">
                <div class="version-item"><span>V0.0.1 — Unstable</span><a href="https://github.com/HS1HYDRAX7/NS-SITE/releases" target="_blank" rel="noopener">Download</a></div>
              </div>
            </div>
          </div>
        </article>

        <article class="game-card glass" data-game="liminality">
          <img class="game-cover" src="https://raw.githubusercontent.com/HS1HYDRAX7/NS-SITE/main/assets/images/games/liminality.png" alt="Liminality cover art">
          <div class="game-body">
            <h3>Liminality</h3>
            <p>Explore endless backrooms of half-remembered places. Atmospheric, unsettling and deliberately disorienting exploration.</p>
            <div class="status-row">
              <span class="pill unstable"><span class="dot"></span>Unstable</span>
              <span class="version-tag">V0.0.1</span>
            </div>
            <div class="game-actions">
              <button class="btn btn-primary toggle-download" type="button" aria-expanded="false">Get build</button>
            </div>
            <div class="download-panel">
              <div class="row">
                <a class="btn btn-primary" href="https://github.com/HS1HYDRAX7/NS-SITE/releases/latest" target="_blank" rel="noopener">Download latest (.apk)</a>
                <button class="btn btn-ghost toggle-versions" type="button" aria-expanded="false">Older versions</button>
              </div>
              <div class="versions-list">
                <div class="version-item"><span>V0.0.1 — Unstable</span><a href="https://github.com/HS1HYDRAX7/NS-SITE/releases" target="_blank" rel="noopener">Download</a></div>
              </div>
            </div>
          </div>
        </article>

        <!-- TEMPLATE_GAME_CARD_START
        <article class="game-card glass" data-game="game-id">
          <img class="game-cover" src="COVER_IMAGE_URL" alt="GAME_NAME cover art">
          <div class="game-body">
            <h3>GAME_NAME</h3>
            <p>GAME_DESCRIPTION</p>
            <div class="status-row">
              <span class="pill stable"><span class="dot"></span>Stable</span>
              <span class="version-tag">V1.0.0</span>
            </div>
            <div class="game-actions">
              <button class="btn btn-primary toggle-download" type="button" aria-expanded="false">Get build</button>
            </div>
            <div class="download-panel">
              <div class="row">
                <a class="btn btn-primary" href="LATEST_RELEASE_URL" target="_blank" rel="noopener">Download latest (.apk)</a>
                <button class="btn btn-ghost toggle-versions" type="button" aria-expanded="false">Older versions</button>
              </div>
              <div class="versions-list">
                <div class="version-item"><span>V1.0.0 — Stable</span><a href="RELEASE_URL" target="_blank" rel="noopener">Download</a></div>
              </div>
            </div>
          </div>
        </article>
        TEMPLATE_GAME_CARD_END -->

        <div class="add-game-slot">
          More projects are on the way. New cards get added here as they enter development.
        </div>

      </div>
    </div>
  </section>

  <section id="support" class="support-section">
    <div class="container">
      <div class="glass">
        <div class="support-copy">
          <h2>Want to help us build?</h2>
          <p>We're always looking for artists, testers, writers and developers who want to get involved. Fill out the form and we'll get back to you.</p>
        </div>
        <a class="btn btn-primary" href="https://tally.so/r/44VKeo" target="_blank" rel="noopener">Join the project</a>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <p>&copy; 2026 Nemesis Studios. All rights reserved.</p>
  </div>
</footer>

<script>
(function(){
  function easeInOutQuart(t){
    return t < 0.5 ? 8*t*t*t*t : 1 - Math.pow(-2*t+2, 4) / 2;
  }

  function smoothScrollTo(targetY, duration){
    var startY = window.scrollY || window.pageYOffset;
    var distance = targetY - startY;
    var startTime = null;

    function step(timestamp){
      if (startTime === null) startTime = timestamp;
      var elapsed = timestamp - startTime;
      var progress = Math.min(elapsed / duration, 1);
      var eased = easeInOutQuart(progress);
      window.scrollTo(0, startY + distance * eased);
      if (progress < 1){
        requestAnimationFrame(step);
      }
    }
    requestAnimationFrame(step);
  }

  document.querySelectorAll('a[href^="#"]').forEach(function(link){
    link.addEventListener('click', function(e){
      var id = link.getAttribute('href').slice(1);
      var target = document.getElementById(id);
      if (!target) return;
      e.preventDefault();
      var headerOffset = 100;
      var targetY = target.getBoundingClientRect().top + window.scrollY - headerOffset;
      var distance = Math.abs(targetY - window.scrollY);
      var duration = Math.min(1400, Math.max(600, distance * 0.6));
      smoothScrollTo(targetY, duration);
    });
  });
})();

(function(){
  var field = document.getElementById('shapes-field');
  var shapeTypes = ['circle','rrect','square','tri'];
  var count = window.innerWidth < 600 ? 10 : 18;

  for (var i = 0; i < count; i++){
    var el = document.createElement('div');
    var type = shapeTypes[Math.floor(Math.random() * shapeTypes.length)];
    el.className = 'shape ' + type;

    var size = 30 + Math.random() * 90;
    el.style.width = size + 'px';
    el.style.height = size + 'px';
    el.style.left = (Math.random() * 100) + 'vw';

    var duration = 18 + Math.random() * 22;
    el.style.animationDuration = duration + 's';
    el.style.animationDelay = (-Math.random() * duration) + 's';
    el.style.setProperty('--drift', (Math.random() * 160 - 80) + 'px');

    if (type === 'tri'){
      el.style.borderLeft = (size/2) + 'px solid transparent';
      el.style.borderRight = (size/2) + 'px solid transparent';
      el.style.borderBottom = size + 'px solid rgba(255,59,63,0.28)';
      el.style.width = '0';
      el.style.height = '0';
    }

    field.appendChild(el);
  }
})();

function easeInOutCubic(t){
  return t < 0.5 ? 4 * t * t * t : 1 - Math.pow(-2 * t + 2, 3) / 2;
}

function smoothScrollTo(targetY, duration){
  var startY = window.scrollY || window.pageYOffset;
  var distance = targetY - startY;
  var startTime = null;

  function step(timestamp){
    if (startTime === null) startTime = timestamp;
    var elapsed = timestamp - startTime;
    var progress = Math.min(elapsed / duration, 1);
    var eased = easeInOutCubic(progress);
    window.scrollTo(0, startY + distance * eased);
    if (progress < 1){
      requestAnimationFrame(step);
    }
  }
  requestAnimationFrame(step);
}

document.querySelectorAll('[data-scroll-to]').forEach(function(link){
  link.addEventListener('click', function(e){
    e.preventDefault();
    var target = document.getElementById(link.getAttribute('data-scroll-to'));
    if (!target) return;
    var headerOffset = 96;
    var targetY = target.getBoundingClientRect().top + window.pageYOffset - headerOffset;
    var distance = Math.abs(targetY - window.scrollY);
    var duration = Math.min(1600, Math.max(700, distance * 0.9));
    smoothScrollTo(targetY, duration);
  });
});

document.querySelectorAll('.toggle-download').forEach(function(btn){
  btn.addEventListener('click', function(){
    var panel = btn.closest('.game-body').querySelector('.download-panel');
    var isOpen = panel.classList.toggle('open');
    btn.setAttribute('aria-expanded', isOpen);
    btn.textContent = isOpen ? 'Hide options' : 'Get build';
  });
});

document.querySelectorAll('.toggle-versions').forEach(function(btn){
  btn.addEventListener('click', function(){
    var list = btn.closest('.download-panel').querySelector('.versions-list');
    var isOpen = list.classList.toggle('open');
    btn.setAttribute('aria-expanded', isOpen);
    btn.textContent = isOpen ? 'Hide versions' : 'Older versions';
  });
});

window.NemesisStudios = {
  markFinished: function(gameId){
    var card = document.querySelector('[data-game="' + gameId + '"]');
    if (!card) return;
    var panel = card.querySelector('.download-panel');
    var toggleBtn = card.querySelector('.toggle-download');
    panel.classList.add('open');
    toggleBtn.setAttribute('aria-expanded', 'true');
    toggleBtn.textContent = 'Hide options';
  },
  setStatus: function(gameId, status, version){
    var card = document.querySelector('[data-game="' + gameId + '"]');
    if (!card) return;
    var pill = card.querySelector('.pill');
    var versionTag = card.querySelector('.version-tag');
    var map = {stable:'Stable', unstable:'Unstable', build:'Build', updating:'Updating'};
    pill.className = 'pill ' + status;
    pill.innerHTML = '<span class="dot"></span>' + (map[status] || status);
    if (version) versionTag.textContent = version;
  }
};
</script>

</body>
</html>
