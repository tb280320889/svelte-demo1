<script lang="ts">
	function onclick(){
		console.log('button clicked ');
	}

	let number = 5

</script>

<h1>Welcome to Svelte 5</h1>
<p>{number}</p>

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
