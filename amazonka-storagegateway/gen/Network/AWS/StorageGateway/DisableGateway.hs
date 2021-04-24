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
-- Module      : Network.AWS.StorageGateway.DisableGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables a tape gateway when the gateway is no longer functioning. For example, if your gateway VM is damaged, you can disable the gateway so you can recover virtual tapes.
--
--
-- Use this operation for a tape gateway that is not reachable or not functioning. This operation is only supported in the tape gateway type.
--
-- /Important:/ After a gateway is disabled, it cannot be enabled.
module Network.AWS.StorageGateway.DisableGateway
  ( -- * Creating a Request
    disableGateway,
    DisableGateway,

    -- * Request Lenses
    dgGatewayARN,

    -- * Destructuring the Response
    disableGatewayResponse,
    DisableGatewayResponse,

    -- * Response Lenses
    dgrrsGatewayARN,
    dgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | DisableGatewayInput
--
--
--
-- /See:/ 'disableGateway' smart constructor.
newtype DisableGateway = DisableGateway'
  { _dgGatewayARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DisableGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgGatewayARN' - Undocumented member.
disableGateway ::
  -- | 'dgGatewayARN'
  Text ->
  DisableGateway
disableGateway pGatewayARN_ =
  DisableGateway' {_dgGatewayARN = pGatewayARN_}

-- | Undocumented member.
dgGatewayARN :: Lens' DisableGateway Text
dgGatewayARN = lens _dgGatewayARN (\s a -> s {_dgGatewayARN = a})

instance AWSRequest DisableGateway where
  type Rs DisableGateway = DisableGatewayResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DisableGatewayResponse'
            <$> (x .?> "GatewayARN") <*> (pure (fromEnum s))
      )

instance Hashable DisableGateway

instance NFData DisableGateway

instance ToHeaders DisableGateway where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DisableGateway" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisableGateway where
  toJSON DisableGateway' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _dgGatewayARN)])

instance ToPath DisableGateway where
  toPath = const "/"

instance ToQuery DisableGateway where
  toQuery = const mempty

-- | DisableGatewayOutput
--
--
--
-- /See:/ 'disableGatewayResponse' smart constructor.
data DisableGatewayResponse = DisableGatewayResponse'
  { _dgrrsGatewayARN ::
      !(Maybe Text),
    _dgrrsResponseStatus ::
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

-- | Creates a value of 'DisableGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgrrsGatewayARN' - The unique Amazon Resource Name (ARN) of the disabled gateway.
--
-- * 'dgrrsResponseStatus' - -- | The response status code.
disableGatewayResponse ::
  -- | 'dgrrsResponseStatus'
  Int ->
  DisableGatewayResponse
disableGatewayResponse pResponseStatus_ =
  DisableGatewayResponse'
    { _dgrrsGatewayARN = Nothing,
      _dgrrsResponseStatus = pResponseStatus_
    }

-- | The unique Amazon Resource Name (ARN) of the disabled gateway.
dgrrsGatewayARN :: Lens' DisableGatewayResponse (Maybe Text)
dgrrsGatewayARN = lens _dgrrsGatewayARN (\s a -> s {_dgrrsGatewayARN = a})

-- | -- | The response status code.
dgrrsResponseStatus :: Lens' DisableGatewayResponse Int
dgrrsResponseStatus = lens _dgrrsResponseStatus (\s a -> s {_dgrrsResponseStatus = a})

instance NFData DisableGatewayResponse
