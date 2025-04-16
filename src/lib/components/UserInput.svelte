<script lang="ts">
	import type { Snippet } from "svelte"

	interface UserInputInterface {
		children: Snippet
		userName: string
	}

	let { userName, children, ...props } = $props()

	$inspect(() => userName)
</script>


{@render children()}


<style>
	h1 {
		color: aqua;
	}
</style>
