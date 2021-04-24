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
-- Module      : Network.AWS.DeviceFarm.ListDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about unique device types.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListDevices
  ( -- * Creating a Request
    listDevices,
    ListDevices,

    -- * Request Lenses
    ldNextToken,
    ldArn,
    ldFilters,

    -- * Destructuring the Response
    listDevicesResponse,
    ListDevicesResponse,

    -- * Response Lenses
    ldrrsNextToken,
    ldrrsDevices,
    ldrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the result of a list devices request.
--
--
--
-- /See:/ 'listDevices' smart constructor.
data ListDevices = ListDevices'
  { _ldNextToken ::
      !(Maybe Text),
    _ldArn :: !(Maybe Text),
    _ldFilters :: !(Maybe [DeviceFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'ldArn' - The Amazon Resource Name (ARN) of the project.
--
-- * 'ldFilters' - Used to select a set of devices. A filter is made up of an attribute, an operator, and one or more values.     * Attribute: The aspect of a device such as platform or model used as the selection criteria in a device filter. Allowed values include:     * ARN: The Amazon Resource Name (ARN) of the device (for example, @arn:aws:devicefarm:us-west-2::device:12345Example@ ).     * PLATFORM: The device platform. Valid values are ANDROID or IOS.     * OS_VERSION: The operating system version (for example, 10.3.2).     * MODEL: The device model (for example, iPad 5th Gen).     * AVAILABILITY: The current availability of the device. Valid values are AVAILABLE, HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.     * FORM_FACTOR: The device form factor. Valid values are PHONE or TABLET.     * MANUFACTURER: The device manufacturer (for example, Apple).     * REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access. Valid values are TRUE or FALSE.     * REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote debugging. Valid values are TRUE or FALSE. Because remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> , this attribute is ignored.     * INSTANCE_ARN: The Amazon Resource Name (ARN) of the device instance.     * INSTANCE_LABELS: The label of the device instance.     * FLEET_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.     * Operator: The filter operator.     * The EQUALS operator is available for every attribute except INSTANCE_LABELS.     * The CONTAINS operator is available for the INSTANCE_LABELS and MODEL attributes.     * The IN and NOT_IN operators are available for the ARN, OS_VERSION, MODEL, MANUFACTURER, and INSTANCE_ARN attributes.     * The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and GREATER_THAN_OR_EQUALS operators are also available for the OS_VERSION attribute.     * Values: An array of one or more filter values.     * The IN and NOT_IN operators take a values array that has one or more elements.     * The other operators require an array with a single element.     * In a request, the AVAILABILITY attribute takes the following values: AVAILABLE, HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.
listDevices ::
  ListDevices
listDevices =
  ListDevices'
    { _ldNextToken = Nothing,
      _ldArn = Nothing,
      _ldFilters = Nothing
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
ldNextToken :: Lens' ListDevices (Maybe Text)
ldNextToken = lens _ldNextToken (\s a -> s {_ldNextToken = a})

-- | The Amazon Resource Name (ARN) of the project.
ldArn :: Lens' ListDevices (Maybe Text)
ldArn = lens _ldArn (\s a -> s {_ldArn = a})

-- | Used to select a set of devices. A filter is made up of an attribute, an operator, and one or more values.     * Attribute: The aspect of a device such as platform or model used as the selection criteria in a device filter. Allowed values include:     * ARN: The Amazon Resource Name (ARN) of the device (for example, @arn:aws:devicefarm:us-west-2::device:12345Example@ ).     * PLATFORM: The device platform. Valid values are ANDROID or IOS.     * OS_VERSION: The operating system version (for example, 10.3.2).     * MODEL: The device model (for example, iPad 5th Gen).     * AVAILABILITY: The current availability of the device. Valid values are AVAILABLE, HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.     * FORM_FACTOR: The device form factor. Valid values are PHONE or TABLET.     * MANUFACTURER: The device manufacturer (for example, Apple).     * REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access. Valid values are TRUE or FALSE.     * REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote debugging. Valid values are TRUE or FALSE. Because remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> , this attribute is ignored.     * INSTANCE_ARN: The Amazon Resource Name (ARN) of the device instance.     * INSTANCE_LABELS: The label of the device instance.     * FLEET_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.     * Operator: The filter operator.     * The EQUALS operator is available for every attribute except INSTANCE_LABELS.     * The CONTAINS operator is available for the INSTANCE_LABELS and MODEL attributes.     * The IN and NOT_IN operators are available for the ARN, OS_VERSION, MODEL, MANUFACTURER, and INSTANCE_ARN attributes.     * The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and GREATER_THAN_OR_EQUALS operators are also available for the OS_VERSION attribute.     * Values: An array of one or more filter values.     * The IN and NOT_IN operators take a values array that has one or more elements.     * The other operators require an array with a single element.     * In a request, the AVAILABILITY attribute takes the following values: AVAILABLE, HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.
ldFilters :: Lens' ListDevices [DeviceFilter]
ldFilters = lens _ldFilters (\s a -> s {_ldFilters = a}) . _Default . _Coerce

instance AWSPager ListDevices where
  page rq rs
    | stop (rs ^. ldrrsNextToken) = Nothing
    | stop (rs ^. ldrrsDevices) = Nothing
    | otherwise =
      Just $ rq & ldNextToken .~ rs ^. ldrrsNextToken

instance AWSRequest ListDevices where
  type Rs ListDevices = ListDevicesResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListDevicesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "devices" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDevices

instance NFData ListDevices

instance ToHeaders ListDevices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.ListDevices" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDevices where
  toJSON ListDevices' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ldNextToken,
            ("arn" .=) <$> _ldArn,
            ("filters" .=) <$> _ldFilters
          ]
      )

instance ToPath ListDevices where
  toPath = const "/"

instance ToQuery ListDevices where
  toQuery = const mempty

-- | Represents the result of a list devices operation.
--
--
--
-- /See:/ 'listDevicesResponse' smart constructor.
data ListDevicesResponse = ListDevicesResponse'
  { _ldrrsNextToken ::
      !(Maybe Text),
    _ldrrsDevices ::
      !(Maybe [Device]),
    _ldrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDevicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrsNextToken' - If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
--
-- * 'ldrrsDevices' - Information about the devices.
--
-- * 'ldrrsResponseStatus' - -- | The response status code.
listDevicesResponse ::
  -- | 'ldrrsResponseStatus'
  Int ->
  ListDevicesResponse
listDevicesResponse pResponseStatus_ =
  ListDevicesResponse'
    { _ldrrsNextToken = Nothing,
      _ldrrsDevices = Nothing,
      _ldrrsResponseStatus = pResponseStatus_
    }

-- | If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
ldrrsNextToken :: Lens' ListDevicesResponse (Maybe Text)
ldrrsNextToken = lens _ldrrsNextToken (\s a -> s {_ldrrsNextToken = a})

-- | Information about the devices.
ldrrsDevices :: Lens' ListDevicesResponse [Device]
ldrrsDevices = lens _ldrrsDevices (\s a -> s {_ldrrsDevices = a}) . _Default . _Coerce

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDevicesResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

instance NFData ListDevicesResponse
