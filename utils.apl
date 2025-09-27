∇ PrintC msg;msgptr
⎕USING←'C'
msgptr ← ⎕CSTR msg
⎕C 'printf("%s\n", ⍎msgptr);'
∇