{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.OfflineStoreStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.OfflineStoreStatus where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.OfflineStoreStatusValue

-- | The status of @OfflineStore@ .
--
--
--
-- /See:/ 'offlineStoreStatus' smart constructor.
data OfflineStoreStatus = OfflineStoreStatus'
  { _ossBlockedReason ::
      !(Maybe Text),
    _ossStatus ::
      !OfflineStoreStatusValue
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OfflineStoreStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ossBlockedReason' - The justification for why the OfflineStoreStatus is Blocked (if applicable).
--
-- * 'ossStatus' - An @OfflineStore@ status.
offlineStoreStatus ::
  -- | 'ossStatus'
  OfflineStoreStatusValue ->
  OfflineStoreStatus
offlineStoreStatus pStatus_ =
  OfflineStoreStatus'
    { _ossBlockedReason = Nothing,
      _ossStatus = pStatus_
    }

-- | The justification for why the OfflineStoreStatus is Blocked (if applicable).
ossBlockedReason :: Lens' OfflineStoreStatus (Maybe Text)
ossBlockedReason = lens _ossBlockedReason (\s a -> s {_ossBlockedReason = a})

-- | An @OfflineStore@ status.
ossStatus :: Lens' OfflineStoreStatus OfflineStoreStatusValue
ossStatus = lens _ossStatus (\s a -> s {_ossStatus = a})

instance FromJSON OfflineStoreStatus where
  parseJSON =
    withObject
      "OfflineStoreStatus"
      ( \x ->
          OfflineStoreStatus'
            <$> (x .:? "BlockedReason") <*> (x .: "Status")
      )

instance Hashable OfflineStoreStatus

instance NFData OfflineStoreStatus
