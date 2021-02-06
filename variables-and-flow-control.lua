-- 대쉬 두개는 주석이다.
--> 앞으로 이렇게 화살표 모양으로 자주 써먹을 예정이다.
--[[
    나는 지금
    테일러 스위프트의 End Game을 듣고 있다
    요건 여러줄 주석이다
--]]

num = 42 --> 모든 수는 double, 52bit보다 작은 크기의 수에 대해 정확성 보장
str = 'clementine'
foo = "따옴표 두개도 가능해"
bar = [[
    이중 대괄호는
    여러 줄 문자열의
    시작과 끝을 나타낸다.
]]
t = nil --> t를 정의되지 않은 변수로 만든다. Lua에는 가비지 컬렉션 기능이 있다.

-- while
while num < 50 do
    num = num + 1 --> Lua에는 '++', '+=' 둘 다 없다...
end

-- if, bash의 if문과 비슷하다?
if num > 40 then
    print('over 40')
elseif str ~= 'clementine' then
    io.write('hello\n')
else
    thisIsGlobal = 5 --> 변수들은 기본적으로 전역변수로 만들어짐
    local line = io.read() --> 지역변수 선언 & 다음 stdin 줄 읽기

    print('hello, '..line) --> .. 연산자를 사용하여 문자열 잇기
end

ari = anUnknownVariable --> 정의되지 않은 변수들은 nil을 리턴한다. (에러 아님)

aBoolValue = false
if not aBoolValue then print("false") end
-- boolean 연산에서는 오직 nil과 false만 거짓이다. 0과 ''는 참이다.

answer = aBoolValue and 'yes' or 'no' --> 삼항 연산자와 똑같이 돌아간다. 신기하다 (answer = 'no')

-- loop
sum1 = 0
for i = 1, 100 do   --> [start, end]
    sum1 = sum1 + i
end

sum2 = 0
for j = 100, 1, -1 do --> [start, end, step]
    sum2 = sum2 + j
end

repeat
    print('mango milk tea')
    num = num -1
until num == 0

