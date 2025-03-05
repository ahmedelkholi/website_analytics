<?php
include_once "conf/db.php";
include_once "layouts/header.php";
?>

<style>
    /* Modern Dark Theme */
    body {
        background-color: #121212;
        color: #e0e0e0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        line-height: 1.6;
    }

    .inputs_pdf {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 20px;
        max-width: 600px;
        margin: 15vh auto;
        padding: 2rem;
        background-color: #1e1e1e;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.5);
    }

    .inputs_pdf h2 {
        font-size: 2rem;
        font-weight: 600;
        color: #bb86fc;
        margin-bottom: 1.5rem;
    }

    .inputs_pdf label {
        font-size: 1rem;
        color: #bdbdbd;
        margin-bottom: 0.5rem;
    }

    .inputs_pdf input {
        width: 100%;
        padding: 0.8rem;
        margin-bottom: 1.2rem;
        border: 1px solid #444;
        border-radius: 8px;
        background-color: #2a2a2a;
        color: #e0e0e0;
        font-size: 1rem;
        transition: background-color 0.3s ease;
    }

    .inputs_pdf input:focus {
        background-color: #333;
        outline: none;
    }

    .inputs_pdf button {
        padding: 0.8rem 1.5rem;
        background-color: #bb86fc;
        color: white;
        font-size: 1.2rem;
        font-weight: 600;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .inputs_pdf button:hover {
        background-color: #9c27b0;
    }

    .inputs_pdf .text-blue-400 {
        color: #bb86fc;
        text-decoration: none;
        transition: color 0.3s ease;
        font-size: 1.2rem;
    }

    .inputs_pdf .text-blue-400:hover {
        color: #9c27b0;
    }
</style>

<div class="inputs_pdf ">
    <h2>Générer un PDF d'analyse de site</h2>

    <form action="traitement.php" method="POST">
        <div>
            <label for="website_url">URL du site web</label>
            <input type="url" id="website_url" name="website_url" placeholder="Entrez l'URL de votre site" required>
        </div>

        <div>
            <label for="pagespeed_api_key">Clé API de PageSpeed Insights</label>
            <input type="text" id="pagespeed_api_key" name="pagespeed_api_key" placeholder="Entrez la clé API de PageSpeed" required>
        </div>

        <div>
            <label for="search_console_api_key">Clé API de Google Search Console</label>
            <input type="text" id="search_console_api_key" name="search_console_api_key" placeholder="Entrez la clé API de Search Console" required>
        </div>

        <div>
            <label for="analytics_api_key">Clé API de Google Analytics</label>
            <input type="text" id="analytics_api_key" name="analytics_api_key" placeholder="Entrez la clé API de Google Analytics" required>
        </div>

        <button type="submit">Générer le PDF</button>
    </form>


</div>

<?php
include_once "layouts/footer.php";
?>