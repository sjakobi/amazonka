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
-- Module      : Network.AWS.Greengrass.UpdateConnectivityInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.
module Network.AWS.Greengrass.UpdateConnectivityInfo
  ( -- * Creating a Request
    updateConnectivityInfo,
    UpdateConnectivityInfo,

    -- * Request Lenses
    uciConnectivityInfo,
    uciThingName,

    -- * Destructuring the Response
    updateConnectivityInfoResponse,
    UpdateConnectivityInfoResponse,

    -- * Response Lenses
    ucirrsMessage,
    ucirrsVersion,
    ucirrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Connectivity information.
--
-- /See:/ 'updateConnectivityInfo' smart constructor.
data UpdateConnectivityInfo = UpdateConnectivityInfo'
  { _uciConnectivityInfo ::
      !( Maybe
           [ConnectivityInfo]
       ),
    _uciThingName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateConnectivityInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uciConnectivityInfo' - A list of connectivity info.
--
-- * 'uciThingName' - The thing name.
updateConnectivityInfo ::
  -- | 'uciThingName'
  Text ->
  UpdateConnectivityInfo
updateConnectivityInfo pThingName_ =
  UpdateConnectivityInfo'
    { _uciConnectivityInfo =
        Nothing,
      _uciThingName = pThingName_
    }

-- | A list of connectivity info.
uciConnectivityInfo :: Lens' UpdateConnectivityInfo [ConnectivityInfo]
uciConnectivityInfo = lens _uciConnectivityInfo (\s a -> s {_uciConnectivityInfo = a}) . _Default . _Coerce

-- | The thing name.
uciThingName :: Lens' UpdateConnectivityInfo Text
uciThingName = lens _uciThingName (\s a -> s {_uciThingName = a})

instance AWSRequest UpdateConnectivityInfo where
  type
    Rs UpdateConnectivityInfo =
      UpdateConnectivityInfoResponse
  request = putJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          UpdateConnectivityInfoResponse'
            <$> (x .?> "message")
            <*> (x .?> "Version")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateConnectivityInfo

instance NFData UpdateConnectivityInfo

instance ToHeaders UpdateConnectivityInfo where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateConnectivityInfo where
  toJSON UpdateConnectivityInfo' {..} =
    object
      ( catMaybes
          [("ConnectivityInfo" .=) <$> _uciConnectivityInfo]
      )

instance ToPath UpdateConnectivityInfo where
  toPath UpdateConnectivityInfo' {..} =
    mconcat
      [ "/greengrass/things/",
        toBS _uciThingName,
        "/connectivityInfo"
      ]

instance ToQuery UpdateConnectivityInfo where
  toQuery = const mempty

-- | /See:/ 'updateConnectivityInfoResponse' smart constructor.
data UpdateConnectivityInfoResponse = UpdateConnectivityInfoResponse'
  { _ucirrsMessage ::
      !( Maybe
           Text
       ),
    _ucirrsVersion ::
      !( Maybe
           Text
       ),
    _ucirrsResponseStatus ::
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

-- | Creates a value of 'UpdateConnectivityInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucirrsMessage' - A message about the connectivity info update request.
--
-- * 'ucirrsVersion' - The new version of the connectivity info.
--
-- * 'ucirrsResponseStatus' - -- | The response status code.
updateConnectivityInfoResponse ::
  -- | 'ucirrsResponseStatus'
  Int ->
  UpdateConnectivityInfoResponse
updateConnectivityInfoResponse pResponseStatus_ =
  UpdateConnectivityInfoResponse'
    { _ucirrsMessage =
        Nothing,
      _ucirrsVersion = Nothing,
      _ucirrsResponseStatus = pResponseStatus_
    }

-- | A message about the connectivity info update request.
ucirrsMessage :: Lens' UpdateConnectivityInfoResponse (Maybe Text)
ucirrsMessage = lens _ucirrsMessage (\s a -> s {_ucirrsMessage = a})

-- | The new version of the connectivity info.
ucirrsVersion :: Lens' UpdateConnectivityInfoResponse (Maybe Text)
ucirrsVersion = lens _ucirrsVersion (\s a -> s {_ucirrsVersion = a})

-- | -- | The response status code.
ucirrsResponseStatus :: Lens' UpdateConnectivityInfoResponse Int
ucirrsResponseStatus = lens _ucirrsResponseStatus (\s a -> s {_ucirrsResponseStatus = a})

instance NFData UpdateConnectivityInfoResponse
