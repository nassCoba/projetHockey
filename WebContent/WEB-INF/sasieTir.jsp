<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="saisieTir.css">
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
    <title>Saisie tir</title>
</head>
<body>
<div id="content-wrapper" class="d-flex flex-column">
    <!-- Main Content -->
    <div id="content">
        <div class="container-fluid m-0 p-0">
            <div class="row bg-dark text-white d-flex justify-content-center align-content-center" style="height: 50px;">
                <h3>Club Hockey</h3>
            </div>
            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-center mt-4">
           		<h1 class="h3 mb-0 text-gray-800">Match : <%= request.getAttribute("match") %></h1>
          	</div>
            <form class="d-flex justify-content-center" action="SaisieServlet" method="post">
                <div class="col-md-10 bg-light mt-5 pb-5 card">
                	<div class="d-sm-flex align-items-center justify-content-center mt-4">
		           		<span id="result" class="text-success">Succes</span>
		          	</div>
                    <div class="row col-md-12 pt-5 d-flex justify-content-center">
                        <div class="col-md-3">
                            <div class="card shadow">
                                <div class="card-header">
                                    <h4 class="m-0 font-weight-bold text-primary">Zone de Tir</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="form-check form-control p-4 col-md-5 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneTir" id="zoneTir1" value="1" required>
                                            <label class="form-check-label  h2 ml-1 " for="zoneTir1">1</label>
                                        </div>
                                        <div class="form-check form-control p-4 col-md-5 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneTir" id="zoneTir2" value="2">
                                            <label class="form-check-label h2 ml-1 " for="zoneTir2">2</label>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="form-check form-control p-4 col-md-5 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneTir" id="zoneTir3" value="3">
                                            <label class="form-check-label h2 ml-1 " for="zoneTir3">3</label>
                                        </div>
                                        <div class="form-check form-control p-4 col-md-5 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneTir" id="zoneTir4" value="4">
                                            <label class="form-check-label h2 ml-1 " for="zoneTir4">4</label>
                                        </div>
                                    </div>
                                    <div class="row mt-3 ">
                                        <div class="form-check form-control p-4 col-md-5 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneTir" id="zoneTir5" value="5">
                                            <label class="form-check-label text-gra h2 ml-1 " for="zoneTir5">5</label>
                                        </div>
                                        <div class="form-check form-control p-4 col-md-5 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneTir" id="zoneTir6" value="6">
                                            <label class="form-check-label h2 ml-1 " for="zoneTir6">6</label>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 ml-4">
                            <div class="card shadow">
                                <div class="card-header">
                                    <h4 class="m-0 font-weight-bold text-primary">Zone d'Arret</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="form-check form-control p-4 col-md-3 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneArret" id="zoneArretA" value="A" required>
                                            <label class="form-check-label text-gra h2 ml-1 " for="zoneArretA">A</label>
                                        </div>
                                        <div class="form-check form-control p-4 col-md-3 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneArret" id="zoneArretB" value="B">
                                            <label class="form-check-label text-gra h2 ml-1 " for="zoneArretB">B</label>
                                        </div>
                                        <div class="form-check form-control p-4 col-md-3 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneArret" id="zoneArretC" value="C">
                                            <label class="form-check-label text-gra h2 ml-1 " for="zoneArretC">C</label>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="form-check form-control p-4 col-md-3 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneArret" id="zoneArretD" value="D">
                                            <label class="form-check-label text-gra h2 ml-1 " for="zoneArretD">D</label>
                                        </div>
                                        <div class="form-check form-control p-4 col-md-3 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneArret" id="zoneArretE" value="E">
                                            <label class="form-check-label text-gra h2 ml-1 " for="zoneArretE">E</label>
                                        </div>
                                        <div class="form-check form-control p-4 col-md-3 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneArret" id="zoneArretF" value="F">
                                            <label class="form-check-label text-gra h2 ml-1 " for="zoneArretF">F</label>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="form-check form-control p-4 col-md-3 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneArret" id="zoneArretG" value="G">
                                            <label class="form-check-label text-gra h2 ml-1 " for="zoneArretG">G</label>
                                        </div>
                                        <div class="form-check form-control p-4 col-md-3 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneArret" id="zoneArretH" value="H">
                                            <label class="form-check-label text-gra h2 ml-1 " for="zoneArretH">H</label>
                                        </div>
                                        <div class="form-check form-control p-4 col-md-3 d-flex justify-content-center form-check-inline">
                                            <input class="form-check-input radio-md" type="radio" name="zoneArret" id="zoneArretI" value="I">
                                            <label class="form-check-label text-gra h2 ml-1 " for="zoneArretI">I</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="row mt-5 d-flex justify-content-center">
                        <label class="form-check-label h2 mr-3" for="checkBut">But ?</label>
                        <input type="checkbox" name="but" id="checkBut" checked data-toggle="toggle" data-on="Oui" data-off="Non"
                               data-onstyle="success" data-offstyle="danger" data-size="lg">
                    </div>
                    <div class="row mt-5 d-flex justify-content-center">
                        <button type="submit" id="btnValide" class="btn btn-success btn-lg">Enregistrer</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Footer -->
    <footer class="sticky-footer mt-5 bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; Nass 2021</span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->
</div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/sb-admin-2.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
<script type="text/javascript" src="../js/saisieTir.js"></script>
</body>
</html>