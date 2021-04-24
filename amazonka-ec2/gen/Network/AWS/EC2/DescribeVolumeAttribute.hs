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
-- Module      : Network.AWS.EC2.DescribeVolumeAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified attribute of the specified volume. You can specify only one attribute at a time.
--
--
-- For more information about EBS volumes, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html Amazon EBS volumes> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.DescribeVolumeAttribute
  ( -- * Creating a Request
    describeVolumeAttribute,
    DescribeVolumeAttribute,

    -- * Request Lenses
    dvavDryRun,
    dvavAttribute,
    dvavVolumeId,

    -- * Destructuring the Response
    describeVolumeAttributeResponse,
    DescribeVolumeAttributeResponse,

    -- * Response Lenses
    dvarvrsProductCodes,
    dvarvrsVolumeId,
    dvarvrsAutoEnableIO,
    dvarvrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeVolumeAttribute' smart constructor.
data DescribeVolumeAttribute = DescribeVolumeAttribute'
  { _dvavDryRun ::
      !(Maybe Bool),
    _dvavAttribute ::
      !VolumeAttributeName,
    _dvavVolumeId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeVolumeAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvavDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dvavAttribute' - The attribute of the volume. This parameter is required.
--
-- * 'dvavVolumeId' - The ID of the volume.
describeVolumeAttribute ::
  -- | 'dvavAttribute'
  VolumeAttributeName ->
  -- | 'dvavVolumeId'
  Text ->
  DescribeVolumeAttribute
describeVolumeAttribute pAttribute_ pVolumeId_ =
  DescribeVolumeAttribute'
    { _dvavDryRun = Nothing,
      _dvavAttribute = pAttribute_,
      _dvavVolumeId = pVolumeId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dvavDryRun :: Lens' DescribeVolumeAttribute (Maybe Bool)
dvavDryRun = lens _dvavDryRun (\s a -> s {_dvavDryRun = a})

-- | The attribute of the volume. This parameter is required.
dvavAttribute :: Lens' DescribeVolumeAttribute VolumeAttributeName
dvavAttribute = lens _dvavAttribute (\s a -> s {_dvavAttribute = a})

-- | The ID of the volume.
dvavVolumeId :: Lens' DescribeVolumeAttribute Text
dvavVolumeId = lens _dvavVolumeId (\s a -> s {_dvavVolumeId = a})

instance AWSRequest DescribeVolumeAttribute where
  type
    Rs DescribeVolumeAttribute =
      DescribeVolumeAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeVolumeAttributeResponse'
            <$> ( x .@? "productCodes" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "volumeId")
            <*> (x .@? "autoEnableIO")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVolumeAttribute

instance NFData DescribeVolumeAttribute

instance ToHeaders DescribeVolumeAttribute where
  toHeaders = const mempty

instance ToPath DescribeVolumeAttribute where
  toPath = const "/"

instance ToQuery DescribeVolumeAttribute where
  toQuery DescribeVolumeAttribute' {..} =
    mconcat
      [ "Action"
          =: ("DescribeVolumeAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dvavDryRun,
        "Attribute" =: _dvavAttribute,
        "VolumeId" =: _dvavVolumeId
      ]

-- | /See:/ 'describeVolumeAttributeResponse' smart constructor.
data DescribeVolumeAttributeResponse = DescribeVolumeAttributeResponse'
  { _dvarvrsProductCodes ::
      !( Maybe
           [ProductCode]
       ),
    _dvarvrsVolumeId ::
      !( Maybe
           Text
       ),
    _dvarvrsAutoEnableIO ::
      !( Maybe
           AttributeBooleanValue
       ),
    _dvarvrsResponseStatus ::
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

-- | Creates a value of 'DescribeVolumeAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvarvrsProductCodes' - A list of product codes.
--
-- * 'dvarvrsVolumeId' - The ID of the volume.
--
-- * 'dvarvrsAutoEnableIO' - The state of @autoEnableIO@ attribute.
--
-- * 'dvarvrsResponseStatus' - -- | The response status code.
describeVolumeAttributeResponse ::
  -- | 'dvarvrsResponseStatus'
  Int ->
  DescribeVolumeAttributeResponse
describeVolumeAttributeResponse pResponseStatus_ =
  DescribeVolumeAttributeResponse'
    { _dvarvrsProductCodes =
        Nothing,
      _dvarvrsVolumeId = Nothing,
      _dvarvrsAutoEnableIO = Nothing,
      _dvarvrsResponseStatus = pResponseStatus_
    }

-- | A list of product codes.
dvarvrsProductCodes :: Lens' DescribeVolumeAttributeResponse [ProductCode]
dvarvrsProductCodes = lens _dvarvrsProductCodes (\s a -> s {_dvarvrsProductCodes = a}) . _Default . _Coerce

-- | The ID of the volume.
dvarvrsVolumeId :: Lens' DescribeVolumeAttributeResponse (Maybe Text)
dvarvrsVolumeId = lens _dvarvrsVolumeId (\s a -> s {_dvarvrsVolumeId = a})

-- | The state of @autoEnableIO@ attribute.
dvarvrsAutoEnableIO :: Lens' DescribeVolumeAttributeResponse (Maybe AttributeBooleanValue)
dvarvrsAutoEnableIO = lens _dvarvrsAutoEnableIO (\s a -> s {_dvarvrsAutoEnableIO = a})

-- | -- | The response status code.
dvarvrsResponseStatus :: Lens' DescribeVolumeAttributeResponse Int
dvarvrsResponseStatus = lens _dvarvrsResponseStatus (\s a -> s {_dvarvrsResponseStatus = a})

instance NFData DescribeVolumeAttributeResponse
