{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.CSVInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.CSVInput where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.FileHeaderInfo

-- | Describes how an uncompressed comma-separated values (CSV)-formatted input object is formatted.
--
--
--
-- /See:/ 'csvInput' smart constructor.
data CSVInput = CSVInput'
  { _ciAllowQuotedRecordDelimiter ::
      !(Maybe Bool),
    _ciRecordDelimiter :: !(Maybe Text),
    _ciQuoteCharacter :: !(Maybe Text),
    _ciFileHeaderInfo :: !(Maybe FileHeaderInfo),
    _ciFieldDelimiter :: !(Maybe Text),
    _ciComments :: !(Maybe Text),
    _ciQuoteEscapeCharacter :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CSVInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciAllowQuotedRecordDelimiter' - Specifies that CSV field values may contain quoted record delimiters and such records should be allowed. Default value is FALSE. Setting this value to TRUE may lower performance.
--
-- * 'ciRecordDelimiter' - A single character used to separate individual records in the input. Instead of the default value, you can specify an arbitrary delimiter.
--
-- * 'ciQuoteCharacter' - A single character used for escaping when the field delimiter is part of the value. For example, if the value is @a, b@ , Amazon S3 wraps this field value in quotation marks, as follows: @" a , b "@ . Type: String Default: @"@  Ancestors: @CSV@
--
-- * 'ciFileHeaderInfo' - Describes the first line of input. Valid values are:     * @NONE@ : First line is not a header.     * @IGNORE@ : First line is a header, but you can't use the header values to indicate the column in an expression. You can use column position (such as _1, _2, …) to indicate the column (@SELECT s._1 FROM OBJECT s@ ).     * @Use@ : First line is a header, and you can use the header value to identify a column in an expression (@SELECT "name" FROM OBJECT@ ).
--
-- * 'ciFieldDelimiter' - A single character used to separate individual fields in a record. You can specify an arbitrary delimiter.
--
-- * 'ciComments' - A single character used to indicate that a row should be ignored when the character is present at the start of that row. You can specify any character to indicate a comment line.
--
-- * 'ciQuoteEscapeCharacter' - A single character used for escaping the quotation mark character inside an already escaped value. For example, the value """ a , b """ is parsed as " a , b ".
csvInput ::
  CSVInput
csvInput =
  CSVInput'
    { _ciAllowQuotedRecordDelimiter = Nothing,
      _ciRecordDelimiter = Nothing,
      _ciQuoteCharacter = Nothing,
      _ciFileHeaderInfo = Nothing,
      _ciFieldDelimiter = Nothing,
      _ciComments = Nothing,
      _ciQuoteEscapeCharacter = Nothing
    }

-- | Specifies that CSV field values may contain quoted record delimiters and such records should be allowed. Default value is FALSE. Setting this value to TRUE may lower performance.
ciAllowQuotedRecordDelimiter :: Lens' CSVInput (Maybe Bool)
ciAllowQuotedRecordDelimiter = lens _ciAllowQuotedRecordDelimiter (\s a -> s {_ciAllowQuotedRecordDelimiter = a})

-- | A single character used to separate individual records in the input. Instead of the default value, you can specify an arbitrary delimiter.
ciRecordDelimiter :: Lens' CSVInput (Maybe Text)
ciRecordDelimiter = lens _ciRecordDelimiter (\s a -> s {_ciRecordDelimiter = a})

-- | A single character used for escaping when the field delimiter is part of the value. For example, if the value is @a, b@ , Amazon S3 wraps this field value in quotation marks, as follows: @" a , b "@ . Type: String Default: @"@  Ancestors: @CSV@
ciQuoteCharacter :: Lens' CSVInput (Maybe Text)
ciQuoteCharacter = lens _ciQuoteCharacter (\s a -> s {_ciQuoteCharacter = a})

-- | Describes the first line of input. Valid values are:     * @NONE@ : First line is not a header.     * @IGNORE@ : First line is a header, but you can't use the header values to indicate the column in an expression. You can use column position (such as _1, _2, …) to indicate the column (@SELECT s._1 FROM OBJECT s@ ).     * @Use@ : First line is a header, and you can use the header value to identify a column in an expression (@SELECT "name" FROM OBJECT@ ).
ciFileHeaderInfo :: Lens' CSVInput (Maybe FileHeaderInfo)
ciFileHeaderInfo = lens _ciFileHeaderInfo (\s a -> s {_ciFileHeaderInfo = a})

-- | A single character used to separate individual fields in a record. You can specify an arbitrary delimiter.
ciFieldDelimiter :: Lens' CSVInput (Maybe Text)
ciFieldDelimiter = lens _ciFieldDelimiter (\s a -> s {_ciFieldDelimiter = a})

-- | A single character used to indicate that a row should be ignored when the character is present at the start of that row. You can specify any character to indicate a comment line.
ciComments :: Lens' CSVInput (Maybe Text)
ciComments = lens _ciComments (\s a -> s {_ciComments = a})

-- | A single character used for escaping the quotation mark character inside an already escaped value. For example, the value """ a , b """ is parsed as " a , b ".
ciQuoteEscapeCharacter :: Lens' CSVInput (Maybe Text)
ciQuoteEscapeCharacter = lens _ciQuoteEscapeCharacter (\s a -> s {_ciQuoteEscapeCharacter = a})

instance Hashable CSVInput

instance NFData CSVInput

instance ToXML CSVInput where
  toXML CSVInput' {..} =
    mconcat
      [ "AllowQuotedRecordDelimiter"
          @= _ciAllowQuotedRecordDelimiter,
        "RecordDelimiter" @= _ciRecordDelimiter,
        "QuoteCharacter" @= _ciQuoteCharacter,
        "FileHeaderInfo" @= _ciFileHeaderInfo,
        "FieldDelimiter" @= _ciFieldDelimiter,
        "Comments" @= _ciComments,
        "QuoteEscapeCharacter" @= _ciQuoteEscapeCharacter
      ]
