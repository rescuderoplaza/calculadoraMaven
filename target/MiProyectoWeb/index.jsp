<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        input {
            width: 50px;
            padding: 5px;
        }
        button {
            width: 50px;
            padding: 5px;
            margin: 5px;
        }
    </style>
</head>
<body>

    <h2>Calculadora</h2>
    
    <form name="calculator">
        <input type="text" name="display" id="display" disabled>
        <br>
        <button type="button" onclick="calculator.display.value += '1'">1</button>
        <button type="button" onclick="calculator.display.value += '2'">2</button>
        <button type="button" onclick="calculator.display.value += '3'">3</button>
        <button type="button" onclick="calculator.display.value += '/'">/</button>
        <br>
        <button type="button" onclick="calculator.display.value += '4'">4</button>
        <button type="button" onclick="calculator.display.value += '5'">5</button>
        <button type="button" onclick="calculator.display.value += '6'">6</button>
        <button type="button" onclick="calculator.display.value += '*'">*</button>
        <br>
        <button type="button" onclick="calculator.display.value += '7'">7</button>
        <button type="button" onclick="calculator.display.value += '8'">8</button>
        <button type="button" onclick="calculator.display.value += '9'">9</button>
        <button type="button" onclick="calculator.display.value += '-'">-</button>
        <br>
        <button type="button" onclick="calculator.display.value = ''">C</button>
        <button type="button" onclick="calculator.display.value += '0'">0</button>
        <button type="button" onclick="calculator.display.value += '.'">.</button>
        <button type="button" onclick="calculator.display.value += '+'">+</button>
        <br>
        <button type="button" onclick="calculate()">=</button>
    </form>

    <script>
        function calculate() {
            try {
                calculator.display.value = eval(calculator.display.value);
            } catch (error) {
                calculator.display.value = 'Error';
            }
        }
    </script>

</body>
</html>

