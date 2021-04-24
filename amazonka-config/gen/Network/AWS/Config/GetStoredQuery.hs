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
-- Module      : Network.AWS.Config.GetStoredQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of a specific stored query.
module Network.AWS.Config.GetStoredQuery
  ( -- * Creating a Request
    getStoredQuery,
    GetStoredQuery,

    -- * Request Lenses
    gsqQueryName,

    -- * Destructuring the Response
    getStoredQueryResponse,
    GetStoredQueryResponse,

    -- * Response Lenses
    gsqrrsStoredQuery,
    gsqrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getStoredQuery' smart constructor.
newtype GetStoredQuery = GetStoredQuery'
  { _gsqQueryName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetStoredQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsqQueryName' - The name of the query.
getStoredQuery ::
  -- | 'gsqQueryName'
  Text ->
  GetStoredQuery
getStoredQuery pQueryName_ =
  GetStoredQuery' {_gsqQueryName = pQueryName_}

-- | The name of the query.
gsqQueryName :: Lens' GetStoredQuery Text
gsqQueryName = lens _gsqQueryName (\s a -> s {_gsqQueryName = a})

instance AWSRequest GetStoredQuery where
  type Rs GetStoredQuery = GetStoredQueryResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          GetStoredQueryResponse'
            <$> (x .?> "StoredQuery") <*> (pure (fromEnum s))
      )

instance Hashable GetStoredQuery

instance NFData GetStoredQuery

instance ToHeaders GetStoredQuery where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("StarlingDoveService.GetStoredQuery" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetStoredQuery where
  toJSON GetStoredQuery' {..} =
    object
      (catMaybes [Just ("QueryName" .= _gsqQueryName)])

instance ToPath GetStoredQuery where
  toPath = const "/"

instance ToQuery GetStoredQuery where
  toQuery = const mempty

-- | /See:/ 'getStoredQueryResponse' smart constructor.
data GetStoredQueryResponse = GetStoredQueryResponse'
  { _gsqrrsStoredQuery ::
      !(Maybe StoredQuery),
    _gsqrrsResponseStatus ::
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

-- | Creates a value of 'GetStoredQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsqrrsStoredQuery' - Returns a @StoredQuery@ object.
--
-- * 'gsqrrsResponseStatus' - -- | The response status code.
getStoredQueryResponse ::
  -- | 'gsqrrsResponseStatus'
  Int ->
  GetStoredQueryResponse
getStoredQueryResponse pResponseStatus_ =
  GetStoredQueryResponse'
    { _gsqrrsStoredQuery =
        Nothing,
      _gsqrrsResponseStatus = pResponseStatus_
    }

-- | Returns a @StoredQuery@ object.
gsqrrsStoredQuery :: Lens' GetStoredQueryResponse (Maybe StoredQuery)
gsqrrsStoredQuery = lens _gsqrrsStoredQuery (\s a -> s {_gsqrrsStoredQuery = a})

-- | -- | The response status code.
gsqrrsResponseStatus :: Lens' GetStoredQueryResponse Int
gsqrrsResponseStatus = lens _gsqrrsResponseStatus (\s a -> s {_gsqrrsResponseStatus = a})

instance NFData GetStoredQueryResponse
