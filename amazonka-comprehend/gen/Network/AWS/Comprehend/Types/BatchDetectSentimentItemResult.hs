{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.BatchDetectSentimentItemResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.BatchDetectSentimentItemResult where

import Network.AWS.Comprehend.Types.SentimentScore
import Network.AWS.Comprehend.Types.SentimentType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.
--
--
--
-- /See:/ 'batchDetectSentimentItemResult' smart constructor.
data BatchDetectSentimentItemResult = BatchDetectSentimentItemResult'
  { _bdsirSentimentScore ::
      !( Maybe
           SentimentScore
       ),
    _bdsirSentiment ::
      !( Maybe
           SentimentType
       ),
    _bdsirIndex ::
      !( Maybe
           Int
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDetectSentimentItemResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdsirSentimentScore' - The level of confidence that Amazon Comprehend has in the accuracy of its sentiment detection.
--
-- * 'bdsirSentiment' - The sentiment detected in the document.
--
-- * 'bdsirIndex' - The zero-based index of the document in the input list.
batchDetectSentimentItemResult ::
  BatchDetectSentimentItemResult
batchDetectSentimentItemResult =
  BatchDetectSentimentItemResult'
    { _bdsirSentimentScore =
        Nothing,
      _bdsirSentiment = Nothing,
      _bdsirIndex = Nothing
    }

-- | The level of confidence that Amazon Comprehend has in the accuracy of its sentiment detection.
bdsirSentimentScore :: Lens' BatchDetectSentimentItemResult (Maybe SentimentScore)
bdsirSentimentScore = lens _bdsirSentimentScore (\s a -> s {_bdsirSentimentScore = a})

-- | The sentiment detected in the document.
bdsirSentiment :: Lens' BatchDetectSentimentItemResult (Maybe SentimentType)
bdsirSentiment = lens _bdsirSentiment (\s a -> s {_bdsirSentiment = a})

-- | The zero-based index of the document in the input list.
bdsirIndex :: Lens' BatchDetectSentimentItemResult (Maybe Int)
bdsirIndex = lens _bdsirIndex (\s a -> s {_bdsirIndex = a})

instance FromJSON BatchDetectSentimentItemResult where
  parseJSON =
    withObject
      "BatchDetectSentimentItemResult"
      ( \x ->
          BatchDetectSentimentItemResult'
            <$> (x .:? "SentimentScore")
            <*> (x .:? "Sentiment")
            <*> (x .:? "Index")
      )

instance Hashable BatchDetectSentimentItemResult

instance NFData BatchDetectSentimentItemResult
