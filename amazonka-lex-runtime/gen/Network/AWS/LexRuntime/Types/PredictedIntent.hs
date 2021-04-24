{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexRuntime.Types.PredictedIntent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.PredictedIntent where

import Network.AWS.Lens
import Network.AWS.LexRuntime.Types.IntentConfidence
import Network.AWS.Prelude

-- | An intent that Amazon Lex suggests satisfies the user's intent. Includes the name of the intent, the confidence that Amazon Lex has that the user's intent is satisfied, and the slots defined for the intent.
--
--
--
-- /See:/ 'predictedIntent' smart constructor.
data PredictedIntent = PredictedIntent'
  { _piIntentName ::
      !(Maybe Text),
    _piSlots ::
      !(Maybe (Sensitive (Map Text Text))),
    _piNluIntentConfidence ::
      !(Maybe IntentConfidence)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PredictedIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piIntentName' - The name of the intent that Amazon Lex suggests satisfies the user's intent.
--
-- * 'piSlots' - The slot and slot values associated with the predicted intent.
--
-- * 'piNluIntentConfidence' - Indicates how confident Amazon Lex is that an intent satisfies the user's intent.
predictedIntent ::
  PredictedIntent
predictedIntent =
  PredictedIntent'
    { _piIntentName = Nothing,
      _piSlots = Nothing,
      _piNluIntentConfidence = Nothing
    }

-- | The name of the intent that Amazon Lex suggests satisfies the user's intent.
piIntentName :: Lens' PredictedIntent (Maybe Text)
piIntentName = lens _piIntentName (\s a -> s {_piIntentName = a})

-- | The slot and slot values associated with the predicted intent.
piSlots :: Lens' PredictedIntent (Maybe (HashMap Text Text))
piSlots = lens _piSlots (\s a -> s {_piSlots = a}) . mapping (_Sensitive . _Map)

-- | Indicates how confident Amazon Lex is that an intent satisfies the user's intent.
piNluIntentConfidence :: Lens' PredictedIntent (Maybe IntentConfidence)
piNluIntentConfidence = lens _piNluIntentConfidence (\s a -> s {_piNluIntentConfidence = a})

instance FromJSON PredictedIntent where
  parseJSON =
    withObject
      "PredictedIntent"
      ( \x ->
          PredictedIntent'
            <$> (x .:? "intentName")
            <*> (x .:? "slots" .!= mempty)
            <*> (x .:? "nluIntentConfidence")
      )

instance Hashable PredictedIntent

instance NFData PredictedIntent
