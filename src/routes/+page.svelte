<script lang="ts">
	let number = $state(0)

	function onclick(){
		console.log('button clicked ');
		number ++
	}

 let userInfo =	$derived.by(() => calcUserInfo(number))


 function calcUserInfo(number: number):string {
	if(number ===0) return "try this button"
	if(number ===1) return "click 1 time"

	return  `click ${number} times`
 }

</script>

<h1>Welcome to Svelte 5</h1>
<p>{userInfo}</p>

<button {onclick}>
	Click me!
</button>
<div class="container">
	<p>p1</p>
	<p>p2</p>
</div>

<style>
	h1 {
		color: aqua
	}
	.container {
		background-color: white;
	}
</style>
