// Learn more about F# at http://fsharp.org

open System
open FSharp.Data.Sql
open FSharp.Linq

//System.IO.Directory.SetCurrentDirectory (__SOURCE_DIRECTORY__)


[<Literal>]
let dbModelConnectionString  = "Data Source=" + __SOURCE_DIRECTORY__ + @"\..\..\Data\Words.sqlite"

type Sql = SqlDataProvider<Common.DatabaseProviderTypes.SQLITE,
                           SQLiteLibrary = Common.SQLiteLibrary.SystemDataSQLite,
                           ConnectionString = dbModelConnectionString,
                           CaseSensitivityChange = Common.CaseSensitivityChange.ORIGINAL>

[<EntryPoint>]
let main argv =
    printfn "Hello World from F#!"
    0 // return an integer exit code
