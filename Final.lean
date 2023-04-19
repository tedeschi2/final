
namespace Day1

def path : System.FilePath := System.mkFilePath ["/Users/ellismclarty/Documents/2022-23/Spring 2023/SCHC411/final/elf_input.txt"]
#eval IO.FS.readFile path

#eval path




def test: String :=

"1000
2000
3000

4000

5000
6000

7000
8000
9000

10000"

#eval test

def elves (s : String): List String := 
    s.splitOn "\n\n"

#eval elves test

def calories (s: String) : List Nat :=
    let l' := s.splitOn "\n"
    l'.map (fun s => s.toNat!)

#eval (elves test).map calories

def addUp (l : List Nat) : Nat := 
    l.foldl (. + .) 0 

#eval addUp [1, 2, 3, 4, 5]
#eval (elves test).map calories

def totalCallist (s : String) : List Nat :=
    let t := elves s
    let l' := t.map calories
    l'.map addUp

#eval totalCallist test
def answer (s: String) : Nat := 
    totalCallist s|>.foldl max 0

#eval answer test

#check IO.FS.readFile

#print System.FilePath

def path System.FilePath.mk "/Users/ellismclarty/Documents/2022-23/Spring_2023/SCHC411/elf_input.txt"

def contents : IO Unit := do
    let file \<- IO.FileSystem.readFile path
    IO.println file
    let newFile := String.join ["hi", file]
    IO.println newFile
    return ()

#print Option

#eval contents



end Day1

namespace Day2

inductive Play where
    |Rock
    |Paper
    |Scissors

deriving Repr
open Play
def Play.Name : Play → String
    |Rock => "Rock"
    |Paper => "Paper"
    |Scissors => "Scissors"

#eval Play.Name Rock