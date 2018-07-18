<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/10/2017
  Time: 3:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gallery</title>
    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'gallery-grid.css')}" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
    <g:javascript library="jquery"/>
</head>

<body style="padding: 10px;">
<div class="container gallery-container">

    <h1><g:link controller="user" action="dash"><button type="button" class="btn btn-info">Dashboard</button></g:link> Suyoj Hand Knit Craft Gallery</h1>

    <p class="page-description text-center">Pashmina/Cashmere/Water Shawl</p>

    <div class="tz-gallery">

        <div class="row">
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/gallery/cashmere.jpg">
                    <img src="../images/gallery/cashmere.jpg" alt="Cashmere">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/gallery/pashmina.jpg">
                    <img src="../images/gallery/pashmina.jpg" alt="Pashmina">
                </a>
            </div>
            <div class="col-sm-12 col-md-4">
                <a class="lightbox" href="../images/gallery/scarf.jpg">
                    <img src="../images/gallery/scarf.jpg" alt="Scarf">
                </a>
            </div>
      %{--      <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/coast.jpg">
                    <img src="../images/coast.jpg" alt="Coast">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/rails.jpg">
                    <img src="../images/rails.jpg" alt="Rails">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/traffic.jpg">
                    <img src="../images/traffic.jpg" alt="Traffic">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/rocks.jpg">
                    <img src="../images/rocks.jpg" alt="Rocks">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/benches.jpg">
                    <img src="../images/benches.jpg" alt="Benches">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/sky.jpg">
                    <img src="../images/sky.jpg" alt="Sky">
                </a>
            </div>--}%
        </div>

    </div>

</div>

<script src="../js/baguetteBox.js"></script>
<script>
    baguetteBox.run('.tz-gallery');
</script>
<r:layoutResources/>
</body>
</html>