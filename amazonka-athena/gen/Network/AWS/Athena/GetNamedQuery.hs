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
-- Module      : Network.AWS.Athena.GetNamedQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a single query. Requires that you have access to the workgroup in which the query was saved.
module Network.AWS.Athena.GetNamedQuery
  ( -- * Creating a Request
    getNamedQuery,
    GetNamedQuery,

    -- * Request Lenses
    gnqNamedQueryId,

    -- * Destructuring the Response
    getNamedQueryResponse,
    GetNamedQueryResponse,

    -- * Response Lenses
    gnqrrsNamedQuery,
    gnqrrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getNamedQuery' smart constructor.
newtype GetNamedQuery = GetNamedQuery'
  { _gnqNamedQueryId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetNamedQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnqNamedQueryId' - The unique ID of the query. Use 'ListNamedQueries' to get query IDs.
getNamedQuery ::
  -- | 'gnqNamedQueryId'
  Text ->
  GetNamedQuery
getNamedQuery pNamedQueryId_ =
  GetNamedQuery' {_gnqNamedQueryId = pNamedQueryId_}

-- | The unique ID of the query. Use 'ListNamedQueries' to get query IDs.
gnqNamedQueryId :: Lens' GetNamedQuery Text
gnqNamedQueryId = lens _gnqNamedQueryId (\s a -> s {_gnqNamedQueryId = a})

instance AWSRequest GetNamedQuery where
  type Rs GetNamedQuery = GetNamedQueryResponse
  request = postJSON athena
  response =
    receiveJSON
      ( \s h x ->
          GetNamedQueryResponse'
            <$> (x .?> "NamedQuery") <*> (pure (fromEnum s))
      )

instance Hashable GetNamedQuery

instance NFData GetNamedQuery

instance ToHeaders GetNamedQuery where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonAthena.GetNamedQuery" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetNamedQuery where
  toJSON GetNamedQuery' {..} =
    object
      ( catMaybes
          [Just ("NamedQueryId" .= _gnqNamedQueryId)]
      )

instance ToPath GetNamedQuery where
  toPath = const "/"

instance ToQuery GetNamedQuery where
  toQuery = const mempty

-- | /See:/ 'getNamedQueryResponse' smart constructor.
data GetNamedQueryResponse = GetNamedQueryResponse'
  { _gnqrrsNamedQuery ::
      !(Maybe NamedQuery),
    _gnqrrsResponseStatus ::
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

-- | Creates a value of 'GetNamedQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnqrrsNamedQuery' - Information about the query.
--
-- * 'gnqrrsResponseStatus' - -- | The response status code.
getNamedQueryResponse ::
  -- | 'gnqrrsResponseStatus'
  Int ->
  GetNamedQueryResponse
getNamedQueryResponse pResponseStatus_ =
  GetNamedQueryResponse'
    { _gnqrrsNamedQuery = Nothing,
      _gnqrrsResponseStatus = pResponseStatus_
    }

-- | Information about the query.
gnqrrsNamedQuery :: Lens' GetNamedQueryResponse (Maybe NamedQuery)
gnqrrsNamedQuery = lens _gnqrrsNamedQuery (\s a -> s {_gnqrrsNamedQuery = a})

-- | -- | The response status code.
gnqrrsResponseStatus :: Lens' GetNamedQueryResponse Int
gnqrrsResponseStatus = lens _gnqrrsResponseStatus (\s a -> s {_gnqrrsResponseStatus = a})

instance NFData GetNamedQueryResponse
