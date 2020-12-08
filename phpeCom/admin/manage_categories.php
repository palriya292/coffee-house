<?php
ob_start();
?>
<?php require('top.inc.php');
$categories='';
$msg='';
if(isset($_GET['id']) && $_GET['id']!=''){
	$id=get_safe_value($con,$_GET['id']);
	$res=mysqli_query($con,"select * from categories where id='$id'");
	$check=mysqli_num_rows($res);
	if($check>0){
		$row=mysqli_fetch_assoc($res);
		$categories=$row['categories'];
	}else{
		header('location:categories.php');
		ob_end_flush();
		die();
	}
}

if(isset($_POST['submit'])){
	$categories=get_safe_value($con,$_POST['categories']);
	$res=mysqli_query($con,"select * from categories where categories='$categories'");
	$check=mysqli_num_rows($res);
	if($check>0){
		if(isset($_GET['id']) && $_GET['id']!=''){
			$getData=mysqli_fetch_assoc($res);
			if($id==$getData['id']){
			
			}else{
				$msg="Categories already exist";
				
			}
		}else{
			$msg="Categories already exist";
			
		}

	}
	
	if($msg==''){
		if(isset($_GET['id']) && $_GET['id']!=''){
			mysqli_query($con,"update categories set categories='$categories' where id='$id'");
		}else{
			mysqli_query($con,"insert into categories(categories,status) values('$categories','1')");
		}
		header('location:categories.php');
		die();
	}
}?>

<section id="new" class="main-display new-category">
	<div class="heading">
		<h2>Add new Category</h2>
		<a href="categories.php">Cancel</a>
	</div>
	<div class="main-display-content">
		<form method="post" class="form">
			<h4>New Category Form</h4>
			<label for="categories" class=" form-control-label">Categories</label>
			<input type="text" name="categories" placeholder="Enter categories name" class="form-control" required value="<?php echo $categories?>">
			<button id="payment-button" name="submit" type="submit" class="btn btn-lg btn-info btn-block">
							   <span id="payment-button-amount">Submit</span>
							   </button>
							   <div class="field_error"><?php echo $msg?></div>
			
		</form>
	</div>
</section>
		 
<?php
require('footer.inc.php');
?>