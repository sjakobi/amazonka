{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneStatus where

import Network.AWS.ElasticSearch.Types.AutoTuneState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the current status of the Auto-Tune options.
--
--
--
-- /See:/ 'autoTuneStatus' smart constructor.
data AutoTuneStatus = AutoTuneStatus'
  { _atsUpdateVersion ::
      !(Maybe Nat),
    _atsErrorMessage :: !(Maybe Text),
    _atsPendingDeletion :: !(Maybe Bool),
    _atsCreationDate :: !POSIX,
    _atsUpdateDate :: !POSIX,
    _atsState :: !AutoTuneState
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoTuneStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atsUpdateVersion' - Specifies the Auto-Tune options latest version.
--
-- * 'atsErrorMessage' - Specifies the error message while enabling or disabling the Auto-Tune options.
--
-- * 'atsPendingDeletion' - Indicates whether the Elasticsearch domain is being deleted.
--
-- * 'atsCreationDate' - Timestamp which tells Auto-Tune options creation date .
--
-- * 'atsUpdateDate' - Timestamp which tells Auto-Tune options last updated time.
--
-- * 'atsState' - Specifies the @AutoTuneState@ for the Elasticsearch domain.
autoTuneStatus ::
  -- | 'atsCreationDate'
  UTCTime ->
  -- | 'atsUpdateDate'
  UTCTime ->
  -- | 'atsState'
  AutoTuneState ->
  AutoTuneStatus
autoTuneStatus pCreationDate_ pUpdateDate_ pState_ =
  AutoTuneStatus'
    { _atsUpdateVersion = Nothing,
      _atsErrorMessage = Nothing,
      _atsPendingDeletion = Nothing,
      _atsCreationDate = _Time # pCreationDate_,
      _atsUpdateDate = _Time # pUpdateDate_,
      _atsState = pState_
    }

-- | Specifies the Auto-Tune options latest version.
atsUpdateVersion :: Lens' AutoTuneStatus (Maybe Natural)
atsUpdateVersion = lens _atsUpdateVersion (\s a -> s {_atsUpdateVersion = a}) . mapping _Nat

-- | Specifies the error message while enabling or disabling the Auto-Tune options.
atsErrorMessage :: Lens' AutoTuneStatus (Maybe Text)
atsErrorMessage = lens _atsErrorMessage (\s a -> s {_atsErrorMessage = a})

-- | Indicates whether the Elasticsearch domain is being deleted.
atsPendingDeletion :: Lens' AutoTuneStatus (Maybe Bool)
atsPendingDeletion = lens _atsPendingDeletion (\s a -> s {_atsPendingDeletion = a})

-- | Timestamp which tells Auto-Tune options creation date .
atsCreationDate :: Lens' AutoTuneStatus UTCTime
atsCreationDate = lens _atsCreationDate (\s a -> s {_atsCreationDate = a}) . _Time

-- | Timestamp which tells Auto-Tune options last updated time.
atsUpdateDate :: Lens' AutoTuneStatus UTCTime
atsUpdateDate = lens _atsUpdateDate (\s a -> s {_atsUpdateDate = a}) . _Time

-- | Specifies the @AutoTuneState@ for the Elasticsearch domain.
atsState :: Lens' AutoTuneStatus AutoTuneState
atsState = lens _atsState (\s a -> s {_atsState = a})

instance FromJSON AutoTuneStatus where
  parseJSON =
    withObject
      "AutoTuneStatus"
      ( \x ->
          AutoTuneStatus'
            <$> (x .:? "UpdateVersion")
            <*> (x .:? "ErrorMessage")
            <*> (x .:? "PendingDeletion")
            <*> (x .: "CreationDate")
            <*> (x .: "UpdateDate")
            <*> (x .: "State")
      )

instance Hashable AutoTuneStatus

instance NFData AutoTuneStatus
