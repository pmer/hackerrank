const input_stdin = '';
const input_stdin_lines = [];

const main = () => {
  const tokens = input_stdin_lines[1].split(' ');
  const sum = tokens.map(n => parseInt(n)).reduce((a, b) => a + b);
  console.log(sum);
};

process.stdin.resume();
process.stdin.setEncoding('ascii');

process.stdin.on('data', (data) => {
  input_stdin += data;
});

process.stdin.on('end', () => {
  input_stdin_lines = input_stdin.split('\n');
  main();
});
