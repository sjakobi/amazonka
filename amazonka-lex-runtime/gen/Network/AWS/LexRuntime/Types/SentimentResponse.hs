{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexRuntime.Types.SentimentResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.SentimentResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The sentiment expressed in an utterance.
--
--
-- When the bot is configured to send utterances to Amazon Comprehend for sentiment analysis, this field structure contains the result of the analysis.
--
--
-- /See:/ 'sentimentResponse' smart constructor.
data SentimentResponse = SentimentResponse'
  { _srSentimentScore ::
      !(Maybe Text),
    _srSentimentLabel :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SentimentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srSentimentScore' - The likelihood that the sentiment was correctly inferred.
--
-- * 'srSentimentLabel' - The inferred sentiment that Amazon Comprehend has the highest confidence in.
sentimentResponse ::
  SentimentResponse
sentimentResponse =
  SentimentResponse'
    { _srSentimentScore = Nothing,
      _srSentimentLabel = Nothing
    }

-- | The likelihood that the sentiment was correctly inferred.
srSentimentScore :: Lens' SentimentResponse (Maybe Text)
srSentimentScore = lens _srSentimentScore (\s a -> s {_srSentimentScore = a})

-- | The inferred sentiment that Amazon Comprehend has the highest confidence in.
srSentimentLabel :: Lens' SentimentResponse (Maybe Text)
srSentimentLabel = lens _srSentimentLabel (\s a -> s {_srSentimentLabel = a})

instance FromJSON SentimentResponse where
  parseJSON =
    withObject
      "SentimentResponse"
      ( \x ->
          SentimentResponse'
            <$> (x .:? "sentimentScore")
            <*> (x .:? "sentimentLabel")
      )

instance Hashable SentimentResponse

instance NFData SentimentResponse
