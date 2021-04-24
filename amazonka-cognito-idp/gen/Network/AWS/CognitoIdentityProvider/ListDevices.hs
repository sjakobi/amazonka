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
-- Module      : Network.AWS.CognitoIdentityProvider.ListDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the devices.
module Network.AWS.CognitoIdentityProvider.ListDevices
  ( -- * Creating a Request
    listDevices,
    ListDevices,

    -- * Request Lenses
    ldPaginationToken,
    ldLimit,
    ldAccessToken,

    -- * Destructuring the Response
    listDevicesResponse,
    ListDevicesResponse,

    -- * Response Lenses
    ldrrsDevices,
    ldrrsPaginationToken,
    ldrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to list the devices.
--
--
--
-- /See:/ 'listDevices' smart constructor.
data ListDevices = ListDevices'
  { _ldPaginationToken ::
      !(Maybe Text),
    _ldLimit :: !(Maybe Nat),
    _ldAccessToken :: !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldPaginationToken' - The pagination token for the list request.
--
-- * 'ldLimit' - The limit of the device request.
--
-- * 'ldAccessToken' - The access tokens for the request to list devices.
listDevices ::
  -- | 'ldAccessToken'
  Text ->
  ListDevices
listDevices pAccessToken_ =
  ListDevices'
    { _ldPaginationToken = Nothing,
      _ldLimit = Nothing,
      _ldAccessToken = _Sensitive # pAccessToken_
    }

-- | The pagination token for the list request.
ldPaginationToken :: Lens' ListDevices (Maybe Text)
ldPaginationToken = lens _ldPaginationToken (\s a -> s {_ldPaginationToken = a})

-- | The limit of the device request.
ldLimit :: Lens' ListDevices (Maybe Natural)
ldLimit = lens _ldLimit (\s a -> s {_ldLimit = a}) . mapping _Nat

-- | The access tokens for the request to list devices.
ldAccessToken :: Lens' ListDevices Text
ldAccessToken = lens _ldAccessToken (\s a -> s {_ldAccessToken = a}) . _Sensitive

instance AWSRequest ListDevices where
  type Rs ListDevices = ListDevicesResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          ListDevicesResponse'
            <$> (x .?> "Devices" .!@ mempty)
            <*> (x .?> "PaginationToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListDevices

instance NFData ListDevices

instance ToHeaders ListDevices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.ListDevices" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDevices where
  toJSON ListDevices' {..} =
    object
      ( catMaybes
          [ ("PaginationToken" .=) <$> _ldPaginationToken,
            ("Limit" .=) <$> _ldLimit,
            Just ("AccessToken" .= _ldAccessToken)
          ]
      )

instance ToPath ListDevices where
  toPath = const "/"

instance ToQuery ListDevices where
  toQuery = const mempty

-- | Represents the response to list devices.
--
--
--
-- /See:/ 'listDevicesResponse' smart constructor.
data ListDevicesResponse = ListDevicesResponse'
  { _ldrrsDevices ::
      !(Maybe [DeviceType]),
    _ldrrsPaginationToken ::
      !(Maybe Text),
    _ldrrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDevicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrsDevices' - The devices returned in the list devices response.
--
-- * 'ldrrsPaginationToken' - The pagination token for the list device response.
--
-- * 'ldrrsResponseStatus' - -- | The response status code.
listDevicesResponse ::
  -- | 'ldrrsResponseStatus'
  Int ->
  ListDevicesResponse
listDevicesResponse pResponseStatus_ =
  ListDevicesResponse'
    { _ldrrsDevices = Nothing,
      _ldrrsPaginationToken = Nothing,
      _ldrrsResponseStatus = pResponseStatus_
    }

-- | The devices returned in the list devices response.
ldrrsDevices :: Lens' ListDevicesResponse [DeviceType]
ldrrsDevices = lens _ldrrsDevices (\s a -> s {_ldrrsDevices = a}) . _Default . _Coerce

-- | The pagination token for the list device response.
ldrrsPaginationToken :: Lens' ListDevicesResponse (Maybe Text)
ldrrsPaginationToken = lens _ldrrsPaginationToken (\s a -> s {_ldrrsPaginationToken = a})

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDevicesResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

instance NFData ListDevicesResponse
