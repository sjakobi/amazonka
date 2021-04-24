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
-- Module      : Network.AWS.Glue.GetResourcePolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the security configurations for the resource policies set on individual resources, and also the account-level policy.
--
--
-- This operation also returns the Data Catalog resource policy. However, if you enabled metadata encryption in Data Catalog settings, and you do not have permission on the AWS KMS key, the operation can't return the Data Catalog resource policy.
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetResourcePolicies
  ( -- * Creating a Request
    getResourcePolicies,
    GetResourcePolicies,

    -- * Request Lenses
    grpNextToken,
    grpMaxResults,

    -- * Destructuring the Response
    getResourcePoliciesResponse,
    GetResourcePoliciesResponse,

    -- * Response Lenses
    grprrrsNextToken,
    grprrrsGetResourcePoliciesResponseList,
    grprrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getResourcePolicies' smart constructor.
data GetResourcePolicies = GetResourcePolicies'
  { _grpNextToken ::
      !(Maybe Text),
    _grpMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetResourcePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grpNextToken' - A continuation token, if this is a continuation request.
--
-- * 'grpMaxResults' - The maximum size of a list to return.
getResourcePolicies ::
  GetResourcePolicies
getResourcePolicies =
  GetResourcePolicies'
    { _grpNextToken = Nothing,
      _grpMaxResults = Nothing
    }

-- | A continuation token, if this is a continuation request.
grpNextToken :: Lens' GetResourcePolicies (Maybe Text)
grpNextToken = lens _grpNextToken (\s a -> s {_grpNextToken = a})

-- | The maximum size of a list to return.
grpMaxResults :: Lens' GetResourcePolicies (Maybe Natural)
grpMaxResults = lens _grpMaxResults (\s a -> s {_grpMaxResults = a}) . mapping _Nat

instance AWSPager GetResourcePolicies where
  page rq rs
    | stop (rs ^. grprrrsNextToken) = Nothing
    | stop (rs ^. grprrrsGetResourcePoliciesResponseList) =
      Nothing
    | otherwise =
      Just $ rq & grpNextToken .~ rs ^. grprrrsNextToken

instance AWSRequest GetResourcePolicies where
  type
    Rs GetResourcePolicies =
      GetResourcePoliciesResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetResourcePoliciesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "GetResourcePoliciesResponseList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetResourcePolicies

instance NFData GetResourcePolicies

instance ToHeaders GetResourcePolicies where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetResourcePolicies" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetResourcePolicies where
  toJSON GetResourcePolicies' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _grpNextToken,
            ("MaxResults" .=) <$> _grpMaxResults
          ]
      )

instance ToPath GetResourcePolicies where
  toPath = const "/"

instance ToQuery GetResourcePolicies where
  toQuery = const mempty

-- | /See:/ 'getResourcePoliciesResponse' smart constructor.
data GetResourcePoliciesResponse = GetResourcePoliciesResponse'
  { _grprrrsNextToken ::
      !(Maybe Text),
    _grprrrsGetResourcePoliciesResponseList ::
      !( Maybe
           [GluePolicy]
       ),
    _grprrrsResponseStatus ::
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

-- | Creates a value of 'GetResourcePoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grprrrsNextToken' - A continuation token, if the returned list does not contain the last resource policy available.
--
-- * 'grprrrsGetResourcePoliciesResponseList' - A list of the individual resource policies and the account-level resource policy.
--
-- * 'grprrrsResponseStatus' - -- | The response status code.
getResourcePoliciesResponse ::
  -- | 'grprrrsResponseStatus'
  Int ->
  GetResourcePoliciesResponse
getResourcePoliciesResponse pResponseStatus_ =
  GetResourcePoliciesResponse'
    { _grprrrsNextToken =
        Nothing,
      _grprrrsGetResourcePoliciesResponseList =
        Nothing,
      _grprrrsResponseStatus = pResponseStatus_
    }

-- | A continuation token, if the returned list does not contain the last resource policy available.
grprrrsNextToken :: Lens' GetResourcePoliciesResponse (Maybe Text)
grprrrsNextToken = lens _grprrrsNextToken (\s a -> s {_grprrrsNextToken = a})

-- | A list of the individual resource policies and the account-level resource policy.
grprrrsGetResourcePoliciesResponseList :: Lens' GetResourcePoliciesResponse [GluePolicy]
grprrrsGetResourcePoliciesResponseList = lens _grprrrsGetResourcePoliciesResponseList (\s a -> s {_grprrrsGetResourcePoliciesResponseList = a}) . _Default . _Coerce

-- | -- | The response status code.
grprrrsResponseStatus :: Lens' GetResourcePoliciesResponse Int
grprrrsResponseStatus = lens _grprrrsResponseStatus (\s a -> s {_grprrrsResponseStatus = a})

instance NFData GetResourcePoliciesResponse
