import * as fs from 'node:fs';

const recipesPath = `./src/data/fetch/recipe`;
const functionPath =
	'./src/data/fetch/function/item/apply_components.mcfunction';

async function patchRecipeFiles() {
	const files = fs.readdirSync(recipesPath);
	files.forEach((file) => {
		let json = JSON.parse(
			fs.readFileSync(`${recipesPath}/${file}`, 'utf-8'),
		);

		// Get file name (no ext)
		const item = file.split('.')[0];
		json['result'] = buildOutput(item);
		fs.writeFileSync(
			`${recipesPath}/${file}`,
			JSON.stringify(json, null, '\t'),
		);
	});
}

async function patchApplyComponentsMcFunctionFile() {
	const content = fs.readFileSync(functionPath, 'utf-8');
	const updated = content.replace(
		/(set value ).*/,
		(_, prefix) => prefix + JSON.stringify(buildComponents('air')),
	);
	fs.writeFileSync(functionPath, updated);
}

function buildOutput(item: string) {
	return {
		id: 'snowball',
		components: buildComponents(item),
	};
}

function buildComponents(item: string) {
	return {
		'minecraft:use_remainder': {
			id: 'minecraft:poisonous_potato',
			count: 1,
			components: {
				'minecraft:custom_data': { ball: true },
				'minecraft:item_model': 'air',
				'minecraft:item_name': { text: '' },
				'!minecraft:consumable': {},
			},
		},
		'minecraft:use_cooldown': {
			seconds: 2,
			cooldown_group: 'dogtoy',
		},
		'minecraft:custom_data': '{fetch.ball:1b}',
		'minecraft:max_stack_size': 1,
		'minecraft:item_model': item,
		'minecraft:custom_name': {
			text: 'Dog Toy',
			color: 'aqua',
			italic: false,
		},
	};
}

patchRecipeFiles();
patchApplyComponentsMcFunctionFile();
