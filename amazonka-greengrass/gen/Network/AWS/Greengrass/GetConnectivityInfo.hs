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
-- Module      : Network.AWS.Greengrass.GetConnectivityInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the connectivity information for a core.
module Network.AWS.Greengrass.GetConnectivityInfo
  ( -- * Creating a Request
    getConnectivityInfo,
    GetConnectivityInfo,

    -- * Request Lenses
    gciThingName,

    -- * Destructuring the Response
    getConnectivityInfoResponse,
    GetConnectivityInfoResponse,

    -- * Response Lenses
    gcirrsMessage,
    gcirrsConnectivityInfo,
    gcirrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getConnectivityInfo' smart constructor.
newtype GetConnectivityInfo = GetConnectivityInfo'
  { _gciThingName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetConnectivityInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gciThingName' - The thing name.
getConnectivityInfo ::
  -- | 'gciThingName'
  Text ->
  GetConnectivityInfo
getConnectivityInfo pThingName_ =
  GetConnectivityInfo' {_gciThingName = pThingName_}

-- | The thing name.
gciThingName :: Lens' GetConnectivityInfo Text
gciThingName = lens _gciThingName (\s a -> s {_gciThingName = a})

instance AWSRequest GetConnectivityInfo where
  type
    Rs GetConnectivityInfo =
      GetConnectivityInfoResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetConnectivityInfoResponse'
            <$> (x .?> "message")
            <*> (x .?> "ConnectivityInfo" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetConnectivityInfo

instance NFData GetConnectivityInfo

instance ToHeaders GetConnectivityInfo where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetConnectivityInfo where
  toPath GetConnectivityInfo' {..} =
    mconcat
      [ "/greengrass/things/",
        toBS _gciThingName,
        "/connectivityInfo"
      ]

instance ToQuery GetConnectivityInfo where
  toQuery = const mempty

-- | /See:/ 'getConnectivityInfoResponse' smart constructor.
data GetConnectivityInfoResponse = GetConnectivityInfoResponse'
  { _gcirrsMessage ::
      !(Maybe Text),
    _gcirrsConnectivityInfo ::
      !( Maybe
           [ConnectivityInfo]
       ),
    _gcirrsResponseStatus ::
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

-- | Creates a value of 'GetConnectivityInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcirrsMessage' - A message about the connectivity info request.
--
-- * 'gcirrsConnectivityInfo' - Connectivity info list.
--
-- * 'gcirrsResponseStatus' - -- | The response status code.
getConnectivityInfoResponse ::
  -- | 'gcirrsResponseStatus'
  Int ->
  GetConnectivityInfoResponse
getConnectivityInfoResponse pResponseStatus_ =
  GetConnectivityInfoResponse'
    { _gcirrsMessage =
        Nothing,
      _gcirrsConnectivityInfo = Nothing,
      _gcirrsResponseStatus = pResponseStatus_
    }

-- | A message about the connectivity info request.
gcirrsMessage :: Lens' GetConnectivityInfoResponse (Maybe Text)
gcirrsMessage = lens _gcirrsMessage (\s a -> s {_gcirrsMessage = a})

-- | Connectivity info list.
gcirrsConnectivityInfo :: Lens' GetConnectivityInfoResponse [ConnectivityInfo]
gcirrsConnectivityInfo = lens _gcirrsConnectivityInfo (\s a -> s {_gcirrsConnectivityInfo = a}) . _Default . _Coerce

-- | -- | The response status code.
gcirrsResponseStatus :: Lens' GetConnectivityInfoResponse Int
gcirrsResponseStatus = lens _gcirrsResponseStatus (\s a -> s {_gcirrsResponseStatus = a})

instance NFData GetConnectivityInfoResponse
