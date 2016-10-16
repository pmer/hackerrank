let input_stdin = '';
let input_stdin_lines = [];

const abs = (a) => a > 0 ? a : -a;

const main = () => {
  const a = input_stdin_lines[0];
  const b = input_stdin_lines[1];

  const aChars = {};
  const bChars = {};
  for (const c of a) {
    aChars[c] = aChars[c] + 1 || 1;
  }
  for (const c of b) {
    bChars[c] = bChars[c] + 1 || 1;
  }

  let diffCount = 0;
  for (const c in aChars) {
    diffCount += bChars[c] ? abs(aChars[c] - bChars[c]) : aChars[c];
    delete bChars[c];
  }
  for (const c in bChars) {
    diffCount += bChars[c];
  }

  console.log(diffCount);
};

process.stdin.resume();
process.stdin.setEncoding('ascii');
process.stdin.on('data', (data) => { input_stdin += data; });
process.stdin.on('end', () => { input_stdin_lines = input_stdin.split('\n'); main(); });
