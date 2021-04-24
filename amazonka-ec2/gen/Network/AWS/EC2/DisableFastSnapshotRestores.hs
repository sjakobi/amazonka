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
-- Module      : Network.AWS.EC2.DisableFastSnapshotRestores
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables fast snapshot restores for the specified snapshots in the specified Availability Zones.
module Network.AWS.EC2.DisableFastSnapshotRestores
  ( -- * Creating a Request
    disableFastSnapshotRestores,
    DisableFastSnapshotRestores,

    -- * Request Lenses
    dfsrDryRun,
    dfsrAvailabilityZones,
    dfsrSourceSnapshotIds,

    -- * Destructuring the Response
    disableFastSnapshotRestoresResponse,
    DisableFastSnapshotRestoresResponse,

    -- * Response Lenses
    dfsrrrsUnsuccessful,
    dfsrrrsSuccessful,
    dfsrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disableFastSnapshotRestores' smart constructor.
data DisableFastSnapshotRestores = DisableFastSnapshotRestores'
  { _dfsrDryRun ::
      !(Maybe Bool),
    _dfsrAvailabilityZones ::
      ![Text],
    _dfsrSourceSnapshotIds ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisableFastSnapshotRestores' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dfsrAvailabilityZones' - One or more Availability Zones. For example, @us-east-2a@ .
--
-- * 'dfsrSourceSnapshotIds' - The IDs of one or more snapshots. For example, @snap-1234567890abcdef0@ .
disableFastSnapshotRestores ::
  DisableFastSnapshotRestores
disableFastSnapshotRestores =
  DisableFastSnapshotRestores'
    { _dfsrDryRun = Nothing,
      _dfsrAvailabilityZones = mempty,
      _dfsrSourceSnapshotIds = mempty
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dfsrDryRun :: Lens' DisableFastSnapshotRestores (Maybe Bool)
dfsrDryRun = lens _dfsrDryRun (\s a -> s {_dfsrDryRun = a})

-- | One or more Availability Zones. For example, @us-east-2a@ .
dfsrAvailabilityZones :: Lens' DisableFastSnapshotRestores [Text]
dfsrAvailabilityZones = lens _dfsrAvailabilityZones (\s a -> s {_dfsrAvailabilityZones = a}) . _Coerce

-- | The IDs of one or more snapshots. For example, @snap-1234567890abcdef0@ .
dfsrSourceSnapshotIds :: Lens' DisableFastSnapshotRestores [Text]
dfsrSourceSnapshotIds = lens _dfsrSourceSnapshotIds (\s a -> s {_dfsrSourceSnapshotIds = a}) . _Coerce

instance AWSRequest DisableFastSnapshotRestores where
  type
    Rs DisableFastSnapshotRestores =
      DisableFastSnapshotRestoresResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DisableFastSnapshotRestoresResponse'
            <$> ( x .@? "unsuccessful" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> ( x .@? "successful" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DisableFastSnapshotRestores

instance NFData DisableFastSnapshotRestores

instance ToHeaders DisableFastSnapshotRestores where
  toHeaders = const mempty

instance ToPath DisableFastSnapshotRestores where
  toPath = const "/"

instance ToQuery DisableFastSnapshotRestores where
  toQuery DisableFastSnapshotRestores' {..} =
    mconcat
      [ "Action"
          =: ("DisableFastSnapshotRestores" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dfsrDryRun,
        toQueryList
          "AvailabilityZone"
          _dfsrAvailabilityZones,
        toQueryList
          "SourceSnapshotId"
          _dfsrSourceSnapshotIds
      ]

-- | /See:/ 'disableFastSnapshotRestoresResponse' smart constructor.
data DisableFastSnapshotRestoresResponse = DisableFastSnapshotRestoresResponse'
  { _dfsrrrsUnsuccessful ::
      !( Maybe
           [DisableFastSnapshotRestoreErrorItem]
       ),
    _dfsrrrsSuccessful ::
      !( Maybe
           [DisableFastSnapshotRestoreSuccessItem]
       ),
    _dfsrrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisableFastSnapshotRestoresResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsrrrsUnsuccessful' - Information about the snapshots for which fast snapshot restores could not be disabled.
--
-- * 'dfsrrrsSuccessful' - Information about the snapshots for which fast snapshot restores were successfully disabled.
--
-- * 'dfsrrrsResponseStatus' - -- | The response status code.
disableFastSnapshotRestoresResponse ::
  -- | 'dfsrrrsResponseStatus'
  Int ->
  DisableFastSnapshotRestoresResponse
disableFastSnapshotRestoresResponse pResponseStatus_ =
  DisableFastSnapshotRestoresResponse'
    { _dfsrrrsUnsuccessful =
        Nothing,
      _dfsrrrsSuccessful = Nothing,
      _dfsrrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the snapshots for which fast snapshot restores could not be disabled.
dfsrrrsUnsuccessful :: Lens' DisableFastSnapshotRestoresResponse [DisableFastSnapshotRestoreErrorItem]
dfsrrrsUnsuccessful = lens _dfsrrrsUnsuccessful (\s a -> s {_dfsrrrsUnsuccessful = a}) . _Default . _Coerce

-- | Information about the snapshots for which fast snapshot restores were successfully disabled.
dfsrrrsSuccessful :: Lens' DisableFastSnapshotRestoresResponse [DisableFastSnapshotRestoreSuccessItem]
dfsrrrsSuccessful = lens _dfsrrrsSuccessful (\s a -> s {_dfsrrrsSuccessful = a}) . _Default . _Coerce

-- | -- | The response status code.
dfsrrrsResponseStatus :: Lens' DisableFastSnapshotRestoresResponse Int
dfsrrrsResponseStatus = lens _dfsrrrsResponseStatus (\s a -> s {_dfsrrrsResponseStatus = a})

instance NFData DisableFastSnapshotRestoresResponse
