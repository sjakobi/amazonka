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
-- Module      : Network.AWS.Route53.GetTrafficPolicyInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specified traffic policy instance.
module Network.AWS.Route53.GetTrafficPolicyInstance
  ( -- * Creating a Request
    getTrafficPolicyInstance,
    GetTrafficPolicyInstance,

    -- * Request Lenses
    gtpiId,

    -- * Destructuring the Response
    getTrafficPolicyInstanceResponse,
    GetTrafficPolicyInstanceResponse,

    -- * Response Lenses
    gtpirrsResponseStatus,
    gtpirrsTrafficPolicyInstance,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | Gets information about a specified traffic policy instance.
--
--
--
-- /See:/ 'getTrafficPolicyInstance' smart constructor.
newtype GetTrafficPolicyInstance = GetTrafficPolicyInstance'
  { _gtpiId ::
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

-- | Creates a value of 'GetTrafficPolicyInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtpiId' - The ID of the traffic policy instance that you want to get information about.
getTrafficPolicyInstance ::
  -- | 'gtpiId'
  Text ->
  GetTrafficPolicyInstance
getTrafficPolicyInstance pId_ =
  GetTrafficPolicyInstance' {_gtpiId = pId_}

-- | The ID of the traffic policy instance that you want to get information about.
gtpiId :: Lens' GetTrafficPolicyInstance Text
gtpiId = lens _gtpiId (\s a -> s {_gtpiId = a})

instance AWSRequest GetTrafficPolicyInstance where
  type
    Rs GetTrafficPolicyInstance =
      GetTrafficPolicyInstanceResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          GetTrafficPolicyInstanceResponse'
            <$> (pure (fromEnum s))
            <*> (x .@ "TrafficPolicyInstance")
      )

instance Hashable GetTrafficPolicyInstance

instance NFData GetTrafficPolicyInstance

instance ToHeaders GetTrafficPolicyInstance where
  toHeaders = const mempty

instance ToPath GetTrafficPolicyInstance where
  toPath GetTrafficPolicyInstance' {..} =
    mconcat
      ["/2013-04-01/trafficpolicyinstance/", toBS _gtpiId]

instance ToQuery GetTrafficPolicyInstance where
  toQuery = const mempty

-- | A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.
--
--
--
-- /See:/ 'getTrafficPolicyInstanceResponse' smart constructor.
data GetTrafficPolicyInstanceResponse = GetTrafficPolicyInstanceResponse'
  { _gtpirrsResponseStatus ::
      !Int,
    _gtpirrsTrafficPolicyInstance ::
      !TrafficPolicyInstance
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetTrafficPolicyInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtpirrsResponseStatus' - -- | The response status code.
--
-- * 'gtpirrsTrafficPolicyInstance' - A complex type that contains settings for the traffic policy instance.
getTrafficPolicyInstanceResponse ::
  -- | 'gtpirrsResponseStatus'
  Int ->
  -- | 'gtpirrsTrafficPolicyInstance'
  TrafficPolicyInstance ->
  GetTrafficPolicyInstanceResponse
getTrafficPolicyInstanceResponse
  pResponseStatus_
  pTrafficPolicyInstance_ =
    GetTrafficPolicyInstanceResponse'
      { _gtpirrsResponseStatus =
          pResponseStatus_,
        _gtpirrsTrafficPolicyInstance =
          pTrafficPolicyInstance_
      }

-- | -- | The response status code.
gtpirrsResponseStatus :: Lens' GetTrafficPolicyInstanceResponse Int
gtpirrsResponseStatus = lens _gtpirrsResponseStatus (\s a -> s {_gtpirrsResponseStatus = a})

-- | A complex type that contains settings for the traffic policy instance.
gtpirrsTrafficPolicyInstance :: Lens' GetTrafficPolicyInstanceResponse TrafficPolicyInstance
gtpirrsTrafficPolicyInstance = lens _gtpirrsTrafficPolicyInstance (\s a -> s {_gtpirrsTrafficPolicyInstance = a})

instance NFData GetTrafficPolicyInstanceResponse
