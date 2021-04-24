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
-- Module      : Network.AWS.SWF.ListDomains
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of domains registered in the account. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.
--
--
-- __Access Control__
--
-- You can use IAM policies to control this action's access to Amazon SWF resources as follows:
--
--     * Use a @Resource@ element with the domain name to limit the action to only specified domains. The element must be set to @arn:aws:swf::AccountID:domain/*@ , where /AccountID/ is the account ID, with no dashes.
--
--     * Use an @Action@ element to allow or deny permission to call this action.
--
--     * You cannot use an IAM policy to constrain this action's parameters.
--
--
--
-- If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's @cause@ parameter is set to @OPERATION_NOT_PERMITTED@ . For details and example IAM policies, see <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows> in the /Amazon SWF Developer Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.SWF.ListDomains
  ( -- * Creating a Request
    listDomains,
    ListDomains,

    -- * Request Lenses
    ldNextPageToken,
    ldMaximumPageSize,
    ldReverseOrder,
    ldRegistrationStatus,

    -- * Destructuring the Response
    listDomainsResponse,
    ListDomainsResponse,

    -- * Response Lenses
    ldrrsNextPageToken,
    ldrrsResponseStatus,
    ldrrsDomainInfos,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SWF.Types

-- | /See:/ 'listDomains' smart constructor.
data ListDomains = ListDomains'
  { _ldNextPageToken ::
      !(Maybe Text),
    _ldMaximumPageSize :: !(Maybe Nat),
    _ldReverseOrder :: !(Maybe Bool),
    _ldRegistrationStatus :: !RegistrationStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDomains' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldNextPageToken' - If @NextPageToken@ is returned there are more results available. The value of @NextPageToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a @400@ error: "@Specified token has exceeded its maximum lifetime@ ".  The configured @maximumPageSize@ determines how many results can be returned in a single call.
--
-- * 'ldMaximumPageSize' - The maximum number of results that are returned per call. Use @nextPageToken@ to obtain further pages of results.
--
-- * 'ldReverseOrder' - When set to @true@ , returns the results in reverse order. By default, the results are returned in ascending alphabetical order by @name@ of the domains.
--
-- * 'ldRegistrationStatus' - Specifies the registration status of the domains to list.
listDomains ::
  -- | 'ldRegistrationStatus'
  RegistrationStatus ->
  ListDomains
listDomains pRegistrationStatus_ =
  ListDomains'
    { _ldNextPageToken = Nothing,
      _ldMaximumPageSize = Nothing,
      _ldReverseOrder = Nothing,
      _ldRegistrationStatus = pRegistrationStatus_
    }

-- | If @NextPageToken@ is returned there are more results available. The value of @NextPageToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a @400@ error: "@Specified token has exceeded its maximum lifetime@ ".  The configured @maximumPageSize@ determines how many results can be returned in a single call.
ldNextPageToken :: Lens' ListDomains (Maybe Text)
ldNextPageToken = lens _ldNextPageToken (\s a -> s {_ldNextPageToken = a})

-- | The maximum number of results that are returned per call. Use @nextPageToken@ to obtain further pages of results.
ldMaximumPageSize :: Lens' ListDomains (Maybe Natural)
ldMaximumPageSize = lens _ldMaximumPageSize (\s a -> s {_ldMaximumPageSize = a}) . mapping _Nat

-- | When set to @true@ , returns the results in reverse order. By default, the results are returned in ascending alphabetical order by @name@ of the domains.
ldReverseOrder :: Lens' ListDomains (Maybe Bool)
ldReverseOrder = lens _ldReverseOrder (\s a -> s {_ldReverseOrder = a})

-- | Specifies the registration status of the domains to list.
ldRegistrationStatus :: Lens' ListDomains RegistrationStatus
ldRegistrationStatus = lens _ldRegistrationStatus (\s a -> s {_ldRegistrationStatus = a})

instance AWSPager ListDomains where
  page rq rs
    | stop (rs ^. ldrrsNextPageToken) = Nothing
    | stop (rs ^. ldrrsDomainInfos) = Nothing
    | otherwise =
      Just $
        rq
          & ldNextPageToken .~ rs ^. ldrrsNextPageToken

instance AWSRequest ListDomains where
  type Rs ListDomains = ListDomainsResponse
  request = postJSON swf
  response =
    receiveJSON
      ( \s h x ->
          ListDomainsResponse'
            <$> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "domainInfos" .!@ mempty)
      )

instance Hashable ListDomains

instance NFData ListDomains

instance ToHeaders ListDomains where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SimpleWorkflowService.ListDomains" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON ListDomains where
  toJSON ListDomains' {..} =
    object
      ( catMaybes
          [ ("nextPageToken" .=) <$> _ldNextPageToken,
            ("maximumPageSize" .=) <$> _ldMaximumPageSize,
            ("reverseOrder" .=) <$> _ldReverseOrder,
            Just
              ("registrationStatus" .= _ldRegistrationStatus)
          ]
      )

instance ToPath ListDomains where
  toPath = const "/"

instance ToQuery ListDomains where
  toQuery = const mempty

-- | Contains a paginated collection of DomainInfo structures.
--
--
--
-- /See:/ 'listDomainsResponse' smart constructor.
data ListDomainsResponse = ListDomainsResponse'
  { _ldrrsNextPageToken ::
      !(Maybe Text),
    _ldrrsResponseStatus :: !Int,
    _ldrrsDomainInfos ::
      ![DomainInfo]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDomainsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrsNextPageToken' - If a @NextPageToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @nextPageToken@ . Keep all other arguments unchanged. The configured @maximumPageSize@ determines how many results can be returned in a single call.
--
-- * 'ldrrsResponseStatus' - -- | The response status code.
--
-- * 'ldrrsDomainInfos' - A list of DomainInfo structures.
listDomainsResponse ::
  -- | 'ldrrsResponseStatus'
  Int ->
  ListDomainsResponse
listDomainsResponse pResponseStatus_ =
  ListDomainsResponse'
    { _ldrrsNextPageToken = Nothing,
      _ldrrsResponseStatus = pResponseStatus_,
      _ldrrsDomainInfos = mempty
    }

-- | If a @NextPageToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @nextPageToken@ . Keep all other arguments unchanged. The configured @maximumPageSize@ determines how many results can be returned in a single call.
ldrrsNextPageToken :: Lens' ListDomainsResponse (Maybe Text)
ldrrsNextPageToken = lens _ldrrsNextPageToken (\s a -> s {_ldrrsNextPageToken = a})

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDomainsResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

-- | A list of DomainInfo structures.
ldrrsDomainInfos :: Lens' ListDomainsResponse [DomainInfo]
ldrrsDomainInfos = lens _ldrrsDomainInfos (\s a -> s {_ldrrsDomainInfos = a}) . _Coerce

instance NFData ListDomainsResponse
