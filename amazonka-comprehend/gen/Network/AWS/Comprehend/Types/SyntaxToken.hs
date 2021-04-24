{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.SyntaxToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.SyntaxToken where

import Network.AWS.Comprehend.Types.PartOfSpeechTag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a work in the input text that was recognized and assigned a part of speech. There is one syntax token record for each word in the source text.
--
--
--
-- /See:/ 'syntaxToken' smart constructor.
data SyntaxToken = SyntaxToken'
  { _stTokenId ::
      !(Maybe Int),
    _stPartOfSpeech :: !(Maybe PartOfSpeechTag),
    _stEndOffset :: !(Maybe Int),
    _stText :: !(Maybe Text),
    _stBeginOffset :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SyntaxToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stTokenId' - A unique identifier for a token.
--
-- * 'stPartOfSpeech' - Provides the part of speech label and the confidence level that Amazon Comprehend has that the part of speech was correctly identified. For more information, see 'how-syntax' .
--
-- * 'stEndOffset' - The zero-based offset from the beginning of the source text to the last character in the word.
--
-- * 'stText' - The word that was recognized in the source text.
--
-- * 'stBeginOffset' - The zero-based offset from the beginning of the source text to the first character in the word.
syntaxToken ::
  SyntaxToken
syntaxToken =
  SyntaxToken'
    { _stTokenId = Nothing,
      _stPartOfSpeech = Nothing,
      _stEndOffset = Nothing,
      _stText = Nothing,
      _stBeginOffset = Nothing
    }

-- | A unique identifier for a token.
stTokenId :: Lens' SyntaxToken (Maybe Int)
stTokenId = lens _stTokenId (\s a -> s {_stTokenId = a})

-- | Provides the part of speech label and the confidence level that Amazon Comprehend has that the part of speech was correctly identified. For more information, see 'how-syntax' .
stPartOfSpeech :: Lens' SyntaxToken (Maybe PartOfSpeechTag)
stPartOfSpeech = lens _stPartOfSpeech (\s a -> s {_stPartOfSpeech = a})

-- | The zero-based offset from the beginning of the source text to the last character in the word.
stEndOffset :: Lens' SyntaxToken (Maybe Int)
stEndOffset = lens _stEndOffset (\s a -> s {_stEndOffset = a})

-- | The word that was recognized in the source text.
stText :: Lens' SyntaxToken (Maybe Text)
stText = lens _stText (\s a -> s {_stText = a})

-- | The zero-based offset from the beginning of the source text to the first character in the word.
stBeginOffset :: Lens' SyntaxToken (Maybe Int)
stBeginOffset = lens _stBeginOffset (\s a -> s {_stBeginOffset = a})

instance FromJSON SyntaxToken where
  parseJSON =
    withObject
      "SyntaxToken"
      ( \x ->
          SyntaxToken'
            <$> (x .:? "TokenId")
            <*> (x .:? "PartOfSpeech")
            <*> (x .:? "EndOffset")
            <*> (x .:? "Text")
            <*> (x .:? "BeginOffset")
      )

instance Hashable SyntaxToken

instance NFData SyntaxToken
