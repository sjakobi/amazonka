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
-- Module      : Network.AWS.AlexaBusiness.UpdateGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the details of a gateway. If any optional field is not provided, the existing corresponding value is left unmodified.
module Network.AWS.AlexaBusiness.UpdateGateway
  ( -- * Creating a Request
    updateGateway,
    UpdateGateway,

    -- * Request Lenses
    ugName,
    ugDescription,
    ugSoftwareVersion,
    ugGatewayARN,

    -- * Destructuring the Response
    updateGatewayResponse,
    UpdateGatewayResponse,

    -- * Response Lenses
    ugrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateGateway' smart constructor.
data UpdateGateway = UpdateGateway'
  { _ugName ::
      !(Maybe Text),
    _ugDescription :: !(Maybe Text),
    _ugSoftwareVersion :: !(Maybe Text),
    _ugGatewayARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugName' - The updated name of the gateway.
--
-- * 'ugDescription' - The updated description of the gateway.
--
-- * 'ugSoftwareVersion' - The updated software version of the gateway. The gateway automatically updates its software version during normal operation.
--
-- * 'ugGatewayARN' - The ARN of the gateway to update.
updateGateway ::
  -- | 'ugGatewayARN'
  Text ->
  UpdateGateway
updateGateway pGatewayARN_ =
  UpdateGateway'
    { _ugName = Nothing,
      _ugDescription = Nothing,
      _ugSoftwareVersion = Nothing,
      _ugGatewayARN = pGatewayARN_
    }

-- | The updated name of the gateway.
ugName :: Lens' UpdateGateway (Maybe Text)
ugName = lens _ugName (\s a -> s {_ugName = a})

-- | The updated description of the gateway.
ugDescription :: Lens' UpdateGateway (Maybe Text)
ugDescription = lens _ugDescription (\s a -> s {_ugDescription = a})

-- | The updated software version of the gateway. The gateway automatically updates its software version during normal operation.
ugSoftwareVersion :: Lens' UpdateGateway (Maybe Text)
ugSoftwareVersion = lens _ugSoftwareVersion (\s a -> s {_ugSoftwareVersion = a})

-- | The ARN of the gateway to update.
ugGatewayARN :: Lens' UpdateGateway Text
ugGatewayARN = lens _ugGatewayARN (\s a -> s {_ugGatewayARN = a})

instance AWSRequest UpdateGateway where
  type Rs UpdateGateway = UpdateGatewayResponse
  request = postJSON alexaBusiness
  response =
    receiveEmpty
      ( \s h x ->
          UpdateGatewayResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateGateway

instance NFData UpdateGateway

instance ToHeaders UpdateGateway where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.UpdateGateway" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateGateway where
  toJSON UpdateGateway' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _ugName,
            ("Description" .=) <$> _ugDescription,
            ("SoftwareVersion" .=) <$> _ugSoftwareVersion,
            Just ("GatewayArn" .= _ugGatewayARN)
          ]
      )

instance ToPath UpdateGateway where
  toPath = const "/"

instance ToQuery UpdateGateway where
  toQuery = const mempty

-- | /See:/ 'updateGatewayResponse' smart constructor.
newtype UpdateGatewayResponse = UpdateGatewayResponse'
  { _ugrrsResponseStatus ::
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

-- | Creates a value of 'UpdateGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugrrsResponseStatus' - -- | The response status code.
updateGatewayResponse ::
  -- | 'ugrrsResponseStatus'
  Int ->
  UpdateGatewayResponse
updateGatewayResponse pResponseStatus_ =
  UpdateGatewayResponse'
    { _ugrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ugrrsResponseStatus :: Lens' UpdateGatewayResponse Int
ugrrsResponseStatus = lens _ugrrsResponseStatus (\s a -> s {_ugrrsResponseStatus = a})

instance NFData UpdateGatewayResponse
