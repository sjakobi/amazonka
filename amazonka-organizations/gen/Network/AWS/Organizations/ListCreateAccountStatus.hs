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
-- Module      : Network.AWS.Organizations.ListCreateAccountStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the account creation requests that match the specified status that is currently being tracked for the organization.
--
--
-- This operation can be called only from the organization's management account or by a member account that is a delegated administrator for an AWS service.
--
--
-- This operation returns paginated results.
module Network.AWS.Organizations.ListCreateAccountStatus
  ( -- * Creating a Request
    listCreateAccountStatus,
    ListCreateAccountStatus,

    -- * Request Lenses
    lcasNextToken,
    lcasStates,
    lcasMaxResults,

    -- * Destructuring the Response
    listCreateAccountStatusResponse,
    ListCreateAccountStatusResponse,

    -- * Response Lenses
    lcasrrsNextToken,
    lcasrrsCreateAccountStatuses,
    lcasrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listCreateAccountStatus' smart constructor.
data ListCreateAccountStatus = ListCreateAccountStatus'
  { _lcasNextToken ::
      !(Maybe Text),
    _lcasStates ::
      !( Maybe
           [CreateAccountState]
       ),
    _lcasMaxResults ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListCreateAccountStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcasNextToken' - The parameter for receiving additional results if you receive a @NextToken@ response in a previous request. A @NextToken@ response indicates that more output is available. Set this parameter to the value of the previous call's @NextToken@ response to indicate where the output should continue from.
--
-- * 'lcasStates' - A list of one or more states that you want included in the response. If this parameter isn't present, all requests are included in the response.
--
-- * 'lcasMaxResults' - The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
listCreateAccountStatus ::
  ListCreateAccountStatus
listCreateAccountStatus =
  ListCreateAccountStatus'
    { _lcasNextToken = Nothing,
      _lcasStates = Nothing,
      _lcasMaxResults = Nothing
    }

-- | The parameter for receiving additional results if you receive a @NextToken@ response in a previous request. A @NextToken@ response indicates that more output is available. Set this parameter to the value of the previous call's @NextToken@ response to indicate where the output should continue from.
lcasNextToken :: Lens' ListCreateAccountStatus (Maybe Text)
lcasNextToken = lens _lcasNextToken (\s a -> s {_lcasNextToken = a})

-- | A list of one or more states that you want included in the response. If this parameter isn't present, all requests are included in the response.
lcasStates :: Lens' ListCreateAccountStatus [CreateAccountState]
lcasStates = lens _lcasStates (\s a -> s {_lcasStates = a}) . _Default . _Coerce

-- | The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
lcasMaxResults :: Lens' ListCreateAccountStatus (Maybe Natural)
lcasMaxResults = lens _lcasMaxResults (\s a -> s {_lcasMaxResults = a}) . mapping _Nat

instance AWSPager ListCreateAccountStatus where
  page rq rs
    | stop (rs ^. lcasrrsNextToken) = Nothing
    | stop (rs ^. lcasrrsCreateAccountStatuses) = Nothing
    | otherwise =
      Just $ rq & lcasNextToken .~ rs ^. lcasrrsNextToken

instance AWSRequest ListCreateAccountStatus where
  type
    Rs ListCreateAccountStatus =
      ListCreateAccountStatusResponse
  request = postJSON organizations
  response =
    receiveJSON
      ( \s h x ->
          ListCreateAccountStatusResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "CreateAccountStatuses" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCreateAccountStatus

instance NFData ListCreateAccountStatus

instance ToHeaders ListCreateAccountStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrganizationsV20161128.ListCreateAccountStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListCreateAccountStatus where
  toJSON ListCreateAccountStatus' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lcasNextToken,
            ("States" .=) <$> _lcasStates,
            ("MaxResults" .=) <$> _lcasMaxResults
          ]
      )

instance ToPath ListCreateAccountStatus where
  toPath = const "/"

instance ToQuery ListCreateAccountStatus where
  toQuery = const mempty

-- | /See:/ 'listCreateAccountStatusResponse' smart constructor.
data ListCreateAccountStatusResponse = ListCreateAccountStatusResponse'
  { _lcasrrsNextToken ::
      !( Maybe
           Text
       ),
    _lcasrrsCreateAccountStatuses ::
      !( Maybe
           [CreateAccountStatus]
       ),
    _lcasrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListCreateAccountStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcasrrsNextToken' - If present, indicates that more output is available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
--
-- * 'lcasrrsCreateAccountStatuses' - A list of objects with details about the requests. Certain elements, such as the accountId number, are present in the output only after the account has been successfully created.
--
-- * 'lcasrrsResponseStatus' - -- | The response status code.
listCreateAccountStatusResponse ::
  -- | 'lcasrrsResponseStatus'
  Int ->
  ListCreateAccountStatusResponse
listCreateAccountStatusResponse pResponseStatus_ =
  ListCreateAccountStatusResponse'
    { _lcasrrsNextToken =
        Nothing,
      _lcasrrsCreateAccountStatuses = Nothing,
      _lcasrrsResponseStatus = pResponseStatus_
    }

-- | If present, indicates that more output is available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
lcasrrsNextToken :: Lens' ListCreateAccountStatusResponse (Maybe Text)
lcasrrsNextToken = lens _lcasrrsNextToken (\s a -> s {_lcasrrsNextToken = a})

-- | A list of objects with details about the requests. Certain elements, such as the accountId number, are present in the output only after the account has been successfully created.
lcasrrsCreateAccountStatuses :: Lens' ListCreateAccountStatusResponse [CreateAccountStatus]
lcasrrsCreateAccountStatuses = lens _lcasrrsCreateAccountStatuses (\s a -> s {_lcasrrsCreateAccountStatuses = a}) . _Default . _Coerce

-- | -- | The response status code.
lcasrrsResponseStatus :: Lens' ListCreateAccountStatusResponse Int
lcasrrsResponseStatus = lens _lcasrrsResponseStatus (\s a -> s {_lcasrrsResponseStatus = a})

instance NFData ListCreateAccountStatusResponse
