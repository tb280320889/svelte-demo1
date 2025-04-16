<script lang="ts">
	let userName = $state("")
	let isEditMode = $state(false)
	let peopleWaiting = $state(["people1", "people2"])
</script>
<h1>h1</h1>
<button onclick={() => peopleWaiting.push(Math.random().toString())}> add people </button>
{#snippet userInput(personId: string)}

<li> id for people :{personId}</li>
{/snippet}


<ul>
{#each peopleWaiting as person}
	{@render userInput(person)}
{/each}
</ul>



