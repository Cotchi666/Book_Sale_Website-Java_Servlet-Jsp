<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
	    <header>
      <div class="row">
	<div class="col-md-4 col-sm-12">
	  <h1 class="logo"><i class="glyphicon glyphicon-tag"></i> My <span class="primary">Store</span></h1>
	  <p class="subtext">Bootstrap Ecommerce Template</p>
	</div> <!-- col-md-4 -->
	<div class="col-md-8 col-sm-12">
	  <form class="form-inline">
	    <div class="form-group">
	      <label>Email</label>
	      <input type="email" class="form-control" placeholder="Enter Email">
	    </div>
	    <div class="form-group">
	      <label>Password</label>
	      <input type="password" class="form-control" placeholder="Enter Password">
	    </div>
	    <button type="submit" class="btn btn-default">Login</button>
	  </form>
	</div> <!-- col-md-8 -->
      </div> <!-- row -->
    </header>

    <!-- Static navbar -->
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.html">Home</a></li>
            <li><a href="#">What's New</a></li>
            <li><a href="#">Specials</a></li>
            <li><a href="#">My Account</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
	    <form class="navbar-form">
	      <div class="form-group">
		<input type="text" class="form-control" placeholder="Search..."/>
	      </div>
	      <button type="submit" class="btn btn-default">Search</button>
	    </form>
          </ul>
        </div><!--/.nav-collapse -->
      </div><!--/.container-fluid -->
    </nav>