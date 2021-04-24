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
-- Module      : Network.AWS.SMS.GetServers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the servers in your server catalog.
--
--
-- Before you can describe your servers, you must import them using 'ImportServerCatalog' .
--
--
-- This operation returns paginated results.
module Network.AWS.SMS.GetServers
  ( -- * Creating a Request
    getServers,
    GetServers,

    -- * Request Lenses
    gsNextToken,
    gsMaxResults,
    gsVmServerAddressList,

    -- * Destructuring the Response
    getServersResponse,
    GetServersResponse,

    -- * Response Lenses
    gsrrsNextToken,
    gsrrsLastModifiedOn,
    gsrrsServerList,
    gsrrsServerCatalogStatus,
    gsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'getServers' smart constructor.
data GetServers = GetServers'
  { _gsNextToken ::
      !(Maybe Text),
    _gsMaxResults :: !(Maybe Int),
    _gsVmServerAddressList ::
      !(Maybe [VMServerAddress])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetServers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsNextToken' - The token for the next set of results.
--
-- * 'gsMaxResults' - The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'gsVmServerAddressList' - The server addresses.
getServers ::
  GetServers
getServers =
  GetServers'
    { _gsNextToken = Nothing,
      _gsMaxResults = Nothing,
      _gsVmServerAddressList = Nothing
    }

-- | The token for the next set of results.
gsNextToken :: Lens' GetServers (Maybe Text)
gsNextToken = lens _gsNextToken (\s a -> s {_gsNextToken = a})

-- | The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned @NextToken@ value.
gsMaxResults :: Lens' GetServers (Maybe Int)
gsMaxResults = lens _gsMaxResults (\s a -> s {_gsMaxResults = a})

-- | The server addresses.
gsVmServerAddressList :: Lens' GetServers [VMServerAddress]
gsVmServerAddressList = lens _gsVmServerAddressList (\s a -> s {_gsVmServerAddressList = a}) . _Default . _Coerce

instance AWSPager GetServers where
  page rq rs
    | stop (rs ^. gsrrsNextToken) = Nothing
    | stop (rs ^. gsrrsServerList) = Nothing
    | otherwise =
      Just $ rq & gsNextToken .~ rs ^. gsrrsNextToken

instance AWSRequest GetServers where
  type Rs GetServers = GetServersResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          GetServersResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "lastModifiedOn")
            <*> (x .?> "serverList" .!@ mempty)
            <*> (x .?> "serverCatalogStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable GetServers

instance NFData GetServers

instance ToHeaders GetServers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.GetServers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetServers where
  toJSON GetServers' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _gsNextToken,
            ("maxResults" .=) <$> _gsMaxResults,
            ("vmServerAddressList" .=)
              <$> _gsVmServerAddressList
          ]
      )

instance ToPath GetServers where
  toPath = const "/"

instance ToQuery GetServers where
  toQuery = const mempty

-- | /See:/ 'getServersResponse' smart constructor.
data GetServersResponse = GetServersResponse'
  { _gsrrsNextToken ::
      !(Maybe Text),
    _gsrrsLastModifiedOn ::
      !(Maybe POSIX),
    _gsrrsServerList ::
      !(Maybe [Server]),
    _gsrrsServerCatalogStatus ::
      !(Maybe ServerCatalogStatus),
    _gsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetServersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsrrsNextToken' - The token required to retrieve the next set of results. This value is null when there are no more results to return.
--
-- * 'gsrrsLastModifiedOn' - The time when the server was last modified.
--
-- * 'gsrrsServerList' - Information about the servers.
--
-- * 'gsrrsServerCatalogStatus' - The status of the server catalog.
--
-- * 'gsrrsResponseStatus' - -- | The response status code.
getServersResponse ::
  -- | 'gsrrsResponseStatus'
  Int ->
  GetServersResponse
getServersResponse pResponseStatus_ =
  GetServersResponse'
    { _gsrrsNextToken = Nothing,
      _gsrrsLastModifiedOn = Nothing,
      _gsrrsServerList = Nothing,
      _gsrrsServerCatalogStatus = Nothing,
      _gsrrsResponseStatus = pResponseStatus_
    }

-- | The token required to retrieve the next set of results. This value is null when there are no more results to return.
gsrrsNextToken :: Lens' GetServersResponse (Maybe Text)
gsrrsNextToken = lens _gsrrsNextToken (\s a -> s {_gsrrsNextToken = a})

-- | The time when the server was last modified.
gsrrsLastModifiedOn :: Lens' GetServersResponse (Maybe UTCTime)
gsrrsLastModifiedOn = lens _gsrrsLastModifiedOn (\s a -> s {_gsrrsLastModifiedOn = a}) . mapping _Time

-- | Information about the servers.
gsrrsServerList :: Lens' GetServersResponse [Server]
gsrrsServerList = lens _gsrrsServerList (\s a -> s {_gsrrsServerList = a}) . _Default . _Coerce

-- | The status of the server catalog.
gsrrsServerCatalogStatus :: Lens' GetServersResponse (Maybe ServerCatalogStatus)
gsrrsServerCatalogStatus = lens _gsrrsServerCatalogStatus (\s a -> s {_gsrrsServerCatalogStatus = a})

-- | -- | The response status code.
gsrrsResponseStatus :: Lens' GetServersResponse Int
gsrrsResponseStatus = lens _gsrrsResponseStatus (\s a -> s {_gsrrsResponseStatus = a})

instance NFData GetServersResponse
