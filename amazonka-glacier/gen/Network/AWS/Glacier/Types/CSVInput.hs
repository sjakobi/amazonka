{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.CSVInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.CSVInput where

import Network.AWS.Glacier.Types.FileHeaderInfo
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the comma-separated value (CSV) file to select from.
--
--
--
-- /See:/ 'csvInput' smart constructor.
data CSVInput = CSVInput'
  { _ciRecordDelimiter ::
      !(Maybe Text),
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
-- * 'ciRecordDelimiter' - A value used to separate individual records from each other.
--
-- * 'ciQuoteCharacter' - A value used as an escape character where the field delimiter is part of the value.
--
-- * 'ciFileHeaderInfo' - Describes the first line of input. Valid values are @None@ , @Ignore@ , and @Use@ .
--
-- * 'ciFieldDelimiter' - A value used to separate individual fields from each other within a record.
--
-- * 'ciComments' - A single character used to indicate that a row should be ignored when the character is present at the start of that row.
--
-- * 'ciQuoteEscapeCharacter' - A single character used for escaping the quotation-mark character inside an already escaped value.
csvInput ::
  CSVInput
csvInput =
  CSVInput'
    { _ciRecordDelimiter = Nothing,
      _ciQuoteCharacter = Nothing,
      _ciFileHeaderInfo = Nothing,
      _ciFieldDelimiter = Nothing,
      _ciComments = Nothing,
      _ciQuoteEscapeCharacter = Nothing
    }

-- | A value used to separate individual records from each other.
ciRecordDelimiter :: Lens' CSVInput (Maybe Text)
ciRecordDelimiter = lens _ciRecordDelimiter (\s a -> s {_ciRecordDelimiter = a})

-- | A value used as an escape character where the field delimiter is part of the value.
ciQuoteCharacter :: Lens' CSVInput (Maybe Text)
ciQuoteCharacter = lens _ciQuoteCharacter (\s a -> s {_ciQuoteCharacter = a})

-- | Describes the first line of input. Valid values are @None@ , @Ignore@ , and @Use@ .
ciFileHeaderInfo :: Lens' CSVInput (Maybe FileHeaderInfo)
ciFileHeaderInfo = lens _ciFileHeaderInfo (\s a -> s {_ciFileHeaderInfo = a})

-- | A value used to separate individual fields from each other within a record.
ciFieldDelimiter :: Lens' CSVInput (Maybe Text)
ciFieldDelimiter = lens _ciFieldDelimiter (\s a -> s {_ciFieldDelimiter = a})

-- | A single character used to indicate that a row should be ignored when the character is present at the start of that row.
ciComments :: Lens' CSVInput (Maybe Text)
ciComments = lens _ciComments (\s a -> s {_ciComments = a})

-- | A single character used for escaping the quotation-mark character inside an already escaped value.
ciQuoteEscapeCharacter :: Lens' CSVInput (Maybe Text)
ciQuoteEscapeCharacter = lens _ciQuoteEscapeCharacter (\s a -> s {_ciQuoteEscapeCharacter = a})

instance FromJSON CSVInput where
  parseJSON =
    withObject
      "CSVInput"
      ( \x ->
          CSVInput'
            <$> (x .:? "RecordDelimiter")
            <*> (x .:? "QuoteCharacter")
            <*> (x .:? "FileHeaderInfo")
            <*> (x .:? "FieldDelimiter")
            <*> (x .:? "Comments")
            <*> (x .:? "QuoteEscapeCharacter")
      )

instance Hashable CSVInput

instance NFData CSVInput

instance ToJSON CSVInput where
  toJSON CSVInput' {..} =
    object
      ( catMaybes
          [ ("RecordDelimiter" .=) <$> _ciRecordDelimiter,
            ("QuoteCharacter" .=) <$> _ciQuoteCharacter,
            ("FileHeaderInfo" .=) <$> _ciFileHeaderInfo,
            ("FieldDelimiter" .=) <$> _ciFieldDelimiter,
            ("Comments" .=) <$> _ciComments,
            ("QuoteEscapeCharacter" .=)
              <$> _ciQuoteEscapeCharacter
          ]
      )
