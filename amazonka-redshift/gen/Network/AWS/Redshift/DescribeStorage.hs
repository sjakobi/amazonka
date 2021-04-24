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
-- Module      : Network.AWS.Redshift.DescribeStorage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns account level backups storage size and provisional storage.
module Network.AWS.Redshift.DescribeStorage
  ( -- * Creating a Request
    describeStorage,
    DescribeStorage,

    -- * Destructuring the Response
    describeStorageResponse,
    DescribeStorageResponse,

    -- * Response Lenses
    dsrrsTotalProvisionedStorageInMegaBytes,
    dsrrsTotalBackupSizeInMegaBytes,
    dsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStorage' smart constructor.
data DescribeStorage = DescribeStorage'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStorage' with the minimum fields required to make a request.
describeStorage ::
  DescribeStorage
describeStorage = DescribeStorage'

instance AWSRequest DescribeStorage where
  type Rs DescribeStorage = DescribeStorageResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeStorageResult"
      ( \s h x ->
          DescribeStorageResponse'
            <$> (x .@? "TotalProvisionedStorageInMegaBytes")
            <*> (x .@? "TotalBackupSizeInMegaBytes")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeStorage

instance NFData DescribeStorage

instance ToHeaders DescribeStorage where
  toHeaders = const mempty

instance ToPath DescribeStorage where
  toPath = const "/"

instance ToQuery DescribeStorage where
  toQuery =
    const
      ( mconcat
          [ "Action" =: ("DescribeStorage" :: ByteString),
            "Version" =: ("2012-12-01" :: ByteString)
          ]
      )

-- | /See:/ 'describeStorageResponse' smart constructor.
data DescribeStorageResponse = DescribeStorageResponse'
  { _dsrrsTotalProvisionedStorageInMegaBytes ::
      !(Maybe Double),
    _dsrrsTotalBackupSizeInMegaBytes ::
      !(Maybe Double),
    _dsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeStorageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsTotalProvisionedStorageInMegaBytes' - The total amount of storage currently provisioned.
--
-- * 'dsrrsTotalBackupSizeInMegaBytes' - The total amount of storage currently used for snapshots.
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
describeStorageResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DescribeStorageResponse
describeStorageResponse pResponseStatus_ =
  DescribeStorageResponse'
    { _dsrrsTotalProvisionedStorageInMegaBytes =
        Nothing,
      _dsrrsTotalBackupSizeInMegaBytes = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | The total amount of storage currently provisioned.
dsrrsTotalProvisionedStorageInMegaBytes :: Lens' DescribeStorageResponse (Maybe Double)
dsrrsTotalProvisionedStorageInMegaBytes = lens _dsrrsTotalProvisionedStorageInMegaBytes (\s a -> s {_dsrrsTotalProvisionedStorageInMegaBytes = a})

-- | The total amount of storage currently used for snapshots.
dsrrsTotalBackupSizeInMegaBytes :: Lens' DescribeStorageResponse (Maybe Double)
dsrrsTotalBackupSizeInMegaBytes = lens _dsrrsTotalBackupSizeInMegaBytes (\s a -> s {_dsrrsTotalBackupSizeInMegaBytes = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DescribeStorageResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DescribeStorageResponse
