.<!DOCTYPE html><html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>PreamacyDJ - Discover & Share Music</title>
  <link rel="stylesheet" href="style.css" />
  <script defer src="script.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Inter', sans-serif;
      margin: 0;
      padding: 0;
      background: #f9f9f9;
      color: #333;
    }
    header {
      background: #000;
      color: #fff;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 1rem 2rem;
    }
    .logo {
      font-size: 1.5rem;
      font-weight: 800;
    }
    nav a {
      color: #fff;
      margin-left: 1rem;
      text-decoration: none;
    }
    .hero {
      text-align: center;
      padding: 4rem 2rem;
      background: #111;
      color: #fff;
    }
    .hero button {
      margin-top: 1rem;
      padding: 0.75rem 1.5rem;
      background: #e50914;
      color: #fff;
      border: none;
      cursor: pointer;
      font-size: 1rem;
      border-radius: 5px;
    }
    .music-list, .upload, .charts {
      padding: 2rem;
    }
    .track-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 1rem;
    }
    .track {
      background: #fff;
      padding: 1rem;
      border-radius: 10px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .upload form {
      display: flex;
      flex-direction: column;
      gap: 1rem;
      max-width: 400px;
      margin: auto;
    }
    .upload input, .upload button {
      padding: 0.75rem;
      font-size: 1rem;
    }
    .upload button {
      background: #000;
      color: #fff;
      border: none;
      cursor: pointer;
    }
    footer {
      text-align: center;
      padding: 1rem;
      background: #000;
      color: #fff;
    }
  </style>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      const tracks = [
        { title: "Ocean Vibes", artist: "DJ Aqua" },
        { title: "Mountain Echo", artist: "BeatStone" },
        { title: "Urban Flow", artist: "Riddy" }
      ];const topTracks = [
    "Night Moves - Electra",
    "Deep Bass - Tomzee",
    "Moonlight Drive - Dee9"
  ];

  const trackGrid = document.getElementById('trackGrid');
  tracks.forEach(track => {
    const trackDiv = document.createElement('div');
    trackDiv.className = 'track';
    trackDiv.innerHTML = `<strong>${track.title}</strong><br><em>${track.artist}</em>`;
    trackGrid.appendChild(trackDiv);
  });

  const chartList = document.getElementById('topCharts');
  topTracks.forEach(track => {
    const li = document.createElement('li');
    li.textContent = track;
    chartList.appendChild(li);
  });

  document.getElementById('uploadForm').addEventListener('submit', function (e) {
    e.preventDefault();
    alert('Music uploaded successfully (mock).');
    this.reset();
  });
});

  </script>
</head>
<body>
  <header>
    <div class="logo">PreamacyDJ</div>
    <nav>
      <a href="#discover">Discover</a>
      <a href="#upload">Upload</a>
      <a href="#charts">Top Charts</a>
      <a href="#login">Login</a>
    </nav>
  </header>  <main>
    <section class="hero">
      <h1>Discover & Share Music Worldwide</h1>
      <p>Join the next-generation platform for artists and listeners</p>
      <button onclick="document.getElementById('upload').scrollIntoView()">Upload Now</button>
    </section><section id="discover" class="music-list">
  <h2>New Releases</h2>
  <div class="track-grid" id="trackGrid">
    <!-- Tracks will be injected by JS -->
  </div>
</section>

<section id="upload" class="upload">
  <h2>Upload Your Music</h2>
  <form id="uploadForm">
    <input type="text" placeholder="Track Title" required />
    <input type="text" placeholder="Artist Name" required />
    <input type="file" accept="audio/*" required />
    <button type="submit">Submit</button>
  </form>
</section>

<section id="charts" class="charts">
  <h2>Top Charts</h2>
  <ol id="topCharts">
    <!-- Top tracks injected by JS -->
  </ol>
</section>

  </main>  <footer>
    <p>&copy; 2025 PreamacyDJ. All rights reserved.</p>
  </footer>
</body>
</html>