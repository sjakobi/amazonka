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
-- Module      : Network.AWS.Route53.GetDNSSEC
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about DNSSEC for a specific hosted zone, including the key-signing keys (KSKs) in the hosted zone.
module Network.AWS.Route53.GetDNSSEC
  ( -- * Creating a Request
    getDNSSEC,
    GetDNSSEC,

    -- * Request Lenses
    gdsecHostedZoneId,

    -- * Destructuring the Response
    getDNSSECResponse,
    GetDNSSECResponse,

    -- * Response Lenses
    gdsecrrsResponseStatus,
    gdsecrrsStatus,
    gdsecrrsKeySigningKeys,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | /See:/ 'getDNSSEC' smart constructor.
newtype GetDNSSEC = GetDNSSEC'
  { _gdsecHostedZoneId ::
      ResourceId
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDNSSEC' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsecHostedZoneId' - A unique string used to identify a hosted zone.
getDNSSEC ::
  -- | 'gdsecHostedZoneId'
  ResourceId ->
  GetDNSSEC
getDNSSEC pHostedZoneId_ =
  GetDNSSEC' {_gdsecHostedZoneId = pHostedZoneId_}

-- | A unique string used to identify a hosted zone.
gdsecHostedZoneId :: Lens' GetDNSSEC ResourceId
gdsecHostedZoneId = lens _gdsecHostedZoneId (\s a -> s {_gdsecHostedZoneId = a})

instance AWSRequest GetDNSSEC where
  type Rs GetDNSSEC = GetDNSSECResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          GetDNSSECResponse'
            <$> (pure (fromEnum s))
            <*> (x .@ "Status")
            <*> ( x .@? "KeySigningKeys" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable GetDNSSEC

instance NFData GetDNSSEC

instance ToHeaders GetDNSSEC where
  toHeaders = const mempty

instance ToPath GetDNSSEC where
  toPath GetDNSSEC' {..} =
    mconcat
      [ "/2013-04-01/hostedzone/",
        toBS _gdsecHostedZoneId,
        "/dnssec"
      ]

instance ToQuery GetDNSSEC where
  toQuery = const mempty

-- | /See:/ 'getDNSSECResponse' smart constructor.
data GetDNSSECResponse = GetDNSSECResponse'
  { _gdsecrrsResponseStatus ::
      !Int,
    _gdsecrrsStatus :: !DNSSECStatus,
    _gdsecrrsKeySigningKeys ::
      ![KeySigningKey]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDNSSECResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsecrrsResponseStatus' - -- | The response status code.
--
-- * 'gdsecrrsStatus' - A string repesenting the status of DNSSEC.
--
-- * 'gdsecrrsKeySigningKeys' - The key-signing keys (KSKs) in your account.
getDNSSECResponse ::
  -- | 'gdsecrrsResponseStatus'
  Int ->
  -- | 'gdsecrrsStatus'
  DNSSECStatus ->
  GetDNSSECResponse
getDNSSECResponse pResponseStatus_ pStatus_ =
  GetDNSSECResponse'
    { _gdsecrrsResponseStatus =
        pResponseStatus_,
      _gdsecrrsStatus = pStatus_,
      _gdsecrrsKeySigningKeys = mempty
    }

-- | -- | The response status code.
gdsecrrsResponseStatus :: Lens' GetDNSSECResponse Int
gdsecrrsResponseStatus = lens _gdsecrrsResponseStatus (\s a -> s {_gdsecrrsResponseStatus = a})

-- | A string repesenting the status of DNSSEC.
gdsecrrsStatus :: Lens' GetDNSSECResponse DNSSECStatus
gdsecrrsStatus = lens _gdsecrrsStatus (\s a -> s {_gdsecrrsStatus = a})

-- | The key-signing keys (KSKs) in your account.
gdsecrrsKeySigningKeys :: Lens' GetDNSSECResponse [KeySigningKey]
gdsecrrsKeySigningKeys = lens _gdsecrrsKeySigningKeys (\s a -> s {_gdsecrrsKeySigningKeys = a}) . _Coerce

instance NFData GetDNSSECResponse
