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
-- Module      : Network.AWS.Route53.DisableHostedZoneDNSSEC
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables DNSSEC signing in a specific hosted zone. This action does not deactivate any key-signing keys (KSKs) that are active in the hosted zone.
module Network.AWS.Route53.DisableHostedZoneDNSSEC
  ( -- * Creating a Request
    disableHostedZoneDNSSEC,
    DisableHostedZoneDNSSEC,

    -- * Request Lenses
    dhzdsecHostedZoneId,

    -- * Destructuring the Response
    disableHostedZoneDNSSECResponse,
    DisableHostedZoneDNSSECResponse,

    -- * Response Lenses
    dhzdsecrrsResponseStatus,
    dhzdsecrrsChangeInfo,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | /See:/ 'disableHostedZoneDNSSEC' smart constructor.
newtype DisableHostedZoneDNSSEC = DisableHostedZoneDNSSEC'
  { _dhzdsecHostedZoneId ::
      ResourceId
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisableHostedZoneDNSSEC' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhzdsecHostedZoneId' - A unique string used to identify a hosted zone.
disableHostedZoneDNSSEC ::
  -- | 'dhzdsecHostedZoneId'
  ResourceId ->
  DisableHostedZoneDNSSEC
disableHostedZoneDNSSEC pHostedZoneId_ =
  DisableHostedZoneDNSSEC'
    { _dhzdsecHostedZoneId =
        pHostedZoneId_
    }

-- | A unique string used to identify a hosted zone.
dhzdsecHostedZoneId :: Lens' DisableHostedZoneDNSSEC ResourceId
dhzdsecHostedZoneId = lens _dhzdsecHostedZoneId (\s a -> s {_dhzdsecHostedZoneId = a})

instance AWSRequest DisableHostedZoneDNSSEC where
  type
    Rs DisableHostedZoneDNSSEC =
      DisableHostedZoneDNSSECResponse
  request = post route53
  response =
    receiveXML
      ( \s h x ->
          DisableHostedZoneDNSSECResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "ChangeInfo")
      )

instance Hashable DisableHostedZoneDNSSEC

instance NFData DisableHostedZoneDNSSEC

instance ToHeaders DisableHostedZoneDNSSEC where
  toHeaders = const mempty

instance ToPath DisableHostedZoneDNSSEC where
  toPath DisableHostedZoneDNSSEC' {..} =
    mconcat
      [ "/2013-04-01/hostedzone/",
        toBS _dhzdsecHostedZoneId,
        "/disable-dnssec"
      ]

instance ToQuery DisableHostedZoneDNSSEC where
  toQuery = const mempty

-- | /See:/ 'disableHostedZoneDNSSECResponse' smart constructor.
data DisableHostedZoneDNSSECResponse = DisableHostedZoneDNSSECResponse'
  { _dhzdsecrrsResponseStatus ::
      !Int,
    _dhzdsecrrsChangeInfo ::
      !ChangeInfo
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisableHostedZoneDNSSECResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhzdsecrrsResponseStatus' - -- | The response status code.
--
-- * 'dhzdsecrrsChangeInfo' - Undocumented member.
disableHostedZoneDNSSECResponse ::
  -- | 'dhzdsecrrsResponseStatus'
  Int ->
  -- | 'dhzdsecrrsChangeInfo'
  ChangeInfo ->
  DisableHostedZoneDNSSECResponse
disableHostedZoneDNSSECResponse
  pResponseStatus_
  pChangeInfo_ =
    DisableHostedZoneDNSSECResponse'
      { _dhzdsecrrsResponseStatus =
          pResponseStatus_,
        _dhzdsecrrsChangeInfo = pChangeInfo_
      }

-- | -- | The response status code.
dhzdsecrrsResponseStatus :: Lens' DisableHostedZoneDNSSECResponse Int
dhzdsecrrsResponseStatus = lens _dhzdsecrrsResponseStatus (\s a -> s {_dhzdsecrrsResponseStatus = a})

-- | Undocumented member.
dhzdsecrrsChangeInfo :: Lens' DisableHostedZoneDNSSECResponse ChangeInfo
dhzdsecrrsChangeInfo = lens _dhzdsecrrsChangeInfo (\s a -> s {_dhzdsecrrsChangeInfo = a})

instance NFData DisableHostedZoneDNSSECResponse
