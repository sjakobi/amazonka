{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.UtteranceData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.UtteranceData where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about a single utterance that was made to your bot.
--
--
--
-- /See:/ 'utteranceData' smart constructor.
data UtteranceData = UtteranceData'
  { _udUtteranceString ::
      !(Maybe Text),
    _udDistinctUsers :: !(Maybe Int),
    _udCount :: !(Maybe Int),
    _udFirstUtteredDate :: !(Maybe POSIX),
    _udLastUtteredDate :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UtteranceData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udUtteranceString' - The text that was entered by the user or the text representation of an audio clip.
--
-- * 'udDistinctUsers' - The total number of individuals that used the utterance.
--
-- * 'udCount' - The number of times that the utterance was processed.
--
-- * 'udFirstUtteredDate' - The date that the utterance was first recorded.
--
-- * 'udLastUtteredDate' - The date that the utterance was last recorded.
utteranceData ::
  UtteranceData
utteranceData =
  UtteranceData'
    { _udUtteranceString = Nothing,
      _udDistinctUsers = Nothing,
      _udCount = Nothing,
      _udFirstUtteredDate = Nothing,
      _udLastUtteredDate = Nothing
    }

-- | The text that was entered by the user or the text representation of an audio clip.
udUtteranceString :: Lens' UtteranceData (Maybe Text)
udUtteranceString = lens _udUtteranceString (\s a -> s {_udUtteranceString = a})

-- | The total number of individuals that used the utterance.
udDistinctUsers :: Lens' UtteranceData (Maybe Int)
udDistinctUsers = lens _udDistinctUsers (\s a -> s {_udDistinctUsers = a})

-- | The number of times that the utterance was processed.
udCount :: Lens' UtteranceData (Maybe Int)
udCount = lens _udCount (\s a -> s {_udCount = a})

-- | The date that the utterance was first recorded.
udFirstUtteredDate :: Lens' UtteranceData (Maybe UTCTime)
udFirstUtteredDate = lens _udFirstUtteredDate (\s a -> s {_udFirstUtteredDate = a}) . mapping _Time

-- | The date that the utterance was last recorded.
udLastUtteredDate :: Lens' UtteranceData (Maybe UTCTime)
udLastUtteredDate = lens _udLastUtteredDate (\s a -> s {_udLastUtteredDate = a}) . mapping _Time

instance FromJSON UtteranceData where
  parseJSON =
    withObject
      "UtteranceData"
      ( \x ->
          UtteranceData'
            <$> (x .:? "utteranceString")
            <*> (x .:? "distinctUsers")
            <*> (x .:? "count")
            <*> (x .:? "firstUtteredDate")
            <*> (x .:? "lastUtteredDate")
      )

instance Hashable UtteranceData

instance NFData UtteranceData
