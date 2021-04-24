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
-- Module      : Network.AWS.StorageGateway.UpdateGatewaySoftwareNow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the gateway virtual machine (VM) software. The request immediately triggers the software update.
--
--
-- /Important:/ A software update forces a system restart of your gateway. You can minimize the chance of any disruption to your applications by increasing your iSCSI Initiators' timeouts. For more information about increasing iSCSI Initiator timeouts for Windows and Linux, see <https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings Customizing your Windows iSCSI settings> and <https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings Customizing your Linux iSCSI settings> , respectively.
module Network.AWS.StorageGateway.UpdateGatewaySoftwareNow
  ( -- * Creating a Request
    updateGatewaySoftwareNow,
    UpdateGatewaySoftwareNow,

    -- * Request Lenses
    ugsnGatewayARN,

    -- * Destructuring the Response
    updateGatewaySoftwareNowResponse,
    UpdateGatewaySoftwareNowResponse,

    -- * Response Lenses
    ugsnrrsGatewayARN,
    ugsnrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing the Amazon Resource Name (ARN) of the gateway to update.
--
--
--
-- /See:/ 'updateGatewaySoftwareNow' smart constructor.
newtype UpdateGatewaySoftwareNow = UpdateGatewaySoftwareNow'
  { _ugsnGatewayARN ::
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

-- | Creates a value of 'UpdateGatewaySoftwareNow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugsnGatewayARN' - Undocumented member.
updateGatewaySoftwareNow ::
  -- | 'ugsnGatewayARN'
  Text ->
  UpdateGatewaySoftwareNow
updateGatewaySoftwareNow pGatewayARN_ =
  UpdateGatewaySoftwareNow'
    { _ugsnGatewayARN =
        pGatewayARN_
    }

-- | Undocumented member.
ugsnGatewayARN :: Lens' UpdateGatewaySoftwareNow Text
ugsnGatewayARN = lens _ugsnGatewayARN (\s a -> s {_ugsnGatewayARN = a})

instance AWSRequest UpdateGatewaySoftwareNow where
  type
    Rs UpdateGatewaySoftwareNow =
      UpdateGatewaySoftwareNowResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          UpdateGatewaySoftwareNowResponse'
            <$> (x .?> "GatewayARN") <*> (pure (fromEnum s))
      )

instance Hashable UpdateGatewaySoftwareNow

instance NFData UpdateGatewaySoftwareNow

instance ToHeaders UpdateGatewaySoftwareNow where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.UpdateGatewaySoftwareNow" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateGatewaySoftwareNow where
  toJSON UpdateGatewaySoftwareNow' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _ugsnGatewayARN)])

instance ToPath UpdateGatewaySoftwareNow where
  toPath = const "/"

instance ToQuery UpdateGatewaySoftwareNow where
  toQuery = const mempty

-- | A JSON object containing the Amazon Resource Name (ARN) of the gateway that was updated.
--
--
--
-- /See:/ 'updateGatewaySoftwareNowResponse' smart constructor.
data UpdateGatewaySoftwareNowResponse = UpdateGatewaySoftwareNowResponse'
  { _ugsnrrsGatewayARN ::
      !( Maybe
           Text
       ),
    _ugsnrrsResponseStatus ::
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

-- | Creates a value of 'UpdateGatewaySoftwareNowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugsnrrsGatewayARN' - Undocumented member.
--
-- * 'ugsnrrsResponseStatus' - -- | The response status code.
updateGatewaySoftwareNowResponse ::
  -- | 'ugsnrrsResponseStatus'
  Int ->
  UpdateGatewaySoftwareNowResponse
updateGatewaySoftwareNowResponse pResponseStatus_ =
  UpdateGatewaySoftwareNowResponse'
    { _ugsnrrsGatewayARN =
        Nothing,
      _ugsnrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ugsnrrsGatewayARN :: Lens' UpdateGatewaySoftwareNowResponse (Maybe Text)
ugsnrrsGatewayARN = lens _ugsnrrsGatewayARN (\s a -> s {_ugsnrrsGatewayARN = a})

-- | -- | The response status code.
ugsnrrsResponseStatus :: Lens' UpdateGatewaySoftwareNowResponse Int
ugsnrrsResponseStatus = lens _ugsnrrsResponseStatus (\s a -> s {_ugsnrrsResponseStatus = a})

instance NFData UpdateGatewaySoftwareNowResponse
