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
-- Module      : Network.AWS.SMS.DisassociateConnector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the specified connector from AWS SMS.
--
--
-- After you disassociate a connector, it is no longer available to support replication jobs.
module Network.AWS.SMS.DisassociateConnector
  ( -- * Creating a Request
    disassociateConnector,
    DisassociateConnector,

    -- * Request Lenses
    dcConnectorId,

    -- * Destructuring the Response
    disassociateConnectorResponse,
    DisassociateConnectorResponse,

    -- * Response Lenses
    dcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'disassociateConnector' smart constructor.
newtype DisassociateConnector = DisassociateConnector'
  { _dcConnectorId ::
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

-- | Creates a value of 'DisassociateConnector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcConnectorId' - The ID of the connector.
disassociateConnector ::
  -- | 'dcConnectorId'
  Text ->
  DisassociateConnector
disassociateConnector pConnectorId_ =
  DisassociateConnector'
    { _dcConnectorId =
        pConnectorId_
    }

-- | The ID of the connector.
dcConnectorId :: Lens' DisassociateConnector Text
dcConnectorId = lens _dcConnectorId (\s a -> s {_dcConnectorId = a})

instance AWSRequest DisassociateConnector where
  type
    Rs DisassociateConnector =
      DisassociateConnectorResponse
  request = postJSON sms
  response =
    receiveEmpty
      ( \s h x ->
          DisassociateConnectorResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DisassociateConnector

instance NFData DisassociateConnector

instance ToHeaders DisassociateConnector where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.DisassociateConnector" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisassociateConnector where
  toJSON DisassociateConnector' {..} =
    object
      (catMaybes [Just ("connectorId" .= _dcConnectorId)])

instance ToPath DisassociateConnector where
  toPath = const "/"

instance ToQuery DisassociateConnector where
  toQuery = const mempty

-- | /See:/ 'disassociateConnectorResponse' smart constructor.
newtype DisassociateConnectorResponse = DisassociateConnectorResponse'
  { _dcrrsResponseStatus ::
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

-- | Creates a value of 'DisassociateConnectorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
disassociateConnectorResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DisassociateConnectorResponse
disassociateConnectorResponse pResponseStatus_ =
  DisassociateConnectorResponse'
    { _dcrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DisassociateConnectorResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DisassociateConnectorResponse
