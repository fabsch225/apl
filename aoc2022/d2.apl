input ← ⊃⎕NGET '/home/fabian/misc/apl/aoc2022/d2_input.txt' 1 	⍝ Lines as a vector

Score ← {
    o ← 'ABC'⍳⊃⍵[1]
    m ← 'XYZ'⍳⊃⍵[3]
    shape ← m
	outcome ← (m=o)×3              								⍝ Draw
    outcome +← ((m-o)∊1 ¯2)×6      								⍝ Win
    shape + outcome
}

+/ Score ¨ d2_input												⍝ Apply to vec and sum

Score2 ← {
    o ← 'ABC'⍳⊃⍵[1]
    outcome ← 'XYZ'⍳⍵[3]
    m ← (outcome=2) × o 										⍝ Draw => same shape
    m +← (outcome=3) × 1+3|o  									⍝ Win => next shape
    m +← (outcome=1) × 1+3|o-2 									⍝ Lose => previous shape
    shape ← m
    outcome ← (outcome-1) × 3
    shape + outcome
}

+/ Score2 ¨ input