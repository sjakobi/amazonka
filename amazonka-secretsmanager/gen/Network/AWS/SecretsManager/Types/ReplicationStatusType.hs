{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecretsManager.Types.ReplicationStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecretsManager.Types.ReplicationStatusType where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SecretsManager.Types.StatusType

-- | A replication object consisting of a @RegionReplicationStatus@ object and includes a Region, KMSKeyId, status, and status message.
--
--
--
-- /See:/ 'replicationStatusType' smart constructor.
data ReplicationStatusType = ReplicationStatusType'
  { _rstStatusMessage ::
      !(Maybe Text),
    _rstStatus ::
      !(Maybe StatusType),
    _rstKMSKeyId ::
      !(Maybe Text),
    _rstLastAccessedDate ::
      !(Maybe POSIX),
    _rstRegion :: !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ReplicationStatusType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rstStatusMessage' - Status message such as "/Secret with this name already exists in this region/ ".
--
-- * 'rstStatus' - The status can be @InProgress@ , @Failed@ , or @InSync@ .
--
-- * 'rstKMSKeyId' - Can be an @ARN@ , @Key ID@ , or @Alias@ .
--
-- * 'rstLastAccessedDate' - The date that you last accessed the secret in the Region.
--
-- * 'rstRegion' - The Region where replication occurs.
replicationStatusType ::
  ReplicationStatusType
replicationStatusType =
  ReplicationStatusType'
    { _rstStatusMessage = Nothing,
      _rstStatus = Nothing,
      _rstKMSKeyId = Nothing,
      _rstLastAccessedDate = Nothing,
      _rstRegion = Nothing
    }

-- | Status message such as "/Secret with this name already exists in this region/ ".
rstStatusMessage :: Lens' ReplicationStatusType (Maybe Text)
rstStatusMessage = lens _rstStatusMessage (\s a -> s {_rstStatusMessage = a})

-- | The status can be @InProgress@ , @Failed@ , or @InSync@ .
rstStatus :: Lens' ReplicationStatusType (Maybe StatusType)
rstStatus = lens _rstStatus (\s a -> s {_rstStatus = a})

-- | Can be an @ARN@ , @Key ID@ , or @Alias@ .
rstKMSKeyId :: Lens' ReplicationStatusType (Maybe Text)
rstKMSKeyId = lens _rstKMSKeyId (\s a -> s {_rstKMSKeyId = a})

-- | The date that you last accessed the secret in the Region.
rstLastAccessedDate :: Lens' ReplicationStatusType (Maybe UTCTime)
rstLastAccessedDate = lens _rstLastAccessedDate (\s a -> s {_rstLastAccessedDate = a}) . mapping _Time

-- | The Region where replication occurs.
rstRegion :: Lens' ReplicationStatusType (Maybe Text)
rstRegion = lens _rstRegion (\s a -> s {_rstRegion = a})

instance FromJSON ReplicationStatusType where
  parseJSON =
    withObject
      "ReplicationStatusType"
      ( \x ->
          ReplicationStatusType'
            <$> (x .:? "StatusMessage")
            <*> (x .:? "Status")
            <*> (x .:? "KmsKeyId")
            <*> (x .:? "LastAccessedDate")
            <*> (x .:? "Region")
      )

instance Hashable ReplicationStatusType

instance NFData ReplicationStatusType
