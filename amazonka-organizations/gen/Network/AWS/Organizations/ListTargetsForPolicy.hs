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
-- Module      : Network.AWS.Organizations.ListTargetsForPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the roots, organizational units (OUs), and accounts that the specified policy is attached to.
--
--
-- This operation can be called only from the organization's management account or by a member account that is a delegated administrator for an AWS service.
--
--
-- This operation returns paginated results.
module Network.AWS.Organizations.ListTargetsForPolicy
  ( -- * Creating a Request
    listTargetsForPolicy,
    ListTargetsForPolicy,

    -- * Request Lenses
    ltfpNextToken,
    ltfpMaxResults,
    ltfpPolicyId,

    -- * Destructuring the Response
    listTargetsForPolicyResponse,
    ListTargetsForPolicyResponse,

    -- * Response Lenses
    ltfprrsNextToken,
    ltfprrsTargets,
    ltfprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTargetsForPolicy' smart constructor.
data ListTargetsForPolicy = ListTargetsForPolicy'
  { _ltfpNextToken ::
      !(Maybe Text),
    _ltfpMaxResults ::
      !(Maybe Nat),
    _ltfpPolicyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTargetsForPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfpNextToken' - The parameter for receiving additional results if you receive a @NextToken@ response in a previous request. A @NextToken@ response indicates that more output is available. Set this parameter to the value of the previous call's @NextToken@ response to indicate where the output should continue from.
--
-- * 'ltfpMaxResults' - The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
--
-- * 'ltfpPolicyId' - The unique identifier (ID) of the policy whose attachments you want to know. The <http://wikipedia.org/wiki/regex regex pattern> for a policy ID string requires "p-" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).
listTargetsForPolicy ::
  -- | 'ltfpPolicyId'
  Text ->
  ListTargetsForPolicy
listTargetsForPolicy pPolicyId_ =
  ListTargetsForPolicy'
    { _ltfpNextToken = Nothing,
      _ltfpMaxResults = Nothing,
      _ltfpPolicyId = pPolicyId_
    }

-- | The parameter for receiving additional results if you receive a @NextToken@ response in a previous request. A @NextToken@ response indicates that more output is available. Set this parameter to the value of the previous call's @NextToken@ response to indicate where the output should continue from.
ltfpNextToken :: Lens' ListTargetsForPolicy (Maybe Text)
ltfpNextToken = lens _ltfpNextToken (\s a -> s {_ltfpNextToken = a})

-- | The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
ltfpMaxResults :: Lens' ListTargetsForPolicy (Maybe Natural)
ltfpMaxResults = lens _ltfpMaxResults (\s a -> s {_ltfpMaxResults = a}) . mapping _Nat

-- | The unique identifier (ID) of the policy whose attachments you want to know. The <http://wikipedia.org/wiki/regex regex pattern> for a policy ID string requires "p-" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).
ltfpPolicyId :: Lens' ListTargetsForPolicy Text
ltfpPolicyId = lens _ltfpPolicyId (\s a -> s {_ltfpPolicyId = a})

instance AWSPager ListTargetsForPolicy where
  page rq rs
    | stop (rs ^. ltfprrsNextToken) = Nothing
    | stop (rs ^. ltfprrsTargets) = Nothing
    | otherwise =
      Just $ rq & ltfpNextToken .~ rs ^. ltfprrsNextToken

instance AWSRequest ListTargetsForPolicy where
  type
    Rs ListTargetsForPolicy =
      ListTargetsForPolicyResponse
  request = postJSON organizations
  response =
    receiveJSON
      ( \s h x ->
          ListTargetsForPolicyResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Targets" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTargetsForPolicy

instance NFData ListTargetsForPolicy

instance ToHeaders ListTargetsForPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrganizationsV20161128.ListTargetsForPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTargetsForPolicy where
  toJSON ListTargetsForPolicy' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltfpNextToken,
            ("MaxResults" .=) <$> _ltfpMaxResults,
            Just ("PolicyId" .= _ltfpPolicyId)
          ]
      )

instance ToPath ListTargetsForPolicy where
  toPath = const "/"

instance ToQuery ListTargetsForPolicy where
  toQuery = const mempty

-- | /See:/ 'listTargetsForPolicyResponse' smart constructor.
data ListTargetsForPolicyResponse = ListTargetsForPolicyResponse'
  { _ltfprrsNextToken ::
      !(Maybe Text),
    _ltfprrsTargets ::
      !( Maybe
           [PolicyTargetSummary]
       ),
    _ltfprrsResponseStatus ::
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

-- | Creates a value of 'ListTargetsForPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfprrsNextToken' - If present, indicates that more output is available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
--
-- * 'ltfprrsTargets' - A list of structures, each of which contains details about one of the entities to which the specified policy is attached.
--
-- * 'ltfprrsResponseStatus' - -- | The response status code.
listTargetsForPolicyResponse ::
  -- | 'ltfprrsResponseStatus'
  Int ->
  ListTargetsForPolicyResponse
listTargetsForPolicyResponse pResponseStatus_ =
  ListTargetsForPolicyResponse'
    { _ltfprrsNextToken =
        Nothing,
      _ltfprrsTargets = Nothing,
      _ltfprrsResponseStatus = pResponseStatus_
    }

-- | If present, indicates that more output is available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
ltfprrsNextToken :: Lens' ListTargetsForPolicyResponse (Maybe Text)
ltfprrsNextToken = lens _ltfprrsNextToken (\s a -> s {_ltfprrsNextToken = a})

-- | A list of structures, each of which contains details about one of the entities to which the specified policy is attached.
ltfprrsTargets :: Lens' ListTargetsForPolicyResponse [PolicyTargetSummary]
ltfprrsTargets = lens _ltfprrsTargets (\s a -> s {_ltfprrsTargets = a}) . _Default . _Coerce

-- | -- | The response status code.
ltfprrsResponseStatus :: Lens' ListTargetsForPolicyResponse Int
ltfprrsResponseStatus = lens _ltfprrsResponseStatus (\s a -> s {_ltfprrsResponseStatus = a})

instance NFData ListTargetsForPolicyResponse
