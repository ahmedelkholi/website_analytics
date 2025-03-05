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

    .main_index {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 80px;
        min-height: 80vh;
        padding: 2rem;
    }

    .intro {
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        gap: 30px;
        width: 100%;
    }

    .intro img {
        width: 45vw; /* Adjust the width of the image */
        height: 64vh; /* Keep the aspect ratio */
        border-radius: 15px;
        transition: transform 0.3s ease;
    }

    .intro img:hover {
        transform: scale(1.05); /* Hover effect */
    }

    .content-box {
        background-color: #1e1e1e;
        padding: 3rem;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.5);
        max-width: 800px;
        width: 100%;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .content-box:hover {
        transform: translateY(-5px);
        box-shadow: 0 12px 25px rgba(0, 0, 0, 0.6);
    }

    .content-box h2 {
        font-size: 2.5rem;
        font-weight: 600;
        margin-bottom: 1.5rem;
        color: #bb86fc;
    }

    .content-box p {
        font-size: 1.1rem;
        margin-bottom: 2rem;
        color: #bdbdbd;
    }

    .content-box ul {
        list-style-type: disc;
        padding-left: 1.5rem;
    }

    .content-box li {
        margin-bottom: 0.8rem;
        color: #cfd8dc;
    }

    a {
        color: #bb86fc;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    a:hover {
        color: #9c27b0;
    }

    /* Full width content box below */
    .full-width-box {
        width: 100%;
    }

    /* Responsive adjustments */
    @media (max-width: 768px) {
        .intro {
            flex-direction: column;
            align-items: center;
        }

        .content-box {
            padding: 2rem;
        }

        .content-box h2 {
            font-size: 2rem;
        }

        .content-box p {
            font-size: 1rem;
        }

        .intro img {
            width: 60vw; /* Adjust image size for smaller screens */
        }
    }
</style>

<div class="main_index">
    <div class="intro">
        <!-- Content box 1 -->
        <div class="content-box">
            <h2 class="text-2xl font-semibold mb-4">Analyse de site Web et amélioration des performances</h2>
            <p class="text-lg mb-4">
                Notre outil vous permet d'analyser les performances de votre site Web en utilisant des services tels que <strong>PageSpeed Insights</strong>, <strong>Google Search Console</strong> et <strong>Google Analytics</strong>. Grâce à ces outils puissants, vous pouvez obtenir des informations détaillées sur la vitesse de votre site, son référencement et son efficacité sur différents appareils.
            </p>
            <p class="text-lg mb-4">
                Nous vous offrons des recommandations pratiques pour améliorer la performance de votre site, optimiser son contenu et offrir une meilleure expérience utilisateur. Que vous soyez un développeur ou un responsable marketing, notre solution vous aide à maximiser les résultats et à garantir la réussite de votre présence en ligne.
            </p>
            <ul class="list-disc pl-5 space-y-2">
                <li>Analyser la vitesse de votre site avec PageSpeed Insights</li>
                <li>Obtenir des données clés avec Google Search Console</li>
                <li>Optimiser les performances à partir de Google Analytics</li>
            </ul>
            <a href="#" class="text-blue-400 hover:text-blue-600 transition duration-300">En savoir plus</a>
        </div>

        <!-- Image -->
        <img src="assets/img/pdf.jpg" alt="Illustration PDF">
    </div>

    <!-- Full Width Content Box for PDF generation -->
    <div class="content-box bg-gray-800 text-white p-6 rounded-lg shadow-lg full-width-box">
        <h3 class="text-xl font-semibold mb-4">Générer un PDF de l'analyse <i class="fa-solid fa-file-circle-plus"></i></h3>
        <p class="text-lg mb-4">
            Vous pouvez générer un rapport PDF détaillé de votre analyse de site web pour une consultation plus facile et un suivi personnalisé.
        </p>
        <a href="genererPdf.php" class="text-blue-400 hover:text-blue-600 transition duration-300 inline-block mt-4 text-2xl">
            Cliquez ici pour générer votre PDF  <i class="fa-solid fa-arrow-right"></i>
        </a>
    </div>
</div>

<?php
include_once "layouts/footer.php";
?>
