{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.GetLexicon
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the content of the specified pronunciation lexicon stored in an AWS Region. For more information, see <https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html Managing Lexicons> .
module Network.AWS.Polly.GetLexicon
  ( -- * Creating a Request
    getLexicon,
    GetLexicon,

    -- * Request Lenses
    glName,

    -- * Destructuring the Response
    getLexiconResponse,
    GetLexiconResponse,

    -- * Response Lenses
    glrrsLexiconAttributes,
    glrrsLexicon,
    glrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Polly.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getLexicon' smart constructor.
newtype GetLexicon = GetLexicon' {_glName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetLexicon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glName' - Name of the lexicon.
getLexicon ::
  -- | 'glName'
  Text ->
  GetLexicon
getLexicon pName_ = GetLexicon' {_glName = pName_}

-- | Name of the lexicon.
glName :: Lens' GetLexicon Text
glName = lens _glName (\s a -> s {_glName = a})

instance AWSRequest GetLexicon where
  type Rs GetLexicon = GetLexiconResponse
  request = get polly
  response =
    receiveJSON
      ( \s h x ->
          GetLexiconResponse'
            <$> (x .?> "LexiconAttributes")
            <*> (x .?> "Lexicon")
            <*> (pure (fromEnum s))
      )

instance Hashable GetLexicon

instance NFData GetLexicon

instance ToHeaders GetLexicon where
  toHeaders = const mempty

instance ToPath GetLexicon where
  toPath GetLexicon' {..} =
    mconcat ["/v1/lexicons/", toBS _glName]

instance ToQuery GetLexicon where
  toQuery = const mempty

-- | /See:/ 'getLexiconResponse' smart constructor.
data GetLexiconResponse = GetLexiconResponse'
  { _glrrsLexiconAttributes ::
      !(Maybe LexiconAttributes),
    _glrrsLexicon :: !(Maybe Lexicon),
    _glrrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetLexiconResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glrrsLexiconAttributes' - Metadata of the lexicon, including phonetic alphabetic used, language code, lexicon ARN, number of lexemes defined in the lexicon, and size of lexicon in bytes.
--
-- * 'glrrsLexicon' - Lexicon object that provides name and the string content of the lexicon.
--
-- * 'glrrsResponseStatus' - -- | The response status code.
getLexiconResponse ::
  -- | 'glrrsResponseStatus'
  Int ->
  GetLexiconResponse
getLexiconResponse pResponseStatus_ =
  GetLexiconResponse'
    { _glrrsLexiconAttributes =
        Nothing,
      _glrrsLexicon = Nothing,
      _glrrsResponseStatus = pResponseStatus_
    }

-- | Metadata of the lexicon, including phonetic alphabetic used, language code, lexicon ARN, number of lexemes defined in the lexicon, and size of lexicon in bytes.
glrrsLexiconAttributes :: Lens' GetLexiconResponse (Maybe LexiconAttributes)
glrrsLexiconAttributes = lens _glrrsLexiconAttributes (\s a -> s {_glrrsLexiconAttributes = a})

-- | Lexicon object that provides name and the string content of the lexicon.
glrrsLexicon :: Lens' GetLexiconResponse (Maybe Lexicon)
glrrsLexicon = lens _glrrsLexicon (\s a -> s {_glrrsLexicon = a})

-- | -- | The response status code.
glrrsResponseStatus :: Lens' GetLexiconResponse Int
glrrsResponseStatus = lens _glrrsResponseStatus (\s a -> s {_glrrsResponseStatus = a})

instance NFData GetLexiconResponse
