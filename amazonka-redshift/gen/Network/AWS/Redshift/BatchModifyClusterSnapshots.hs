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
-- Module      : Network.AWS.Redshift.BatchModifyClusterSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the settings for a set of cluster snapshots.
module Network.AWS.Redshift.BatchModifyClusterSnapshots
  ( -- * Creating a Request
    batchModifyClusterSnapshots,
    BatchModifyClusterSnapshots,

    -- * Request Lenses
    bmcsForce,
    bmcsManualSnapshotRetentionPeriod,
    bmcsSnapshotIdentifierList,

    -- * Destructuring the Response
    batchModifyClusterSnapshotsResponse,
    BatchModifyClusterSnapshotsResponse,

    -- * Response Lenses
    bmcsrrsResources,
    bmcsrrsErrors,
    bmcsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchModifyClusterSnapshots' smart constructor.
data BatchModifyClusterSnapshots = BatchModifyClusterSnapshots'
  { _bmcsForce ::
      !(Maybe Bool),
    _bmcsManualSnapshotRetentionPeriod ::
      !(Maybe Int),
    _bmcsSnapshotIdentifierList ::
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

-- | Creates a value of 'BatchModifyClusterSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bmcsForce' - A boolean value indicating whether to override an exception if the retention period has passed.
--
-- * 'bmcsManualSnapshotRetentionPeriod' - The number of days that a manual snapshot is retained. If you specify the value -1, the manual snapshot is retained indefinitely. The number must be either -1 or an integer between 1 and 3,653. If you decrease the manual snapshot retention period from its current value, existing manual snapshots that fall outside of the new retention period will return an error. If you want to suppress the errors and delete the snapshots, use the force option.
--
-- * 'bmcsSnapshotIdentifierList' - A list of snapshot identifiers you want to modify.
batchModifyClusterSnapshots ::
  BatchModifyClusterSnapshots
batchModifyClusterSnapshots =
  BatchModifyClusterSnapshots'
    { _bmcsForce = Nothing,
      _bmcsManualSnapshotRetentionPeriod = Nothing,
      _bmcsSnapshotIdentifierList = mempty
    }

-- | A boolean value indicating whether to override an exception if the retention period has passed.
bmcsForce :: Lens' BatchModifyClusterSnapshots (Maybe Bool)
bmcsForce = lens _bmcsForce (\s a -> s {_bmcsForce = a})

-- | The number of days that a manual snapshot is retained. If you specify the value -1, the manual snapshot is retained indefinitely. The number must be either -1 or an integer between 1 and 3,653. If you decrease the manual snapshot retention period from its current value, existing manual snapshots that fall outside of the new retention period will return an error. If you want to suppress the errors and delete the snapshots, use the force option.
bmcsManualSnapshotRetentionPeriod :: Lens' BatchModifyClusterSnapshots (Maybe Int)
bmcsManualSnapshotRetentionPeriod = lens _bmcsManualSnapshotRetentionPeriod (\s a -> s {_bmcsManualSnapshotRetentionPeriod = a})

-- | A list of snapshot identifiers you want to modify.
bmcsSnapshotIdentifierList :: Lens' BatchModifyClusterSnapshots [Text]
bmcsSnapshotIdentifierList = lens _bmcsSnapshotIdentifierList (\s a -> s {_bmcsSnapshotIdentifierList = a}) . _Coerce

instance AWSRequest BatchModifyClusterSnapshots where
  type
    Rs BatchModifyClusterSnapshots =
      BatchModifyClusterSnapshotsResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "BatchModifyClusterSnapshotsResult"
      ( \s h x ->
          BatchModifyClusterSnapshotsResponse'
            <$> ( x .@? "Resources" .!@ mempty
                    >>= may (parseXMLList "String")
                )
            <*> ( x .@? "Errors" .!@ mempty
                    >>= may (parseXMLList "SnapshotErrorMessage")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable BatchModifyClusterSnapshots

instance NFData BatchModifyClusterSnapshots

instance ToHeaders BatchModifyClusterSnapshots where
  toHeaders = const mempty

instance ToPath BatchModifyClusterSnapshots where
  toPath = const "/"

instance ToQuery BatchModifyClusterSnapshots where
  toQuery BatchModifyClusterSnapshots' {..} =
    mconcat
      [ "Action"
          =: ("BatchModifyClusterSnapshots" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "Force" =: _bmcsForce,
        "ManualSnapshotRetentionPeriod"
          =: _bmcsManualSnapshotRetentionPeriod,
        "SnapshotIdentifierList"
          =: toQueryList "String" _bmcsSnapshotIdentifierList
      ]

-- | /See:/ 'batchModifyClusterSnapshotsResponse' smart constructor.
data BatchModifyClusterSnapshotsResponse = BatchModifyClusterSnapshotsResponse'
  { _bmcsrrsResources ::
      !( Maybe
           [Text]
       ),
    _bmcsrrsErrors ::
      !( Maybe
           [SnapshotErrorMessage]
       ),
    _bmcsrrsResponseStatus ::
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

-- | Creates a value of 'BatchModifyClusterSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bmcsrrsResources' - A list of the snapshots that were modified.
--
-- * 'bmcsrrsErrors' - A list of any errors returned.
--
-- * 'bmcsrrsResponseStatus' - -- | The response status code.
batchModifyClusterSnapshotsResponse ::
  -- | 'bmcsrrsResponseStatus'
  Int ->
  BatchModifyClusterSnapshotsResponse
batchModifyClusterSnapshotsResponse pResponseStatus_ =
  BatchModifyClusterSnapshotsResponse'
    { _bmcsrrsResources =
        Nothing,
      _bmcsrrsErrors = Nothing,
      _bmcsrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of the snapshots that were modified.
bmcsrrsResources :: Lens' BatchModifyClusterSnapshotsResponse [Text]
bmcsrrsResources = lens _bmcsrrsResources (\s a -> s {_bmcsrrsResources = a}) . _Default . _Coerce

-- | A list of any errors returned.
bmcsrrsErrors :: Lens' BatchModifyClusterSnapshotsResponse [SnapshotErrorMessage]
bmcsrrsErrors = lens _bmcsrrsErrors (\s a -> s {_bmcsrrsErrors = a}) . _Default . _Coerce

-- | -- | The response status code.
bmcsrrsResponseStatus :: Lens' BatchModifyClusterSnapshotsResponse Int
bmcsrrsResponseStatus = lens _bmcsrrsResponseStatus (\s a -> s {_bmcsrrsResponseStatus = a})

instance NFData BatchModifyClusterSnapshotsResponse
