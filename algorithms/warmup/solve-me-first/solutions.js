const input_stdin = '';
const input_stdin_lines = [];
const input_currentline = 0;

const readLine = () => {
    return input_stdin_lines[input_currentline++];
};

const solveMeFirst = (a, b) => a + b;

const main = () => {
    const a = parseInt(readLine());
    const b = parseInt(readLine());;

    const res = solveMeFirst(a, b);
    console.log(res);
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
