<?php
require('fpdf.php');
$pdf = new FPDF('P','mm','A4');
$pdf->AddPage();
$pdf->SetFont('Arial','B',16); 
$pdf->Cell(40,10,'DATA MEMBER');

//kelang
$pdf->Cell(10,15,'',0,1);

$pdf->SetFont('Arial','B',10);
$pdf->Cell(70,6,'Email',1,0);
$pdf->Cell(70,6,'Name',1,1);



$pdf->SetFont('Arial','',10);

include 'koneksi.php';
$tubes = mysqli_query($koneksi, "SELECT * FROM tubes");
while ($row = mysqli_fetch_array($tubes)){
    $pdf->Cell(70,6,$row['email'],1,0);
    $pdf->Cell(70,6,$row['name'],1,1);
    
}
$pdf->Output();
?>