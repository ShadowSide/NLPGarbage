CREATE TABLE Words (
	Id INTEGER NOT NULL primary key,
	Word TEXT(256) NOT NULL
);
CREATE INDEX Words_Word_IDX ON Words (Word);

CREATE TABLE Properties (
	Id INTEGER NOT NULL primary key,
	Name TEXT NOT NULL
);
CREATE INDEX Properties_Name_IDX ON Properties (Name);

CREATE TABLE WordProperty (
	Id INTEGER NOT NULL primary key,
	WordsId INTEGER NOT NULL,
	PropertiesId INTEGER NOT NULL,
	"Data" TEXT(2048) NOT NULL
);
CREATE INDEX WordProperty_WordsId_IDX ON WordProperty (WordsId);
CREATE INDEX WordProperty_PropertiesId_IDX ON WordProperty (PropertiesId);
CREATE INDEX WordProperty_Data_IDX ON WordProperty ("Data");