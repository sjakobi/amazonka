{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.CSVOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.CSVOutput where

import Network.AWS.Glacier.Types.QuoteFields
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the comma-separated value (CSV) file that the job results are stored in.
--
--
--
-- /See:/ 'csvOutput' smart constructor.
data CSVOutput = CSVOutput'
  { _coRecordDelimiter ::
      !(Maybe Text),
    _coQuoteCharacter :: !(Maybe Text),
    _coFieldDelimiter :: !(Maybe Text),
    _coQuoteFields :: !(Maybe QuoteFields),
    _coQuoteEscapeCharacter :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CSVOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coRecordDelimiter' - A value used to separate individual records from each other.
--
-- * 'coQuoteCharacter' - A value used as an escape character where the field delimiter is part of the value.
--
-- * 'coFieldDelimiter' - A value used to separate individual fields from each other within a record.
--
-- * 'coQuoteFields' - A value that indicates whether all output fields should be contained within quotation marks.
--
-- * 'coQuoteEscapeCharacter' - A single character used for escaping the quotation-mark character inside an already escaped value.
csvOutput ::
  CSVOutput
csvOutput =
  CSVOutput'
    { _coRecordDelimiter = Nothing,
      _coQuoteCharacter = Nothing,
      _coFieldDelimiter = Nothing,
      _coQuoteFields = Nothing,
      _coQuoteEscapeCharacter = Nothing
    }

-- | A value used to separate individual records from each other.
coRecordDelimiter :: Lens' CSVOutput (Maybe Text)
coRecordDelimiter = lens _coRecordDelimiter (\s a -> s {_coRecordDelimiter = a})

-- | A value used as an escape character where the field delimiter is part of the value.
coQuoteCharacter :: Lens' CSVOutput (Maybe Text)
coQuoteCharacter = lens _coQuoteCharacter (\s a -> s {_coQuoteCharacter = a})

-- | A value used to separate individual fields from each other within a record.
coFieldDelimiter :: Lens' CSVOutput (Maybe Text)
coFieldDelimiter = lens _coFieldDelimiter (\s a -> s {_coFieldDelimiter = a})

-- | A value that indicates whether all output fields should be contained within quotation marks.
coQuoteFields :: Lens' CSVOutput (Maybe QuoteFields)
coQuoteFields = lens _coQuoteFields (\s a -> s {_coQuoteFields = a})

-- | A single character used for escaping the quotation-mark character inside an already escaped value.
coQuoteEscapeCharacter :: Lens' CSVOutput (Maybe Text)
coQuoteEscapeCharacter = lens _coQuoteEscapeCharacter (\s a -> s {_coQuoteEscapeCharacter = a})

instance FromJSON CSVOutput where
  parseJSON =
    withObject
      "CSVOutput"
      ( \x ->
          CSVOutput'
            <$> (x .:? "RecordDelimiter")
            <*> (x .:? "QuoteCharacter")
            <*> (x .:? "FieldDelimiter")
            <*> (x .:? "QuoteFields")
            <*> (x .:? "QuoteEscapeCharacter")
      )

instance Hashable CSVOutput

instance NFData CSVOutput

instance ToJSON CSVOutput where
  toJSON CSVOutput' {..} =
    object
      ( catMaybes
          [ ("RecordDelimiter" .=) <$> _coRecordDelimiter,
            ("QuoteCharacter" .=) <$> _coQuoteCharacter,
            ("FieldDelimiter" .=) <$> _coFieldDelimiter,
            ("QuoteFields" .=) <$> _coQuoteFields,
            ("QuoteEscapeCharacter" .=)
              <$> _coQuoteEscapeCharacter
          ]
      )
