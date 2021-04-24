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
-- Module      : Network.AWS.Route53.GetReusableDelegationSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a specified reusable delegation set, including the four name servers that are assigned to the delegation set.
module Network.AWS.Route53.GetReusableDelegationSet
  ( -- * Creating a Request
    getReusableDelegationSet,
    GetReusableDelegationSet,

    -- * Request Lenses
    grdsId,

    -- * Destructuring the Response
    getReusableDelegationSetResponse,
    GetReusableDelegationSetResponse,

    -- * Response Lenses
    grdsrrsResponseStatus,
    grdsrrsDelegationSet,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request to get information about a specified reusable delegation set.
--
--
--
-- /See:/ 'getReusableDelegationSet' smart constructor.
newtype GetReusableDelegationSet = GetReusableDelegationSet'
  { _grdsId ::
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

-- | Creates a value of 'GetReusableDelegationSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdsId' - The ID of the reusable delegation set that you want to get a list of name servers for.
getReusableDelegationSet ::
  -- | 'grdsId'
  ResourceId ->
  GetReusableDelegationSet
getReusableDelegationSet pId_ =
  GetReusableDelegationSet' {_grdsId = pId_}

-- | The ID of the reusable delegation set that you want to get a list of name servers for.
grdsId :: Lens' GetReusableDelegationSet ResourceId
grdsId = lens _grdsId (\s a -> s {_grdsId = a})

instance AWSRequest GetReusableDelegationSet where
  type
    Rs GetReusableDelegationSet =
      GetReusableDelegationSetResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          GetReusableDelegationSetResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "DelegationSet")
      )

instance Hashable GetReusableDelegationSet

instance NFData GetReusableDelegationSet

instance ToHeaders GetReusableDelegationSet where
  toHeaders = const mempty

instance ToPath GetReusableDelegationSet where
  toPath GetReusableDelegationSet' {..} =
    mconcat
      ["/2013-04-01/delegationset/", toBS _grdsId]

instance ToQuery GetReusableDelegationSet where
  toQuery = const mempty

-- | A complex type that contains the response to the @GetReusableDelegationSet@ request.
--
--
--
-- /See:/ 'getReusableDelegationSetResponse' smart constructor.
data GetReusableDelegationSetResponse = GetReusableDelegationSetResponse'
  { _grdsrrsResponseStatus ::
      !Int,
    _grdsrrsDelegationSet ::
      !DelegationSet
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetReusableDelegationSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdsrrsResponseStatus' - -- | The response status code.
--
-- * 'grdsrrsDelegationSet' - A complex type that contains information about the reusable delegation set.
getReusableDelegationSetResponse ::
  -- | 'grdsrrsResponseStatus'
  Int ->
  -- | 'grdsrrsDelegationSet'
  DelegationSet ->
  GetReusableDelegationSetResponse
getReusableDelegationSetResponse
  pResponseStatus_
  pDelegationSet_ =
    GetReusableDelegationSetResponse'
      { _grdsrrsResponseStatus =
          pResponseStatus_,
        _grdsrrsDelegationSet = pDelegationSet_
      }

-- | -- | The response status code.
grdsrrsResponseStatus :: Lens' GetReusableDelegationSetResponse Int
grdsrrsResponseStatus = lens _grdsrrsResponseStatus (\s a -> s {_grdsrrsResponseStatus = a})

-- | A complex type that contains information about the reusable delegation set.
grdsrrsDelegationSet :: Lens' GetReusableDelegationSetResponse DelegationSet
grdsrrsDelegationSet = lens _grdsrrsDelegationSet (\s a -> s {_grdsrrsDelegationSet = a})

instance NFData GetReusableDelegationSetResponse
