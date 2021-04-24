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
-- Module      : Network.AWS.StorageGateway.DescribeVTLDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of virtual tape library (VTL) devices for the specified tape gateway. In the response, AWS Storage Gateway returns VTL device information.
--
--
-- This operation is only supported in the tape gateway type.
--
--
-- This operation returns paginated results.
module Network.AWS.StorageGateway.DescribeVTLDevices
  ( -- * Creating a Request
    describeVTLDevices,
    DescribeVTLDevices,

    -- * Request Lenses
    dvtldVTLDeviceARNs,
    dvtldLimit,
    dvtldMarker,
    dvtldGatewayARN,

    -- * Destructuring the Response
    describeVTLDevicesResponse,
    DescribeVTLDevicesResponse,

    -- * Response Lenses
    dvtldrrsVTLDevices,
    dvtldrrsGatewayARN,
    dvtldrrsMarker,
    dvtldrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | DescribeVTLDevicesInput
--
--
--
-- /See:/ 'describeVTLDevices' smart constructor.
data DescribeVTLDevices = DescribeVTLDevices'
  { _dvtldVTLDeviceARNs ::
      !(Maybe [Text]),
    _dvtldLimit :: !(Maybe Nat),
    _dvtldMarker :: !(Maybe Text),
    _dvtldGatewayARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeVTLDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvtldVTLDeviceARNs' - An array of strings, where each string represents the Amazon Resource Name (ARN) of a VTL device.
--
-- * 'dvtldLimit' - Specifies that the number of VTL devices described be limited to the specified number.
--
-- * 'dvtldMarker' - An opaque string that indicates the position at which to begin describing the VTL devices.
--
-- * 'dvtldGatewayARN' - Undocumented member.
describeVTLDevices ::
  -- | 'dvtldGatewayARN'
  Text ->
  DescribeVTLDevices
describeVTLDevices pGatewayARN_ =
  DescribeVTLDevices'
    { _dvtldVTLDeviceARNs = Nothing,
      _dvtldLimit = Nothing,
      _dvtldMarker = Nothing,
      _dvtldGatewayARN = pGatewayARN_
    }

-- | An array of strings, where each string represents the Amazon Resource Name (ARN) of a VTL device.
dvtldVTLDeviceARNs :: Lens' DescribeVTLDevices [Text]
dvtldVTLDeviceARNs = lens _dvtldVTLDeviceARNs (\s a -> s {_dvtldVTLDeviceARNs = a}) . _Default . _Coerce

-- | Specifies that the number of VTL devices described be limited to the specified number.
dvtldLimit :: Lens' DescribeVTLDevices (Maybe Natural)
dvtldLimit = lens _dvtldLimit (\s a -> s {_dvtldLimit = a}) . mapping _Nat

-- | An opaque string that indicates the position at which to begin describing the VTL devices.
dvtldMarker :: Lens' DescribeVTLDevices (Maybe Text)
dvtldMarker = lens _dvtldMarker (\s a -> s {_dvtldMarker = a})

-- | Undocumented member.
dvtldGatewayARN :: Lens' DescribeVTLDevices Text
dvtldGatewayARN = lens _dvtldGatewayARN (\s a -> s {_dvtldGatewayARN = a})

instance AWSPager DescribeVTLDevices where
  page rq rs
    | stop (rs ^. dvtldrrsMarker) = Nothing
    | stop (rs ^. dvtldrrsVTLDevices) = Nothing
    | otherwise =
      Just $ rq & dvtldMarker .~ rs ^. dvtldrrsMarker

instance AWSRequest DescribeVTLDevices where
  type
    Rs DescribeVTLDevices =
      DescribeVTLDevicesResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeVTLDevicesResponse'
            <$> (x .?> "VTLDevices" .!@ mempty)
            <*> (x .?> "GatewayARN")
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVTLDevices

instance NFData DescribeVTLDevices

instance ToHeaders DescribeVTLDevices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeVTLDevices" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeVTLDevices where
  toJSON DescribeVTLDevices' {..} =
    object
      ( catMaybes
          [ ("VTLDeviceARNs" .=) <$> _dvtldVTLDeviceARNs,
            ("Limit" .=) <$> _dvtldLimit,
            ("Marker" .=) <$> _dvtldMarker,
            Just ("GatewayARN" .= _dvtldGatewayARN)
          ]
      )

instance ToPath DescribeVTLDevices where
  toPath = const "/"

instance ToQuery DescribeVTLDevices where
  toQuery = const mempty

-- | DescribeVTLDevicesOutput
--
--
--
-- /See:/ 'describeVTLDevicesResponse' smart constructor.
data DescribeVTLDevicesResponse = DescribeVTLDevicesResponse'
  { _dvtldrrsVTLDevices ::
      !( Maybe
           [VTLDevice]
       ),
    _dvtldrrsGatewayARN ::
      !(Maybe Text),
    _dvtldrrsMarker ::
      !(Maybe Text),
    _dvtldrrsResponseStatus ::
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

-- | Creates a value of 'DescribeVTLDevicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvtldrrsVTLDevices' - An array of VTL device objects composed of the Amazon Resource Name (ARN) of the VTL devices.
--
-- * 'dvtldrrsGatewayARN' - Undocumented member.
--
-- * 'dvtldrrsMarker' - An opaque string that indicates the position at which the VTL devices that were fetched for description ended. Use the marker in your next request to fetch the next set of VTL devices in the list. If there are no more VTL devices to describe, this field does not appear in the response.
--
-- * 'dvtldrrsResponseStatus' - -- | The response status code.
describeVTLDevicesResponse ::
  -- | 'dvtldrrsResponseStatus'
  Int ->
  DescribeVTLDevicesResponse
describeVTLDevicesResponse pResponseStatus_ =
  DescribeVTLDevicesResponse'
    { _dvtldrrsVTLDevices =
        Nothing,
      _dvtldrrsGatewayARN = Nothing,
      _dvtldrrsMarker = Nothing,
      _dvtldrrsResponseStatus = pResponseStatus_
    }

-- | An array of VTL device objects composed of the Amazon Resource Name (ARN) of the VTL devices.
dvtldrrsVTLDevices :: Lens' DescribeVTLDevicesResponse [VTLDevice]
dvtldrrsVTLDevices = lens _dvtldrrsVTLDevices (\s a -> s {_dvtldrrsVTLDevices = a}) . _Default . _Coerce

-- | Undocumented member.
dvtldrrsGatewayARN :: Lens' DescribeVTLDevicesResponse (Maybe Text)
dvtldrrsGatewayARN = lens _dvtldrrsGatewayARN (\s a -> s {_dvtldrrsGatewayARN = a})

-- | An opaque string that indicates the position at which the VTL devices that were fetched for description ended. Use the marker in your next request to fetch the next set of VTL devices in the list. If there are no more VTL devices to describe, this field does not appear in the response.
dvtldrrsMarker :: Lens' DescribeVTLDevicesResponse (Maybe Text)
dvtldrrsMarker = lens _dvtldrrsMarker (\s a -> s {_dvtldrrsMarker = a})

-- | -- | The response status code.
dvtldrrsResponseStatus :: Lens' DescribeVTLDevicesResponse Int
dvtldrrsResponseStatus = lens _dvtldrrsResponseStatus (\s a -> s {_dvtldrrsResponseStatus = a})

instance NFData DescribeVTLDevicesResponse
