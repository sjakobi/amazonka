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
-- Module      : Network.AWS.Comprehend.DetectSentiment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inspects text and returns an inference of the prevailing sentiment (@POSITIVE@ , @NEUTRAL@ , @MIXED@ , or @NEGATIVE@ ).
module Network.AWS.Comprehend.DetectSentiment
  ( -- * Creating a Request
    detectSentiment,
    DetectSentiment,

    -- * Request Lenses
    dText,
    dLanguageCode,

    -- * Destructuring the Response
    detectSentimentResponse,
    DetectSentimentResponse,

    -- * Response Lenses
    dsrrsSentimentScore,
    dsrrsSentiment,
    dsrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detectSentiment' smart constructor.
data DetectSentiment = DetectSentiment'
  { _dText ::
      !(Sensitive Text),
    _dLanguageCode :: !LanguageCode
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetectSentiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dText' - A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.
--
-- * 'dLanguageCode' - The language of the input documents. You can specify any of the primary languages supported by Amazon Comprehend. All documents must be in the same language.
detectSentiment ::
  -- | 'dText'
  Text ->
  -- | 'dLanguageCode'
  LanguageCode ->
  DetectSentiment
detectSentiment pText_ pLanguageCode_ =
  DetectSentiment'
    { _dText = _Sensitive # pText_,
      _dLanguageCode = pLanguageCode_
    }

-- | A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.
dText :: Lens' DetectSentiment Text
dText = lens _dText (\s a -> s {_dText = a}) . _Sensitive

-- | The language of the input documents. You can specify any of the primary languages supported by Amazon Comprehend. All documents must be in the same language.
dLanguageCode :: Lens' DetectSentiment LanguageCode
dLanguageCode = lens _dLanguageCode (\s a -> s {_dLanguageCode = a})

instance AWSRequest DetectSentiment where
  type Rs DetectSentiment = DetectSentimentResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DetectSentimentResponse'
            <$> (x .?> "SentimentScore")
            <*> (x .?> "Sentiment")
            <*> (pure (fromEnum s))
      )

instance Hashable DetectSentiment

instance NFData DetectSentiment

instance ToHeaders DetectSentiment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.DetectSentiment" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DetectSentiment where
  toJSON DetectSentiment' {..} =
    object
      ( catMaybes
          [ Just ("Text" .= _dText),
            Just ("LanguageCode" .= _dLanguageCode)
          ]
      )

instance ToPath DetectSentiment where
  toPath = const "/"

instance ToQuery DetectSentiment where
  toQuery = const mempty

-- | /See:/ 'detectSentimentResponse' smart constructor.
data DetectSentimentResponse = DetectSentimentResponse'
  { _dsrrsSentimentScore ::
      !(Maybe SentimentScore),
    _dsrrsSentiment ::
      !(Maybe SentimentType),
    _dsrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetectSentimentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsSentimentScore' - An object that lists the sentiments, and their corresponding confidence levels.
--
-- * 'dsrrsSentiment' - The inferred sentiment that Amazon Comprehend has the highest level of confidence in.
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
detectSentimentResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DetectSentimentResponse
detectSentimentResponse pResponseStatus_ =
  DetectSentimentResponse'
    { _dsrrsSentimentScore =
        Nothing,
      _dsrrsSentiment = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | An object that lists the sentiments, and their corresponding confidence levels.
dsrrsSentimentScore :: Lens' DetectSentimentResponse (Maybe SentimentScore)
dsrrsSentimentScore = lens _dsrrsSentimentScore (\s a -> s {_dsrrsSentimentScore = a})

-- | The inferred sentiment that Amazon Comprehend has the highest level of confidence in.
dsrrsSentiment :: Lens' DetectSentimentResponse (Maybe SentimentType)
dsrrsSentiment = lens _dsrrsSentiment (\s a -> s {_dsrrsSentiment = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DetectSentimentResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DetectSentimentResponse
