<section>
	<div>
		<slot />
	</div>
</section>

<style>
	section {
		background-color: var(--background-color, --curtains);
		color: var(--color, --white);
	}

	div {
		max-inline-size: var(--max-inline-size, 1440px);
		padding-block: var(--size-9);
		padding-inline: var(--size-10);
		margin-inline: auto;
		padding-block: var(--size-9);
	}
</style>
