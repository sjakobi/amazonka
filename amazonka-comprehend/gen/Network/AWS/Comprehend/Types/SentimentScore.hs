{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.SentimentScore
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.SentimentScore where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the level of confidence that Amazon Comprehend has in the accuracy of its detection of sentiments.
--
--
--
-- /See:/ 'sentimentScore' smart constructor.
data SentimentScore = SentimentScore'
  { _ssNegative ::
      !(Maybe Double),
    _ssMixed :: !(Maybe Double),
    _ssPositive :: !(Maybe Double),
    _ssNeutral :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SentimentScore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssNegative' - The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @NEGATIVE@ sentiment.
--
-- * 'ssMixed' - The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @MIXED@ sentiment.
--
-- * 'ssPositive' - The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @POSITIVE@ sentiment.
--
-- * 'ssNeutral' - The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @NEUTRAL@ sentiment.
sentimentScore ::
  SentimentScore
sentimentScore =
  SentimentScore'
    { _ssNegative = Nothing,
      _ssMixed = Nothing,
      _ssPositive = Nothing,
      _ssNeutral = Nothing
    }

-- | The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @NEGATIVE@ sentiment.
ssNegative :: Lens' SentimentScore (Maybe Double)
ssNegative = lens _ssNegative (\s a -> s {_ssNegative = a})

-- | The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @MIXED@ sentiment.
ssMixed :: Lens' SentimentScore (Maybe Double)
ssMixed = lens _ssMixed (\s a -> s {_ssMixed = a})

-- | The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @POSITIVE@ sentiment.
ssPositive :: Lens' SentimentScore (Maybe Double)
ssPositive = lens _ssPositive (\s a -> s {_ssPositive = a})

-- | The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @NEUTRAL@ sentiment.
ssNeutral :: Lens' SentimentScore (Maybe Double)
ssNeutral = lens _ssNeutral (\s a -> s {_ssNeutral = a})

instance FromJSON SentimentScore where
  parseJSON =
    withObject
      "SentimentScore"
      ( \x ->
          SentimentScore'
            <$> (x .:? "Negative")
            <*> (x .:? "Mixed")
            <*> (x .:? "Positive")
            <*> (x .:? "Neutral")
      )

instance Hashable SentimentScore

instance NFData SentimentScore
