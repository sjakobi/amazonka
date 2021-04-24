{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.LexiconAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.LexiconAttributes where

import Network.AWS.Lens
import Network.AWS.Polly.Types.LanguageCode
import Network.AWS.Prelude

-- | Contains metadata describing the lexicon such as the number of lexemes, language code, and so on. For more information, see <https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html Managing Lexicons> .
--
--
--
-- /See:/ 'lexiconAttributes' smart constructor.
data LexiconAttributes = LexiconAttributes'
  { _laLanguageCode ::
      !(Maybe LanguageCode),
    _laLexiconARN :: !(Maybe Text),
    _laAlphabet :: !(Maybe Text),
    _laLexemesCount :: !(Maybe Int),
    _laLastModified :: !(Maybe POSIX),
    _laSize :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LexiconAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laLanguageCode' - Language code that the lexicon applies to. A lexicon with a language code such as "en" would be applied to all English languages (en-GB, en-US, en-AUS, en-WLS, and so on.
--
-- * 'laLexiconARN' - Amazon Resource Name (ARN) of the lexicon.
--
-- * 'laAlphabet' - Phonetic alphabet used in the lexicon. Valid values are @ipa@ and @x-sampa@ .
--
-- * 'laLexemesCount' - Number of lexemes in the lexicon.
--
-- * 'laLastModified' - Date lexicon was last modified (a timestamp value).
--
-- * 'laSize' - Total size of the lexicon, in characters.
lexiconAttributes ::
  LexiconAttributes
lexiconAttributes =
  LexiconAttributes'
    { _laLanguageCode = Nothing,
      _laLexiconARN = Nothing,
      _laAlphabet = Nothing,
      _laLexemesCount = Nothing,
      _laLastModified = Nothing,
      _laSize = Nothing
    }

-- | Language code that the lexicon applies to. A lexicon with a language code such as "en" would be applied to all English languages (en-GB, en-US, en-AUS, en-WLS, and so on.
laLanguageCode :: Lens' LexiconAttributes (Maybe LanguageCode)
laLanguageCode = lens _laLanguageCode (\s a -> s {_laLanguageCode = a})

-- | Amazon Resource Name (ARN) of the lexicon.
laLexiconARN :: Lens' LexiconAttributes (Maybe Text)
laLexiconARN = lens _laLexiconARN (\s a -> s {_laLexiconARN = a})

-- | Phonetic alphabet used in the lexicon. Valid values are @ipa@ and @x-sampa@ .
laAlphabet :: Lens' LexiconAttributes (Maybe Text)
laAlphabet = lens _laAlphabet (\s a -> s {_laAlphabet = a})

-- | Number of lexemes in the lexicon.
laLexemesCount :: Lens' LexiconAttributes (Maybe Int)
laLexemesCount = lens _laLexemesCount (\s a -> s {_laLexemesCount = a})

-- | Date lexicon was last modified (a timestamp value).
laLastModified :: Lens' LexiconAttributes (Maybe UTCTime)
laLastModified = lens _laLastModified (\s a -> s {_laLastModified = a}) . mapping _Time

-- | Total size of the lexicon, in characters.
laSize :: Lens' LexiconAttributes (Maybe Int)
laSize = lens _laSize (\s a -> s {_laSize = a})

instance FromJSON LexiconAttributes where
  parseJSON =
    withObject
      "LexiconAttributes"
      ( \x ->
          LexiconAttributes'
            <$> (x .:? "LanguageCode")
            <*> (x .:? "LexiconArn")
            <*> (x .:? "Alphabet")
            <*> (x .:? "LexemesCount")
            <*> (x .:? "LastModified")
            <*> (x .:? "Size")
      )

instance Hashable LexiconAttributes

instance NFData LexiconAttributes
