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
-- Module      : Network.AWS.Route53.EnableHostedZoneDNSSEC
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables DNSSEC signing in a specific hosted zone.
module Network.AWS.Route53.EnableHostedZoneDNSSEC
  ( -- * Creating a Request
    enableHostedZoneDNSSEC,
    EnableHostedZoneDNSSEC,

    -- * Request Lenses
    ehzdsecHostedZoneId,

    -- * Destructuring the Response
    enableHostedZoneDNSSECResponse,
    EnableHostedZoneDNSSECResponse,

    -- * Response Lenses
    ehzdsecrrsResponseStatus,
    ehzdsecrrsChangeInfo,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | /See:/ 'enableHostedZoneDNSSEC' smart constructor.
newtype EnableHostedZoneDNSSEC = EnableHostedZoneDNSSEC'
  { _ehzdsecHostedZoneId ::
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

-- | Creates a value of 'EnableHostedZoneDNSSEC' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ehzdsecHostedZoneId' - A unique string used to identify a hosted zone.
enableHostedZoneDNSSEC ::
  -- | 'ehzdsecHostedZoneId'
  ResourceId ->
  EnableHostedZoneDNSSEC
enableHostedZoneDNSSEC pHostedZoneId_ =
  EnableHostedZoneDNSSEC'
    { _ehzdsecHostedZoneId =
        pHostedZoneId_
    }

-- | A unique string used to identify a hosted zone.
ehzdsecHostedZoneId :: Lens' EnableHostedZoneDNSSEC ResourceId
ehzdsecHostedZoneId = lens _ehzdsecHostedZoneId (\s a -> s {_ehzdsecHostedZoneId = a})

instance AWSRequest EnableHostedZoneDNSSEC where
  type
    Rs EnableHostedZoneDNSSEC =
      EnableHostedZoneDNSSECResponse
  request = post route53
  response =
    receiveXML
      ( \s h x ->
          EnableHostedZoneDNSSECResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "ChangeInfo")
      )

instance Hashable EnableHostedZoneDNSSEC

instance NFData EnableHostedZoneDNSSEC

instance ToHeaders EnableHostedZoneDNSSEC where
  toHeaders = const mempty

instance ToPath EnableHostedZoneDNSSEC where
  toPath EnableHostedZoneDNSSEC' {..} =
    mconcat
      [ "/2013-04-01/hostedzone/",
        toBS _ehzdsecHostedZoneId,
        "/enable-dnssec"
      ]

instance ToQuery EnableHostedZoneDNSSEC where
  toQuery = const mempty

-- | /See:/ 'enableHostedZoneDNSSECResponse' smart constructor.
data EnableHostedZoneDNSSECResponse = EnableHostedZoneDNSSECResponse'
  { _ehzdsecrrsResponseStatus ::
      !Int,
    _ehzdsecrrsChangeInfo ::
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

-- | Creates a value of 'EnableHostedZoneDNSSECResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ehzdsecrrsResponseStatus' - -- | The response status code.
--
-- * 'ehzdsecrrsChangeInfo' - Undocumented member.
enableHostedZoneDNSSECResponse ::
  -- | 'ehzdsecrrsResponseStatus'
  Int ->
  -- | 'ehzdsecrrsChangeInfo'
  ChangeInfo ->
  EnableHostedZoneDNSSECResponse
enableHostedZoneDNSSECResponse
  pResponseStatus_
  pChangeInfo_ =
    EnableHostedZoneDNSSECResponse'
      { _ehzdsecrrsResponseStatus =
          pResponseStatus_,
        _ehzdsecrrsChangeInfo = pChangeInfo_
      }

-- | -- | The response status code.
ehzdsecrrsResponseStatus :: Lens' EnableHostedZoneDNSSECResponse Int
ehzdsecrrsResponseStatus = lens _ehzdsecrrsResponseStatus (\s a -> s {_ehzdsecrrsResponseStatus = a})

-- | Undocumented member.
ehzdsecrrsChangeInfo :: Lens' EnableHostedZoneDNSSECResponse ChangeInfo
ehzdsecrrsChangeInfo = lens _ehzdsecrrsChangeInfo (\s a -> s {_ehzdsecrrsChangeInfo = a})

instance NFData EnableHostedZoneDNSSECResponse
