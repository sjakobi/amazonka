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
-- Module      : Network.AWS.Glue.GetConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of connection definitions from the Data Catalog.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetConnections
  ( -- * Creating a Request
    getConnections,
    GetConnections,

    -- * Request Lenses
    gcsNextToken,
    gcsCatalogId,
    gcsMaxResults,
    gcsHidePassword,
    gcsFilter,

    -- * Destructuring the Response
    getConnectionsResponse,
    GetConnectionsResponse,

    -- * Response Lenses
    getconnectionsresponseersNextToken,
    getconnectionsresponseersConnectionList,
    getconnectionsresponseersResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getConnections' smart constructor.
data GetConnections = GetConnections'
  { _gcsNextToken ::
      !(Maybe Text),
    _gcsCatalogId :: !(Maybe Text),
    _gcsMaxResults :: !(Maybe Nat),
    _gcsHidePassword :: !(Maybe Bool),
    _gcsFilter ::
      !(Maybe GetConnectionsFilter)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetConnections' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsNextToken' - A continuation token, if this is a continuation call.
--
-- * 'gcsCatalogId' - The ID of the Data Catalog in which the connections reside. If none is provided, the AWS account ID is used by default.
--
-- * 'gcsMaxResults' - The maximum number of connections to return in one response.
--
-- * 'gcsHidePassword' - Allows you to retrieve the connection metadata without returning the password. For instance, the AWS Glue console uses this flag to retrieve the connection, and does not display the password. Set this parameter when the caller might not have permission to use the AWS KMS key to decrypt the password, but it does have permission to access the rest of the connection properties.
--
-- * 'gcsFilter' - A filter that controls which connections are returned.
getConnections ::
  GetConnections
getConnections =
  GetConnections'
    { _gcsNextToken = Nothing,
      _gcsCatalogId = Nothing,
      _gcsMaxResults = Nothing,
      _gcsHidePassword = Nothing,
      _gcsFilter = Nothing
    }

-- | A continuation token, if this is a continuation call.
gcsNextToken :: Lens' GetConnections (Maybe Text)
gcsNextToken = lens _gcsNextToken (\s a -> s {_gcsNextToken = a})

-- | The ID of the Data Catalog in which the connections reside. If none is provided, the AWS account ID is used by default.
gcsCatalogId :: Lens' GetConnections (Maybe Text)
gcsCatalogId = lens _gcsCatalogId (\s a -> s {_gcsCatalogId = a})

-- | The maximum number of connections to return in one response.
gcsMaxResults :: Lens' GetConnections (Maybe Natural)
gcsMaxResults = lens _gcsMaxResults (\s a -> s {_gcsMaxResults = a}) . mapping _Nat

-- | Allows you to retrieve the connection metadata without returning the password. For instance, the AWS Glue console uses this flag to retrieve the connection, and does not display the password. Set this parameter when the caller might not have permission to use the AWS KMS key to decrypt the password, but it does have permission to access the rest of the connection properties.
gcsHidePassword :: Lens' GetConnections (Maybe Bool)
gcsHidePassword = lens _gcsHidePassword (\s a -> s {_gcsHidePassword = a})

-- | A filter that controls which connections are returned.
gcsFilter :: Lens' GetConnections (Maybe GetConnectionsFilter)
gcsFilter = lens _gcsFilter (\s a -> s {_gcsFilter = a})

instance AWSPager GetConnections where
  page rq rs
    | stop (rs ^. getconnectionsresponseersNextToken) =
      Nothing
    | stop
        (rs ^. getconnectionsresponseersConnectionList) =
      Nothing
    | otherwise =
      Just $
        rq
          & gcsNextToken
          .~ rs ^. getconnectionsresponseersNextToken

instance AWSRequest GetConnections where
  type Rs GetConnections = GetConnectionsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetConnectionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ConnectionList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetConnections

instance NFData GetConnections

instance ToHeaders GetConnections where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetConnections" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetConnections where
  toJSON GetConnections' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gcsNextToken,
            ("CatalogId" .=) <$> _gcsCatalogId,
            ("MaxResults" .=) <$> _gcsMaxResults,
            ("HidePassword" .=) <$> _gcsHidePassword,
            ("Filter" .=) <$> _gcsFilter
          ]
      )

instance ToPath GetConnections where
  toPath = const "/"

instance ToQuery GetConnections where
  toQuery = const mempty

-- | /See:/ 'getConnectionsResponse' smart constructor.
data GetConnectionsResponse = GetConnectionsResponse'
  { _getconnectionsresponseersNextToken ::
      !(Maybe Text),
    _getconnectionsresponseersConnectionList ::
      !(Maybe [Connection]),
    _getconnectionsresponseersResponseStatus ::
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

-- | Creates a value of 'GetConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getconnectionsresponseersNextToken' - A continuation token, if the list of connections returned does not include the last of the filtered connections.
--
-- * 'getconnectionsresponseersConnectionList' - A list of requested connection definitions.
--
-- * 'getconnectionsresponseersResponseStatus' - -- | The response status code.
getConnectionsResponse ::
  -- | 'getconnectionsresponseersResponseStatus'
  Int ->
  GetConnectionsResponse
getConnectionsResponse pResponseStatus_ =
  GetConnectionsResponse'
    { _getconnectionsresponseersNextToken =
        Nothing,
      _getconnectionsresponseersConnectionList = Nothing,
      _getconnectionsresponseersResponseStatus =
        pResponseStatus_
    }

-- | A continuation token, if the list of connections returned does not include the last of the filtered connections.
getconnectionsresponseersNextToken :: Lens' GetConnectionsResponse (Maybe Text)
getconnectionsresponseersNextToken = lens _getconnectionsresponseersNextToken (\s a -> s {_getconnectionsresponseersNextToken = a})

-- | A list of requested connection definitions.
getconnectionsresponseersConnectionList :: Lens' GetConnectionsResponse [Connection]
getconnectionsresponseersConnectionList = lens _getconnectionsresponseersConnectionList (\s a -> s {_getconnectionsresponseersConnectionList = a}) . _Default . _Coerce

-- | -- | The response status code.
getconnectionsresponseersResponseStatus :: Lens' GetConnectionsResponse Int
getconnectionsresponseersResponseStatus = lens _getconnectionsresponseersResponseStatus (\s a -> s {_getconnectionsresponseersResponseStatus = a})

instance NFData GetConnectionsResponse
