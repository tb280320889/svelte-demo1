<script lang="ts">
	let userName = $state("")

	$effect(() => {
		console.log('effect rune is running :>> ')
		if (userName) {
			console.log("i will send name to the database, current username is: " + userName)
		}
	})
</script>

<style>
	h1 {
		color: aqua;
	}
</style>

<h1>Your {userName}</h1>
<input type="text" bind:value={userName} />
