<div>
	<slot />
</div>

<style>
	div {
		max-inline-size: 1440px;
		padding-block: var(--size-9);
		padding-inline: var(--size-10);
		margin-inline: auto;
		padding-block: var(--size-9);
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		grid-column-gap: 0px;
		grid-row-gap: 0px;
	}
</style>
