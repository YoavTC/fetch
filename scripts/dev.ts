import { spawn } from 'node:child_process';

const path = process.env.WORLD_PATH;
if (!path) throw new Error('WORLD_PATH is not set');

spawn('beet', ['watch', '-l', path], { stdio: 'inherit' });