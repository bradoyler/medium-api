<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width">
  <title>{{ title }}</title>
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

  <script src="http://localhost:35729/livereload.js"></script>
</head>
<body>
  <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="/">LessMedium</a>
        </div>
        <div class=""> <!-- /.navbar-collapse -->
          <ul class="nav navbar-nav">
          <!--  <li class="active"><a href="/">Home</a></li> -->
            <li><a href="/channel/culture">Culture</a></li>
            <li><a href="/channel/humor">Humor</a></li>
            <li><a href="/channel/tech">Tech</a></li>
            <li><a href="/channel/design">Design</a></li>
            <li><a href="/channel/longreads">Long Reads</a></li>
          </ul>
        </div>
      </div>
    </nav>

  <div class="container">
     {% block content %}{% endblock %}
  </div>

  <footer class="">
  </footer>
</body>
</html>
