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
-- Module      : Network.AWS.EC2.ModifyInstancePlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the placement attributes for a specified instance. You can do the following:
--
--
--     * Modify the affinity between an instance and a <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html Dedicated Host> . When affinity is set to @host@ and the instance is not associated with a specific Dedicated Host, the next time the instance is launched, it is automatically associated with the host on which it lands. If the instance is restarted or rebooted, this relationship persists.
--
--     * Change the Dedicated Host with which an instance is associated.
--
--     * Change the instance tenancy of an instance from @host@ to @dedicated@ , or from @dedicated@ to @host@ .
--
--     * Move an instance to or from a <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html placement group> .
--
--
--
-- At least one attribute for affinity, host ID, tenancy, or placement group name must be specified in the request. Affinity and tenancy can be modified in the same request.
--
-- To modify the host ID, tenancy, placement group, or partition for an instance, the instance must be in the @stopped@ state.
module Network.AWS.EC2.ModifyInstancePlacement
  ( -- * Creating a Request
    modifyInstancePlacement,
    ModifyInstancePlacement,

    -- * Request Lenses
    mipGroupName,
    mipTenancy,
    mipAffinity,
    mipPartitionNumber,
    mipHostResourceGroupARN,
    mipHostId,
    mipInstanceId,

    -- * Destructuring the Response
    modifyInstancePlacementResponse,
    ModifyInstancePlacementResponse,

    -- * Response Lenses
    miprrsReturn,
    miprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyInstancePlacement' smart constructor.
data ModifyInstancePlacement = ModifyInstancePlacement'
  { _mipGroupName ::
      !(Maybe Text),
    _mipTenancy ::
      !(Maybe HostTenancy),
    _mipAffinity ::
      !(Maybe Affinity),
    _mipPartitionNumber ::
      !(Maybe Int),
    _mipHostResourceGroupARN ::
      !(Maybe Text),
    _mipHostId ::
      !(Maybe Text),
    _mipInstanceId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyInstancePlacement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mipGroupName' - The name of the placement group in which to place the instance. For spread placement groups, the instance must have a tenancy of @default@ . For cluster and partition placement groups, the instance must have a tenancy of @default@ or @dedicated@ . To remove an instance from a placement group, specify an empty string ("").
--
-- * 'mipTenancy' - The tenancy for the instance.
--
-- * 'mipAffinity' - The affinity setting for the instance.
--
-- * 'mipPartitionNumber' - Reserved for future use.
--
-- * 'mipHostResourceGroupARN' - The ARN of the host resource group in which to place the instance.
--
-- * 'mipHostId' - The ID of the Dedicated Host with which to associate the instance.
--
-- * 'mipInstanceId' - The ID of the instance that you are modifying.
modifyInstancePlacement ::
  -- | 'mipInstanceId'
  Text ->
  ModifyInstancePlacement
modifyInstancePlacement pInstanceId_ =
  ModifyInstancePlacement'
    { _mipGroupName = Nothing,
      _mipTenancy = Nothing,
      _mipAffinity = Nothing,
      _mipPartitionNumber = Nothing,
      _mipHostResourceGroupARN = Nothing,
      _mipHostId = Nothing,
      _mipInstanceId = pInstanceId_
    }

-- | The name of the placement group in which to place the instance. For spread placement groups, the instance must have a tenancy of @default@ . For cluster and partition placement groups, the instance must have a tenancy of @default@ or @dedicated@ . To remove an instance from a placement group, specify an empty string ("").
mipGroupName :: Lens' ModifyInstancePlacement (Maybe Text)
mipGroupName = lens _mipGroupName (\s a -> s {_mipGroupName = a})

-- | The tenancy for the instance.
mipTenancy :: Lens' ModifyInstancePlacement (Maybe HostTenancy)
mipTenancy = lens _mipTenancy (\s a -> s {_mipTenancy = a})

-- | The affinity setting for the instance.
mipAffinity :: Lens' ModifyInstancePlacement (Maybe Affinity)
mipAffinity = lens _mipAffinity (\s a -> s {_mipAffinity = a})

-- | Reserved for future use.
mipPartitionNumber :: Lens' ModifyInstancePlacement (Maybe Int)
mipPartitionNumber = lens _mipPartitionNumber (\s a -> s {_mipPartitionNumber = a})

-- | The ARN of the host resource group in which to place the instance.
mipHostResourceGroupARN :: Lens' ModifyInstancePlacement (Maybe Text)
mipHostResourceGroupARN = lens _mipHostResourceGroupARN (\s a -> s {_mipHostResourceGroupARN = a})

-- | The ID of the Dedicated Host with which to associate the instance.
mipHostId :: Lens' ModifyInstancePlacement (Maybe Text)
mipHostId = lens _mipHostId (\s a -> s {_mipHostId = a})

-- | The ID of the instance that you are modifying.
mipInstanceId :: Lens' ModifyInstancePlacement Text
mipInstanceId = lens _mipInstanceId (\s a -> s {_mipInstanceId = a})

instance AWSRequest ModifyInstancePlacement where
  type
    Rs ModifyInstancePlacement =
      ModifyInstancePlacementResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyInstancePlacementResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance Hashable ModifyInstancePlacement

instance NFData ModifyInstancePlacement

instance ToHeaders ModifyInstancePlacement where
  toHeaders = const mempty

instance ToPath ModifyInstancePlacement where
  toPath = const "/"

instance ToQuery ModifyInstancePlacement where
  toQuery ModifyInstancePlacement' {..} =
    mconcat
      [ "Action"
          =: ("ModifyInstancePlacement" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "GroupName" =: _mipGroupName,
        "Tenancy" =: _mipTenancy,
        "Affinity" =: _mipAffinity,
        "PartitionNumber" =: _mipPartitionNumber,
        "HostResourceGroupArn" =: _mipHostResourceGroupARN,
        "HostId" =: _mipHostId,
        "InstanceId" =: _mipInstanceId
      ]

-- | /See:/ 'modifyInstancePlacementResponse' smart constructor.
data ModifyInstancePlacementResponse = ModifyInstancePlacementResponse'
  { _miprrsReturn ::
      !( Maybe
           Bool
       ),
    _miprrsResponseStatus ::
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

-- | Creates a value of 'ModifyInstancePlacementResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miprrsReturn' - Is @true@ if the request succeeds, and an error otherwise.
--
-- * 'miprrsResponseStatus' - -- | The response status code.
modifyInstancePlacementResponse ::
  -- | 'miprrsResponseStatus'
  Int ->
  ModifyInstancePlacementResponse
modifyInstancePlacementResponse pResponseStatus_ =
  ModifyInstancePlacementResponse'
    { _miprrsReturn =
        Nothing,
      _miprrsResponseStatus = pResponseStatus_
    }

-- | Is @true@ if the request succeeds, and an error otherwise.
miprrsReturn :: Lens' ModifyInstancePlacementResponse (Maybe Bool)
miprrsReturn = lens _miprrsReturn (\s a -> s {_miprrsReturn = a})

-- | -- | The response status code.
miprrsResponseStatus :: Lens' ModifyInstancePlacementResponse Int
miprrsResponseStatus = lens _miprrsResponseStatus (\s a -> s {_miprrsResponseStatus = a})

instance NFData ModifyInstancePlacementResponse
