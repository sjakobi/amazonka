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
-- Module      : Network.AWS.EC2.ExportClientVPNClientCertificateRevocationList
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads the client certificate revocation list for the specified Client VPN endpoint.
module Network.AWS.EC2.ExportClientVPNClientCertificateRevocationList
  ( -- * Creating a Request
    exportClientVPNClientCertificateRevocationList,
    ExportClientVPNClientCertificateRevocationList,

    -- * Request Lenses
    ecvccrlDryRun,
    ecvccrlClientVPNEndpointId,

    -- * Destructuring the Response
    exportClientVPNClientCertificateRevocationListResponse,
    ExportClientVPNClientCertificateRevocationListResponse,

    -- * Response Lenses
    ecvccrlrrsCertificateRevocationList,
    ecvccrlrrsStatus,
    ecvccrlrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'exportClientVPNClientCertificateRevocationList' smart constructor.
data ExportClientVPNClientCertificateRevocationList = ExportClientVPNClientCertificateRevocationList'
  { _ecvccrlDryRun ::
      !( Maybe
           Bool
       ),
    _ecvccrlClientVPNEndpointId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ExportClientVPNClientCertificateRevocationList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecvccrlDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ecvccrlClientVPNEndpointId' - The ID of the Client VPN endpoint.
exportClientVPNClientCertificateRevocationList ::
  -- | 'ecvccrlClientVPNEndpointId'
  Text ->
  ExportClientVPNClientCertificateRevocationList
exportClientVPNClientCertificateRevocationList
  pClientVPNEndpointId_ =
    ExportClientVPNClientCertificateRevocationList'
      { _ecvccrlDryRun =
          Nothing,
        _ecvccrlClientVPNEndpointId =
          pClientVPNEndpointId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ecvccrlDryRun :: Lens' ExportClientVPNClientCertificateRevocationList (Maybe Bool)
ecvccrlDryRun = lens _ecvccrlDryRun (\s a -> s {_ecvccrlDryRun = a})

-- | The ID of the Client VPN endpoint.
ecvccrlClientVPNEndpointId :: Lens' ExportClientVPNClientCertificateRevocationList Text
ecvccrlClientVPNEndpointId = lens _ecvccrlClientVPNEndpointId (\s a -> s {_ecvccrlClientVPNEndpointId = a})

instance
  AWSRequest
    ExportClientVPNClientCertificateRevocationList
  where
  type
    Rs
      ExportClientVPNClientCertificateRevocationList =
      ExportClientVPNClientCertificateRevocationListResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ExportClientVPNClientCertificateRevocationListResponse'
            <$> (x .@? "certificateRevocationList")
              <*> (x .@? "status")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    ExportClientVPNClientCertificateRevocationList

instance
  NFData
    ExportClientVPNClientCertificateRevocationList

instance
  ToHeaders
    ExportClientVPNClientCertificateRevocationList
  where
  toHeaders = const mempty

instance
  ToPath
    ExportClientVPNClientCertificateRevocationList
  where
  toPath = const "/"

instance
  ToQuery
    ExportClientVPNClientCertificateRevocationList
  where
  toQuery
    ExportClientVPNClientCertificateRevocationList' {..} =
      mconcat
        [ "Action"
            =: ( "ExportClientVpnClientCertificateRevocationList" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "DryRun" =: _ecvccrlDryRun,
          "ClientVpnEndpointId" =: _ecvccrlClientVPNEndpointId
        ]

-- | /See:/ 'exportClientVPNClientCertificateRevocationListResponse' smart constructor.
data ExportClientVPNClientCertificateRevocationListResponse = ExportClientVPNClientCertificateRevocationListResponse'
  { _ecvccrlrrsCertificateRevocationList ::
      !( Maybe
           Text
       ),
    _ecvccrlrrsStatus ::
      !( Maybe
           ClientCertificateRevocationListStatus
       ),
    _ecvccrlrrsResponseStatus ::
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

-- | Creates a value of 'ExportClientVPNClientCertificateRevocationListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecvccrlrrsCertificateRevocationList' - Information about the client certificate revocation list.
--
-- * 'ecvccrlrrsStatus' - The current state of the client certificate revocation list.
--
-- * 'ecvccrlrrsResponseStatus' - -- | The response status code.
exportClientVPNClientCertificateRevocationListResponse ::
  -- | 'ecvccrlrrsResponseStatus'
  Int ->
  ExportClientVPNClientCertificateRevocationListResponse
exportClientVPNClientCertificateRevocationListResponse
  pResponseStatus_ =
    ExportClientVPNClientCertificateRevocationListResponse'
      { _ecvccrlrrsCertificateRevocationList =
          Nothing,
        _ecvccrlrrsStatus =
          Nothing,
        _ecvccrlrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the client certificate revocation list.
ecvccrlrrsCertificateRevocationList :: Lens' ExportClientVPNClientCertificateRevocationListResponse (Maybe Text)
ecvccrlrrsCertificateRevocationList = lens _ecvccrlrrsCertificateRevocationList (\s a -> s {_ecvccrlrrsCertificateRevocationList = a})

-- | The current state of the client certificate revocation list.
ecvccrlrrsStatus :: Lens' ExportClientVPNClientCertificateRevocationListResponse (Maybe ClientCertificateRevocationListStatus)
ecvccrlrrsStatus = lens _ecvccrlrrsStatus (\s a -> s {_ecvccrlrrsStatus = a})

-- | -- | The response status code.
ecvccrlrrsResponseStatus :: Lens' ExportClientVPNClientCertificateRevocationListResponse Int
ecvccrlrrsResponseStatus = lens _ecvccrlrrsResponseStatus (\s a -> s {_ecvccrlrrsResponseStatus = a})

instance
  NFData
    ExportClientVPNClientCertificateRevocationListResponse
