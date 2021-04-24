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
-- Module      : Network.AWS.Snowball.UpdateCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- While a cluster's @ClusterState@ value is in the @AwaitingQuorum@ state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.
module Network.AWS.Snowball.UpdateCluster
  ( -- * Creating a Request
    updateCluster,
    UpdateCluster,

    -- * Request Lenses
    ucRoleARN,
    ucShippingOption,
    ucResources,
    ucDescription,
    ucAddressId,
    ucForwardingAddressId,
    ucNotification,
    ucClusterId,

    -- * Destructuring the Response
    updateClusterResponse,
    UpdateClusterResponse,

    -- * Response Lenses
    ucrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Snowball.Types

-- | /See:/ 'updateCluster' smart constructor.
data UpdateCluster = UpdateCluster'
  { _ucRoleARN ::
      !(Maybe Text),
    _ucShippingOption ::
      !(Maybe ShippingOption),
    _ucResources :: !(Maybe JobResource),
    _ucDescription :: !(Maybe Text),
    _ucAddressId :: !(Maybe Text),
    _ucForwardingAddressId :: !(Maybe Text),
    _ucNotification :: !(Maybe Notification),
    _ucClusterId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucRoleARN' - The new role Amazon Resource Name (ARN) that you want to associate with this cluster. To create a role ARN, use the <https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html CreateRole> API action in AWS Identity and Access Management (IAM).
--
-- * 'ucShippingOption' - The updated shipping option value of this cluster's 'ShippingDetails' object.
--
-- * 'ucResources' - The updated arrays of 'JobResource' objects that can include updated 'S3Resource' objects or 'LambdaResource' objects.
--
-- * 'ucDescription' - The updated description of this cluster.
--
-- * 'ucAddressId' - The ID of the updated 'Address' object.
--
-- * 'ucForwardingAddressId' - The updated ID for the forwarding address for a cluster. This field is not supported in most regions.
--
-- * 'ucNotification' - The new or updated 'Notification' object.
--
-- * 'ucClusterId' - The cluster ID of the cluster that you want to update, for example @CID123e4567-e89b-12d3-a456-426655440000@ .
updateCluster ::
  -- | 'ucClusterId'
  Text ->
  UpdateCluster
updateCluster pClusterId_ =
  UpdateCluster'
    { _ucRoleARN = Nothing,
      _ucShippingOption = Nothing,
      _ucResources = Nothing,
      _ucDescription = Nothing,
      _ucAddressId = Nothing,
      _ucForwardingAddressId = Nothing,
      _ucNotification = Nothing,
      _ucClusterId = pClusterId_
    }

-- | The new role Amazon Resource Name (ARN) that you want to associate with this cluster. To create a role ARN, use the <https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html CreateRole> API action in AWS Identity and Access Management (IAM).
ucRoleARN :: Lens' UpdateCluster (Maybe Text)
ucRoleARN = lens _ucRoleARN (\s a -> s {_ucRoleARN = a})

-- | The updated shipping option value of this cluster's 'ShippingDetails' object.
ucShippingOption :: Lens' UpdateCluster (Maybe ShippingOption)
ucShippingOption = lens _ucShippingOption (\s a -> s {_ucShippingOption = a})

-- | The updated arrays of 'JobResource' objects that can include updated 'S3Resource' objects or 'LambdaResource' objects.
ucResources :: Lens' UpdateCluster (Maybe JobResource)
ucResources = lens _ucResources (\s a -> s {_ucResources = a})

-- | The updated description of this cluster.
ucDescription :: Lens' UpdateCluster (Maybe Text)
ucDescription = lens _ucDescription (\s a -> s {_ucDescription = a})

-- | The ID of the updated 'Address' object.
ucAddressId :: Lens' UpdateCluster (Maybe Text)
ucAddressId = lens _ucAddressId (\s a -> s {_ucAddressId = a})

-- | The updated ID for the forwarding address for a cluster. This field is not supported in most regions.
ucForwardingAddressId :: Lens' UpdateCluster (Maybe Text)
ucForwardingAddressId = lens _ucForwardingAddressId (\s a -> s {_ucForwardingAddressId = a})

-- | The new or updated 'Notification' object.
ucNotification :: Lens' UpdateCluster (Maybe Notification)
ucNotification = lens _ucNotification (\s a -> s {_ucNotification = a})

-- | The cluster ID of the cluster that you want to update, for example @CID123e4567-e89b-12d3-a456-426655440000@ .
ucClusterId :: Lens' UpdateCluster Text
ucClusterId = lens _ucClusterId (\s a -> s {_ucClusterId = a})

instance AWSRequest UpdateCluster where
  type Rs UpdateCluster = UpdateClusterResponse
  request = postJSON snowball
  response =
    receiveEmpty
      ( \s h x ->
          UpdateClusterResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateCluster

instance NFData UpdateCluster

instance ToHeaders UpdateCluster where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSIESnowballJobManagementService.UpdateCluster" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateCluster where
  toJSON UpdateCluster' {..} =
    object
      ( catMaybes
          [ ("RoleARN" .=) <$> _ucRoleARN,
            ("ShippingOption" .=) <$> _ucShippingOption,
            ("Resources" .=) <$> _ucResources,
            ("Description" .=) <$> _ucDescription,
            ("AddressId" .=) <$> _ucAddressId,
            ("ForwardingAddressId" .=)
              <$> _ucForwardingAddressId,
            ("Notification" .=) <$> _ucNotification,
            Just ("ClusterId" .= _ucClusterId)
          ]
      )

instance ToPath UpdateCluster where
  toPath = const "/"

instance ToQuery UpdateCluster where
  toQuery = const mempty

-- | /See:/ 'updateClusterResponse' smart constructor.
newtype UpdateClusterResponse = UpdateClusterResponse'
  { _ucrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrrsResponseStatus' - -- | The response status code.
updateClusterResponse ::
  -- | 'ucrrsResponseStatus'
  Int ->
  UpdateClusterResponse
updateClusterResponse pResponseStatus_ =
  UpdateClusterResponse'
    { _ucrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ucrrsResponseStatus :: Lens' UpdateClusterResponse Int
ucrrsResponseStatus = lens _ucrrsResponseStatus (\s a -> s {_ucrrsResponseStatus = a})

instance NFData UpdateClusterResponse
