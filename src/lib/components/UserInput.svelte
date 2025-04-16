<script lang="ts">
	import type { Snippet } from "svelte"

	interface UserInputInterface {
		children: Snippet
		userName: string
	}

	let { userName, children, ...props } = $props()

	$inspect(() => userName)
</script>

<input type="text" bind:value={userName} />
{@render children()}

<style>
	h1 {
		color: aqua;
	}
</style>
