# mapping for numbers using hashtable

$jump_five = @{
    '1' = '9'
    '2' = '8'
    '3' = '7'
    '4' = '6'
    '5' = '0'
    '6' = '4'
    '7' = '3'
    '8' = '2'
    '9' = '1'
    '0' = '5'
}

# takes input from user

$num = Read-Host 'Enter a number to jump it'

# operator used for joining the numbers

-join(
    $num.ToCharArray() | ForEach-Object{
        $key = $_.ToString()
        if($jump_five.ContainsKey($key)){
            $jump_five.$key
        }
        else {
            $key
        }
    }
)
