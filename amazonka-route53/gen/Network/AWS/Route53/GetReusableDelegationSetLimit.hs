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
-- Module      : Network.AWS.Route53.GetReusableDelegationSetLimit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the maximum number of hosted zones that you can associate with the specified reusable delegation set.
--
--
-- For the default limit, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html Limits> in the /Amazon Route 53 Developer Guide/ . To request a higher limit, <https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53 open a case> .
module Network.AWS.Route53.GetReusableDelegationSetLimit
  ( -- * Creating a Request
    getReusableDelegationSetLimit,
    GetReusableDelegationSetLimit,

    -- * Request Lenses
    grdslType,
    grdslDelegationSetId,

    -- * Destructuring the Response
    getReusableDelegationSetLimitResponse,
    GetReusableDelegationSetLimitResponse,

    -- * Response Lenses
    grdslrrsResponseStatus,
    grdslrrsLimit,
    grdslrrsCount,
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
-- /See:/ 'getReusableDelegationSetLimit' smart constructor.
data GetReusableDelegationSetLimit = GetReusableDelegationSetLimit'
  { _grdslType ::
      !ReusableDelegationSetLimitType,
    _grdslDelegationSetId ::
      !ResourceId
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetReusableDelegationSetLimit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdslType' - Specify @MAX_ZONES_BY_REUSABLE_DELEGATION_SET@ to get the maximum number of hosted zones that you can associate with the specified reusable delegation set.
--
-- * 'grdslDelegationSetId' - The ID of the delegation set that you want to get the limit for.
getReusableDelegationSetLimit ::
  -- | 'grdslType'
  ReusableDelegationSetLimitType ->
  -- | 'grdslDelegationSetId'
  ResourceId ->
  GetReusableDelegationSetLimit
getReusableDelegationSetLimit
  pType_
  pDelegationSetId_ =
    GetReusableDelegationSetLimit'
      { _grdslType = pType_,
        _grdslDelegationSetId = pDelegationSetId_
      }

-- | Specify @MAX_ZONES_BY_REUSABLE_DELEGATION_SET@ to get the maximum number of hosted zones that you can associate with the specified reusable delegation set.
grdslType :: Lens' GetReusableDelegationSetLimit ReusableDelegationSetLimitType
grdslType = lens _grdslType (\s a -> s {_grdslType = a})

-- | The ID of the delegation set that you want to get the limit for.
grdslDelegationSetId :: Lens' GetReusableDelegationSetLimit ResourceId
grdslDelegationSetId = lens _grdslDelegationSetId (\s a -> s {_grdslDelegationSetId = a})

instance AWSRequest GetReusableDelegationSetLimit where
  type
    Rs GetReusableDelegationSetLimit =
      GetReusableDelegationSetLimitResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          GetReusableDelegationSetLimitResponse'
            <$> (pure (fromEnum s))
            <*> (x .@ "Limit")
            <*> (x .@ "Count")
      )

instance Hashable GetReusableDelegationSetLimit

instance NFData GetReusableDelegationSetLimit

instance ToHeaders GetReusableDelegationSetLimit where
  toHeaders = const mempty

instance ToPath GetReusableDelegationSetLimit where
  toPath GetReusableDelegationSetLimit' {..} =
    mconcat
      [ "/2013-04-01/reusabledelegationsetlimit/",
        toBS _grdslDelegationSetId,
        "/",
        toBS _grdslType
      ]

instance ToQuery GetReusableDelegationSetLimit where
  toQuery = const mempty

-- | A complex type that contains the requested limit.
--
--
--
-- /See:/ 'getReusableDelegationSetLimitResponse' smart constructor.
data GetReusableDelegationSetLimitResponse = GetReusableDelegationSetLimitResponse'
  { _grdslrrsResponseStatus ::
      !Int,
    _grdslrrsLimit ::
      !ReusableDelegationSetLimit,
    _grdslrrsCount ::
      !Nat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetReusableDelegationSetLimitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdslrrsResponseStatus' - -- | The response status code.
--
-- * 'grdslrrsLimit' - The current setting for the limit on hosted zones that you can associate with the specified reusable delegation set.
--
-- * 'grdslrrsCount' - The current number of hosted zones that you can associate with the specified reusable delegation set.
getReusableDelegationSetLimitResponse ::
  -- | 'grdslrrsResponseStatus'
  Int ->
  -- | 'grdslrrsLimit'
  ReusableDelegationSetLimit ->
  -- | 'grdslrrsCount'
  Natural ->
  GetReusableDelegationSetLimitResponse
getReusableDelegationSetLimitResponse
  pResponseStatus_
  pLimit_
  pCount_ =
    GetReusableDelegationSetLimitResponse'
      { _grdslrrsResponseStatus =
          pResponseStatus_,
        _grdslrrsLimit = pLimit_,
        _grdslrrsCount = _Nat # pCount_
      }

-- | -- | The response status code.
grdslrrsResponseStatus :: Lens' GetReusableDelegationSetLimitResponse Int
grdslrrsResponseStatus = lens _grdslrrsResponseStatus (\s a -> s {_grdslrrsResponseStatus = a})

-- | The current setting for the limit on hosted zones that you can associate with the specified reusable delegation set.
grdslrrsLimit :: Lens' GetReusableDelegationSetLimitResponse ReusableDelegationSetLimit
grdslrrsLimit = lens _grdslrrsLimit (\s a -> s {_grdslrrsLimit = a})

-- | The current number of hosted zones that you can associate with the specified reusable delegation set.
grdslrrsCount :: Lens' GetReusableDelegationSetLimitResponse Natural
grdslrrsCount = lens _grdslrrsCount (\s a -> s {_grdslrrsCount = a}) . _Nat

instance NFData GetReusableDelegationSetLimitResponse
