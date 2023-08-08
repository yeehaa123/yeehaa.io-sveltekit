<section>
	<slot name="top" />
	<div>
		<slot />
	</div>
	<slot name="bottom" />
</section>

<style>
	@import 'open-props/media';
	section {
		background-color: var(--background-color, var(--curtains));
		color: var(--color, --white);
	}

	div {
		max-inline-size: var(--max-inline-size, var(--size-xl));
		margin-inline: auto;
		padding-inline: var(--padding-inline, var(--size-7));
		padding-block: var(--padding-block, var(--size-10));
	}
</style>
