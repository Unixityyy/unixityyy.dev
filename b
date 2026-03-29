:root {
    --bg-deep: #05020a;
    --bg-mid: #0f090f;
    --bg-regular: #1a082e;
    --bg-surface: #0d0916;
    --accent-glow: #6236ff;
    --text-primary: #d1c4e9;
    --text-secondary: #827799;
}

body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    color: var(--text-primary);
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 100vh;

    background: linear-gradient(-45deg, var(--bg-deep), var(--bg-mid), var(--bg-regular), var(--bg-deep));
    background-size: 400% 400%;
    animation: gradientShift 15s ease infinite;
}

@keyframes gradientShift {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

.hero {
    text-align: center;
    padding: 60px 20px;
}

.hero h1 {
    font-size: 3rem;
    margin: 0;
    color: var(--accent-glow);
    text-shadow: 0 0 20px rgba(98, 54, 255, 0.3);
}

.hero p {
    color: var(--text-secondary);
}

.container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 20px;
    width: 90%;
    max-width: 1100px;
    padding-bottom: 50px;
}

.card {
    background-color: var(--bg-surface);
    padding: 24px;
    border-radius: 12px;
    border: 1px solid rgba(98, 54, 255, 0.15);
    transition: transform 0.2s ease, border-color 0.2s ease, box-shadow 0.2s ease;
    display: flex;
    flex-direction: column;
}

.card:hover {
    transform: translateY(-5px);
    border-color: var(--accent-glow);
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
}

.card h3 {
    margin-top: 0;
    color: var(--accent-glow);
}

.card p {
    line-height: 1.6;
    color: var(--text-secondary);
    font-size: 0.95rem;
}

.tag {
    display: inline-block;
    background: rgba(98, 54, 255, 0.1);
    color: var(--accent-glow);
    padding: 4px 10px;
    border-radius: 6px;
    font-size: 0.75rem;
    font-weight: bold;
    text-transform: uppercase;
    width: fit-content;
    margin-top: 15px;
}

.btn {
    text-decoration: none;
    background-color: var(--accent-glow);
    color: white;
    padding: 10px 20px;
    border-radius: 8px;
    font-weight: bold;
    font-size: 0.9rem;
    text-align: center;
    transition: background 0.2s ease, box-shadow 0.2s ease;
    margin-top: auto;
}

.btn:hover {
    background-color: #7c4dff;
    box-shadow: 0 0 15px rgba(98, 54, 255, 0.5);
}