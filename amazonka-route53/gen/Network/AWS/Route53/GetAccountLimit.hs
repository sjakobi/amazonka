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
-- Module      : Network.AWS.Route53.GetAccountLimit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified limit for the current account, for example, the maximum number of health checks that you can create using the account.
--
--
-- For the default limit, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html Limits> in the /Amazon Route 53 Developer Guide/ . To request a higher limit, <https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53 open a case> .
module Network.AWS.Route53.GetAccountLimit
  ( -- * Creating a Request
    getAccountLimit,
    GetAccountLimit,

    -- * Request Lenses
    galType,

    -- * Destructuring the Response
    getAccountLimitResponse,
    GetAccountLimitResponse,

    -- * Response Lenses
    galrrsResponseStatus,
    galrrsLimit,
    galrrsCount,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A complex type that contains information about the request to create a hosted zone.
--
--
--
-- /See:/ 'getAccountLimit' smart constructor.
newtype GetAccountLimit = GetAccountLimit'
  { _galType ::
      AccountLimitType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAccountLimit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galType' - The limit that you want to get. Valid values include the following:     * __MAX_HEALTH_CHECKS_BY_OWNER__ : The maximum number of health checks that you can create using the current account.     * __MAX_HOSTED_ZONES_BY_OWNER__ : The maximum number of hosted zones that you can create using the current account.     * __MAX_REUSABLE_DELEGATION_SETS_BY_OWNER__ : The maximum number of reusable delegation sets that you can create using the current account.     * __MAX_TRAFFIC_POLICIES_BY_OWNER__ : The maximum number of traffic policies that you can create using the current account.     * __MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER__ : The maximum number of traffic policy instances that you can create using the current account. (Traffic policy instances are referred to as traffic flow policy records in the Amazon Route 53 console.)
getAccountLimit ::
  -- | 'galType'
  AccountLimitType ->
  GetAccountLimit
getAccountLimit pType_ =
  GetAccountLimit' {_galType = pType_}

-- | The limit that you want to get. Valid values include the following:     * __MAX_HEALTH_CHECKS_BY_OWNER__ : The maximum number of health checks that you can create using the current account.     * __MAX_HOSTED_ZONES_BY_OWNER__ : The maximum number of hosted zones that you can create using the current account.     * __MAX_REUSABLE_DELEGATION_SETS_BY_OWNER__ : The maximum number of reusable delegation sets that you can create using the current account.     * __MAX_TRAFFIC_POLICIES_BY_OWNER__ : The maximum number of traffic policies that you can create using the current account.     * __MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER__ : The maximum number of traffic policy instances that you can create using the current account. (Traffic policy instances are referred to as traffic flow policy records in the Amazon Route 53 console.)
galType :: Lens' GetAccountLimit AccountLimitType
galType = lens _galType (\s a -> s {_galType = a})

instance AWSRequest GetAccountLimit where
  type Rs GetAccountLimit = GetAccountLimitResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          GetAccountLimitResponse'
            <$> (pure (fromEnum s))
            <*> (x .@ "Limit")
            <*> (x .@ "Count")
      )

instance Hashable GetAccountLimit

instance NFData GetAccountLimit

instance ToHeaders GetAccountLimit where
  toHeaders = const mempty

instance ToPath GetAccountLimit where
  toPath GetAccountLimit' {..} =
    mconcat
      ["/2013-04-01/accountlimit/", toBS _galType]

instance ToQuery GetAccountLimit where
  toQuery = const mempty

-- | A complex type that contains the requested limit.
--
--
--
-- /See:/ 'getAccountLimitResponse' smart constructor.
data GetAccountLimitResponse = GetAccountLimitResponse'
  { _galrrsResponseStatus ::
      !Int,
    _galrrsLimit ::
      !AccountLimit,
    _galrrsCount :: !Nat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAccountLimitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galrrsResponseStatus' - -- | The response status code.
--
-- * 'galrrsLimit' - The current setting for the specified limit. For example, if you specified @MAX_HEALTH_CHECKS_BY_OWNER@ for the value of @Type@ in the request, the value of @Limit@ is the maximum number of health checks that you can create using the current account.
--
-- * 'galrrsCount' - The current number of entities that you have created of the specified type. For example, if you specified @MAX_HEALTH_CHECKS_BY_OWNER@ for the value of @Type@ in the request, the value of @Count@ is the current number of health checks that you have created using the current account.
getAccountLimitResponse ::
  -- | 'galrrsResponseStatus'
  Int ->
  -- | 'galrrsLimit'
  AccountLimit ->
  -- | 'galrrsCount'
  Natural ->
  GetAccountLimitResponse
getAccountLimitResponse
  pResponseStatus_
  pLimit_
  pCount_ =
    GetAccountLimitResponse'
      { _galrrsResponseStatus =
          pResponseStatus_,
        _galrrsLimit = pLimit_,
        _galrrsCount = _Nat # pCount_
      }

-- | -- | The response status code.
galrrsResponseStatus :: Lens' GetAccountLimitResponse Int
galrrsResponseStatus = lens _galrrsResponseStatus (\s a -> s {_galrrsResponseStatus = a})

-- | The current setting for the specified limit. For example, if you specified @MAX_HEALTH_CHECKS_BY_OWNER@ for the value of @Type@ in the request, the value of @Limit@ is the maximum number of health checks that you can create using the current account.
galrrsLimit :: Lens' GetAccountLimitResponse AccountLimit
galrrsLimit = lens _galrrsLimit (\s a -> s {_galrrsLimit = a})

-- | The current number of entities that you have created of the specified type. For example, if you specified @MAX_HEALTH_CHECKS_BY_OWNER@ for the value of @Type@ in the request, the value of @Count@ is the current number of health checks that you have created using the current account.
galrrsCount :: Lens' GetAccountLimitResponse Natural
galrrsCount = lens _galrrsCount (\s a -> s {_galrrsCount = a}) . _Nat

instance NFData GetAccountLimitResponse
