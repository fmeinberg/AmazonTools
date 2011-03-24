BeginPackage["AmazonTools`"]

Needs["InternetTools`"];

AmazonBookURL::usage=""
AmazonBookHyperlink::usage=""
AmazonBookSearch::usage=""

Begin["Private`"]

AmazonBookURL[string_]:=
	StringJoin[	"http://www.amazon.com/gp/search?index=books&keywords=",
	hexEncode@string
	]

AmazonBookHyperlink[string_,label_:None] :=
	Hyperlink[label/.None->string,AmazonBookURL@string]

AmazonBookSearch[string_]:=
	OpenURL@AmazonBookURL@string

End[]

EndPackage[]


