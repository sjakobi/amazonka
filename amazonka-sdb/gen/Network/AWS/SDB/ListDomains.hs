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
-- Module      : Network.AWS.SDB.ListDomains
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListDomains@ operation lists all domains associated with the Access Key ID. It returns domain names up to the limit set by <#MaxNumberOfDomains MaxNumberOfDomains> . A <#NextToken NextToken> is returned if there are more than @MaxNumberOfDomains@ domains. Calling @ListDomains@ successive times with the @NextToken@ provided by the operation returns up to @MaxNumberOfDomains@ more domain names with each successive operation call.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SDB.ListDomains
  ( -- * Creating a Request
    listDomains,
    ListDomains,

    -- * Request Lenses
    ldNextToken,
    ldMaxNumberOfDomains,

    -- * Destructuring the Response
    listDomainsResponse,
    ListDomainsResponse,

    -- * Response Lenses
    ldrrsNextToken,
    ldrrsDomainNames,
    ldrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SDB.Types

-- | /See:/ 'listDomains' smart constructor.
data ListDomains = ListDomains'
  { _ldNextToken ::
      !(Maybe Text),
    _ldMaxNumberOfDomains :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDomains' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldNextToken' - A string informing Amazon SimpleDB where to start the next list of domain names.
--
-- * 'ldMaxNumberOfDomains' - The maximum number of domain names you want returned. The range is 1 to 100. The default setting is 100.
listDomains ::
  ListDomains
listDomains =
  ListDomains'
    { _ldNextToken = Nothing,
      _ldMaxNumberOfDomains = Nothing
    }

-- | A string informing Amazon SimpleDB where to start the next list of domain names.
ldNextToken :: Lens' ListDomains (Maybe Text)
ldNextToken = lens _ldNextToken (\s a -> s {_ldNextToken = a})

-- | The maximum number of domain names you want returned. The range is 1 to 100. The default setting is 100.
ldMaxNumberOfDomains :: Lens' ListDomains (Maybe Int)
ldMaxNumberOfDomains = lens _ldMaxNumberOfDomains (\s a -> s {_ldMaxNumberOfDomains = a})

instance AWSPager ListDomains where
  page rq rs
    | stop (rs ^. ldrrsNextToken) = Nothing
    | stop (rs ^. ldrrsDomainNames) = Nothing
    | otherwise =
      Just $ rq & ldNextToken .~ rs ^. ldrrsNextToken

instance AWSRequest ListDomains where
  type Rs ListDomains = ListDomainsResponse
  request = postQuery sdb
  response =
    receiveXMLWrapper
      "ListDomainsResult"
      ( \s h x ->
          ListDomainsResponse'
            <$> (x .@? "NextToken")
            <*> (may (parseXMLList "DomainName") x)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDomains

instance NFData ListDomains

instance ToHeaders ListDomains where
  toHeaders = const mempty

instance ToPath ListDomains where
  toPath = const "/"

instance ToQuery ListDomains where
  toQuery ListDomains' {..} =
    mconcat
      [ "Action" =: ("ListDomains" :: ByteString),
        "Version" =: ("2009-04-15" :: ByteString),
        "NextToken" =: _ldNextToken,
        "MaxNumberOfDomains" =: _ldMaxNumberOfDomains
      ]

-- | /See:/ 'listDomainsResponse' smart constructor.
data ListDomainsResponse = ListDomainsResponse'
  { _ldrrsNextToken ::
      !(Maybe Text),
    _ldrrsDomainNames ::
      !(Maybe [Text]),
    _ldrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDomainsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrsNextToken' - @MaxNumberOfDomains@
--
-- * 'ldrrsDomainNames' - A list of domain names that match the expression.
--
-- * 'ldrrsResponseStatus' - -- | The response status code.
listDomainsResponse ::
  -- | 'ldrrsResponseStatus'
  Int ->
  ListDomainsResponse
listDomainsResponse pResponseStatus_ =
  ListDomainsResponse'
    { _ldrrsNextToken = Nothing,
      _ldrrsDomainNames = Nothing,
      _ldrrsResponseStatus = pResponseStatus_
    }

-- | @MaxNumberOfDomains@
ldrrsNextToken :: Lens' ListDomainsResponse (Maybe Text)
ldrrsNextToken = lens _ldrrsNextToken (\s a -> s {_ldrrsNextToken = a})

-- | A list of domain names that match the expression.
ldrrsDomainNames :: Lens' ListDomainsResponse [Text]
ldrrsDomainNames = lens _ldrrsDomainNames (\s a -> s {_ldrrsDomainNames = a}) . _Default . _Coerce

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDomainsResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

instance NFData ListDomainsResponse
