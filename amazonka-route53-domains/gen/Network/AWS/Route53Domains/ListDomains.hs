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
-- Module      : Network.AWS.Route53Domains.ListDomains
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Route53Domains.ListDomains
  ( -- * Creating a Request
    listDomains,
    ListDomains,

    -- * Request Lenses
    ldMaxItems,
    ldMarker,

    -- * Destructuring the Response
    listDomainsResponse,
    ListDomainsResponse,

    -- * Response Lenses
    ldrrsNextPageMarker,
    ldrrsResponseStatus,
    ldrrsDomains,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | The ListDomains request includes the following elements.
--
--
--
-- /See:/ 'listDomains' smart constructor.
data ListDomains = ListDomains'
  { _ldMaxItems ::
      !(Maybe Int),
    _ldMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDomains' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldMaxItems' - Number of domains to be returned. Default: 20
--
-- * 'ldMarker' - For an initial request for a list of domains, omit this element. If the number of domains that are associated with the current AWS account is greater than the value that you specified for @MaxItems@ , you can use @Marker@ to return additional domains. Get the value of @NextPageMarker@ from the previous response, and submit another request that includes the value of @NextPageMarker@ in the @Marker@ element. Constraints: The marker must match the value specified in the previous request.
listDomains ::
  ListDomains
listDomains =
  ListDomains'
    { _ldMaxItems = Nothing,
      _ldMarker = Nothing
    }

-- | Number of domains to be returned. Default: 20
ldMaxItems :: Lens' ListDomains (Maybe Int)
ldMaxItems = lens _ldMaxItems (\s a -> s {_ldMaxItems = a})

-- | For an initial request for a list of domains, omit this element. If the number of domains that are associated with the current AWS account is greater than the value that you specified for @MaxItems@ , you can use @Marker@ to return additional domains. Get the value of @NextPageMarker@ from the previous response, and submit another request that includes the value of @NextPageMarker@ in the @Marker@ element. Constraints: The marker must match the value specified in the previous request.
ldMarker :: Lens' ListDomains (Maybe Text)
ldMarker = lens _ldMarker (\s a -> s {_ldMarker = a})

instance AWSPager ListDomains where
  page rq rs
    | stop (rs ^. ldrrsNextPageMarker) = Nothing
    | stop (rs ^. ldrrsDomains) = Nothing
    | otherwise =
      Just $ rq & ldMarker .~ rs ^. ldrrsNextPageMarker

instance AWSRequest ListDomains where
  type Rs ListDomains = ListDomainsResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          ListDomainsResponse'
            <$> (x .?> "NextPageMarker")
            <*> (pure (fromEnum s))
            <*> (x .?> "Domains" .!@ mempty)
      )

instance Hashable ListDomains

instance NFData ListDomains

instance ToHeaders ListDomains where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.ListDomains" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDomains where
  toJSON ListDomains' {..} =
    object
      ( catMaybes
          [ ("MaxItems" .=) <$> _ldMaxItems,
            ("Marker" .=) <$> _ldMarker
          ]
      )

instance ToPath ListDomains where
  toPath = const "/"

instance ToQuery ListDomains where
  toQuery = const mempty

-- | The ListDomains response includes the following elements.
--
--
--
-- /See:/ 'listDomainsResponse' smart constructor.
data ListDomainsResponse = ListDomainsResponse'
  { _ldrrsNextPageMarker ::
      !(Maybe Text),
    _ldrrsResponseStatus :: !Int,
    _ldrrsDomains ::
      ![DomainSummary]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDomainsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrsNextPageMarker' - If there are more domains than you specified for @MaxItems@ in the request, submit another request and include the value of @NextPageMarker@ in the value of @Marker@ .
--
-- * 'ldrrsResponseStatus' - -- | The response status code.
--
-- * 'ldrrsDomains' - A summary of domains.
listDomainsResponse ::
  -- | 'ldrrsResponseStatus'
  Int ->
  ListDomainsResponse
listDomainsResponse pResponseStatus_ =
  ListDomainsResponse'
    { _ldrrsNextPageMarker =
        Nothing,
      _ldrrsResponseStatus = pResponseStatus_,
      _ldrrsDomains = mempty
    }

-- | If there are more domains than you specified for @MaxItems@ in the request, submit another request and include the value of @NextPageMarker@ in the value of @Marker@ .
ldrrsNextPageMarker :: Lens' ListDomainsResponse (Maybe Text)
ldrrsNextPageMarker = lens _ldrrsNextPageMarker (\s a -> s {_ldrrsNextPageMarker = a})

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDomainsResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

-- | A summary of domains.
ldrrsDomains :: Lens' ListDomainsResponse [DomainSummary]
ldrrsDomains = lens _ldrrsDomains (\s a -> s {_ldrrsDomains = a}) . _Coerce

instance NFData ListDomainsResponse
