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
-- Module      : Network.AWS.DeviceFarm.ListRemoteAccessSessions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all currently running remote access sessions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListRemoteAccessSessions
  ( -- * Creating a Request
    listRemoteAccessSessions,
    ListRemoteAccessSessions,

    -- * Request Lenses
    lrasNextToken,
    lrasArn,

    -- * Destructuring the Response
    listRemoteAccessSessionsResponse,
    ListRemoteAccessSessionsResponse,

    -- * Response Lenses
    lrasrrsNextToken,
    lrasrrsRemoteAccessSessions,
    lrasrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to return information about the remote access session.
--
--
--
-- /See:/ 'listRemoteAccessSessions' smart constructor.
data ListRemoteAccessSessions = ListRemoteAccessSessions'
  { _lrasNextToken ::
      !(Maybe Text),
    _lrasArn :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListRemoteAccessSessions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrasNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lrasArn' - The Amazon Resource Name (ARN) of the project about which you are requesting information.
listRemoteAccessSessions ::
  -- | 'lrasArn'
  Text ->
  ListRemoteAccessSessions
listRemoteAccessSessions pArn_ =
  ListRemoteAccessSessions'
    { _lrasNextToken = Nothing,
      _lrasArn = pArn_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lrasNextToken :: Lens' ListRemoteAccessSessions (Maybe Text)
lrasNextToken = lens _lrasNextToken (\s a -> s {_lrasNextToken = a})

-- | The Amazon Resource Name (ARN) of the project about which you are requesting information.
lrasArn :: Lens' ListRemoteAccessSessions Text
lrasArn = lens _lrasArn (\s a -> s {_lrasArn = a})

instance AWSPager ListRemoteAccessSessions where
  page rq rs
    | stop (rs ^. lrasrrsNextToken) = Nothing
    | stop (rs ^. lrasrrsRemoteAccessSessions) = Nothing
    | otherwise =
      Just $ rq & lrasNextToken .~ rs ^. lrasrrsNextToken

instance AWSRequest ListRemoteAccessSessions where
  type
    Rs ListRemoteAccessSessions =
      ListRemoteAccessSessionsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListRemoteAccessSessionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "remoteAccessSessions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListRemoteAccessSessions

instance NFData ListRemoteAccessSessions

instance ToHeaders ListRemoteAccessSessions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.ListRemoteAccessSessions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListRemoteAccessSessions where
  toJSON ListRemoteAccessSessions' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lrasNextToken,
            Just ("arn" .= _lrasArn)
          ]
      )

instance ToPath ListRemoteAccessSessions where
  toPath = const "/"

instance ToQuery ListRemoteAccessSessions where
  toQuery = const mempty

-- | Represents the response from the server after AWS Device Farm makes a request to return information about the remote access session.
--
--
--
-- /See:/ 'listRemoteAccessSessionsResponse' smart constructor.
data ListRemoteAccessSessionsResponse = ListRemoteAccessSessionsResponse'
  { _lrasrrsNextToken ::
      !( Maybe
           Text
       ),
    _lrasrrsRemoteAccessSessions ::
      !( Maybe
           [RemoteAccessSession]
       ),
    _lrasrrsResponseStatus ::
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

-- | Creates a value of 'ListRemoteAccessSessionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrasrrsNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lrasrrsRemoteAccessSessions' - A container that represents the metadata from the service about each remote access session you are requesting.
--
-- * 'lrasrrsResponseStatus' - -- | The response status code.
listRemoteAccessSessionsResponse ::
  -- | 'lrasrrsResponseStatus'
  Int ->
  ListRemoteAccessSessionsResponse
listRemoteAccessSessionsResponse pResponseStatus_ =
  ListRemoteAccessSessionsResponse'
    { _lrasrrsNextToken =
        Nothing,
      _lrasrrsRemoteAccessSessions = Nothing,
      _lrasrrsResponseStatus = pResponseStatus_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lrasrrsNextToken :: Lens' ListRemoteAccessSessionsResponse (Maybe Text)
lrasrrsNextToken = lens _lrasrrsNextToken (\s a -> s {_lrasrrsNextToken = a})

-- | A container that represents the metadata from the service about each remote access session you are requesting.
lrasrrsRemoteAccessSessions :: Lens' ListRemoteAccessSessionsResponse [RemoteAccessSession]
lrasrrsRemoteAccessSessions = lens _lrasrrsRemoteAccessSessions (\s a -> s {_lrasrrsRemoteAccessSessions = a}) . _Default . _Coerce

-- | -- | The response status code.
lrasrrsResponseStatus :: Lens' ListRemoteAccessSessionsResponse Int
lrasrrsResponseStatus = lens _lrasrrsResponseStatus (\s a -> s {_lrasrrsResponseStatus = a})

instance NFData ListRemoteAccessSessionsResponse
