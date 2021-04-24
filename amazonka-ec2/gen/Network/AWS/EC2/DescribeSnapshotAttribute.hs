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
-- Module      : Network.AWS.EC2.DescribeSnapshotAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified attribute of the specified snapshot. You can specify only one attribute at a time.
--
--
-- For more information about EBS snapshots, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html Amazon EBS snapshots> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.DescribeSnapshotAttribute
  ( -- * Creating a Request
    describeSnapshotAttribute,
    DescribeSnapshotAttribute,

    -- * Request Lenses
    dsaDryRun,
    dsaAttribute,
    dsaSnapshotId,

    -- * Destructuring the Response
    describeSnapshotAttributeResponse,
    DescribeSnapshotAttributeResponse,

    -- * Response Lenses
    dsarrsProductCodes,
    dsarrsCreateVolumePermissions,
    dsarrsSnapshotId,
    dsarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSnapshotAttribute' smart constructor.
data DescribeSnapshotAttribute = DescribeSnapshotAttribute'
  { _dsaDryRun ::
      !(Maybe Bool),
    _dsaAttribute ::
      !SnapshotAttributeName,
    _dsaSnapshotId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeSnapshotAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dsaAttribute' - The snapshot attribute you would like to view.
--
-- * 'dsaSnapshotId' - The ID of the EBS snapshot.
describeSnapshotAttribute ::
  -- | 'dsaAttribute'
  SnapshotAttributeName ->
  -- | 'dsaSnapshotId'
  Text ->
  DescribeSnapshotAttribute
describeSnapshotAttribute pAttribute_ pSnapshotId_ =
  DescribeSnapshotAttribute'
    { _dsaDryRun = Nothing,
      _dsaAttribute = pAttribute_,
      _dsaSnapshotId = pSnapshotId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dsaDryRun :: Lens' DescribeSnapshotAttribute (Maybe Bool)
dsaDryRun = lens _dsaDryRun (\s a -> s {_dsaDryRun = a})

-- | The snapshot attribute you would like to view.
dsaAttribute :: Lens' DescribeSnapshotAttribute SnapshotAttributeName
dsaAttribute = lens _dsaAttribute (\s a -> s {_dsaAttribute = a})

-- | The ID of the EBS snapshot.
dsaSnapshotId :: Lens' DescribeSnapshotAttribute Text
dsaSnapshotId = lens _dsaSnapshotId (\s a -> s {_dsaSnapshotId = a})

instance AWSRequest DescribeSnapshotAttribute where
  type
    Rs DescribeSnapshotAttribute =
      DescribeSnapshotAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeSnapshotAttributeResponse'
            <$> ( x .@? "productCodes" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> ( x .@? "createVolumePermission" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "snapshotId")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSnapshotAttribute

instance NFData DescribeSnapshotAttribute

instance ToHeaders DescribeSnapshotAttribute where
  toHeaders = const mempty

instance ToPath DescribeSnapshotAttribute where
  toPath = const "/"

instance ToQuery DescribeSnapshotAttribute where
  toQuery DescribeSnapshotAttribute' {..} =
    mconcat
      [ "Action"
          =: ("DescribeSnapshotAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dsaDryRun,
        "Attribute" =: _dsaAttribute,
        "SnapshotId" =: _dsaSnapshotId
      ]

-- | /See:/ 'describeSnapshotAttributeResponse' smart constructor.
data DescribeSnapshotAttributeResponse = DescribeSnapshotAttributeResponse'
  { _dsarrsProductCodes ::
      !( Maybe
           [ProductCode]
       ),
    _dsarrsCreateVolumePermissions ::
      !( Maybe
           [CreateVolumePermission]
       ),
    _dsarrsSnapshotId ::
      !( Maybe
           Text
       ),
    _dsarrsResponseStatus ::
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

-- | Creates a value of 'DescribeSnapshotAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsarrsProductCodes' - The product codes.
--
-- * 'dsarrsCreateVolumePermissions' - The users and groups that have the permissions for creating volumes from the snapshot.
--
-- * 'dsarrsSnapshotId' - The ID of the EBS snapshot.
--
-- * 'dsarrsResponseStatus' - -- | The response status code.
describeSnapshotAttributeResponse ::
  -- | 'dsarrsResponseStatus'
  Int ->
  DescribeSnapshotAttributeResponse
describeSnapshotAttributeResponse pResponseStatus_ =
  DescribeSnapshotAttributeResponse'
    { _dsarrsProductCodes =
        Nothing,
      _dsarrsCreateVolumePermissions = Nothing,
      _dsarrsSnapshotId = Nothing,
      _dsarrsResponseStatus = pResponseStatus_
    }

-- | The product codes.
dsarrsProductCodes :: Lens' DescribeSnapshotAttributeResponse [ProductCode]
dsarrsProductCodes = lens _dsarrsProductCodes (\s a -> s {_dsarrsProductCodes = a}) . _Default . _Coerce

-- | The users and groups that have the permissions for creating volumes from the snapshot.
dsarrsCreateVolumePermissions :: Lens' DescribeSnapshotAttributeResponse [CreateVolumePermission]
dsarrsCreateVolumePermissions = lens _dsarrsCreateVolumePermissions (\s a -> s {_dsarrsCreateVolumePermissions = a}) . _Default . _Coerce

-- | The ID of the EBS snapshot.
dsarrsSnapshotId :: Lens' DescribeSnapshotAttributeResponse (Maybe Text)
dsarrsSnapshotId = lens _dsarrsSnapshotId (\s a -> s {_dsarrsSnapshotId = a})

-- | -- | The response status code.
dsarrsResponseStatus :: Lens' DescribeSnapshotAttributeResponse Int
dsarrsResponseStatus = lens _dsarrsResponseStatus (\s a -> s {_dsarrsResponseStatus = a})

instance NFData DescribeSnapshotAttributeResponse
