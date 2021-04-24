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
-- Module      : Network.AWS.Config.PutStoredQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Saves a new query or updates an existing saved query. The @QueryName@ must be unique for a single AWS account and a single AWS Region. You can create upto 300 queries in a single AWS account and a single AWS Region.
module Network.AWS.Config.PutStoredQuery
  ( -- * Creating a Request
    putStoredQuery,
    PutStoredQuery,

    -- * Request Lenses
    psqTags,
    psqStoredQuery,

    -- * Destructuring the Response
    putStoredQueryResponse,
    PutStoredQueryResponse,

    -- * Response Lenses
    psqrrsQueryARN,
    psqrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putStoredQuery' smart constructor.
data PutStoredQuery = PutStoredQuery'
  { _psqTags ::
      !(Maybe [Tag]),
    _psqStoredQuery :: !StoredQuery
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutStoredQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psqTags' - A list of @Tags@ object.
--
-- * 'psqStoredQuery' - A list of @StoredQuery@ objects. The mandatory fields are @QueryName@ and @Expression@ .
putStoredQuery ::
  -- | 'psqStoredQuery'
  StoredQuery ->
  PutStoredQuery
putStoredQuery pStoredQuery_ =
  PutStoredQuery'
    { _psqTags = Nothing,
      _psqStoredQuery = pStoredQuery_
    }

-- | A list of @Tags@ object.
psqTags :: Lens' PutStoredQuery [Tag]
psqTags = lens _psqTags (\s a -> s {_psqTags = a}) . _Default . _Coerce

-- | A list of @StoredQuery@ objects. The mandatory fields are @QueryName@ and @Expression@ .
psqStoredQuery :: Lens' PutStoredQuery StoredQuery
psqStoredQuery = lens _psqStoredQuery (\s a -> s {_psqStoredQuery = a})

instance AWSRequest PutStoredQuery where
  type Rs PutStoredQuery = PutStoredQueryResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          PutStoredQueryResponse'
            <$> (x .?> "QueryArn") <*> (pure (fromEnum s))
      )

instance Hashable PutStoredQuery

instance NFData PutStoredQuery

instance ToHeaders PutStoredQuery where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("StarlingDoveService.PutStoredQuery" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutStoredQuery where
  toJSON PutStoredQuery' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _psqTags,
            Just ("StoredQuery" .= _psqStoredQuery)
          ]
      )

instance ToPath PutStoredQuery where
  toPath = const "/"

instance ToQuery PutStoredQuery where
  toQuery = const mempty

-- | /See:/ 'putStoredQueryResponse' smart constructor.
data PutStoredQueryResponse = PutStoredQueryResponse'
  { _psqrrsQueryARN ::
      !(Maybe Text),
    _psqrrsResponseStatus ::
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

-- | Creates a value of 'PutStoredQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psqrrsQueryARN' - Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
--
-- * 'psqrrsResponseStatus' - -- | The response status code.
putStoredQueryResponse ::
  -- | 'psqrrsResponseStatus'
  Int ->
  PutStoredQueryResponse
putStoredQueryResponse pResponseStatus_ =
  PutStoredQueryResponse'
    { _psqrrsQueryARN = Nothing,
      _psqrrsResponseStatus = pResponseStatus_
    }

-- | Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
psqrrsQueryARN :: Lens' PutStoredQueryResponse (Maybe Text)
psqrrsQueryARN = lens _psqrrsQueryARN (\s a -> s {_psqrrsQueryARN = a})

-- | -- | The response status code.
psqrrsResponseStatus :: Lens' PutStoredQueryResponse Int
psqrrsResponseStatus = lens _psqrrsResponseStatus (\s a -> s {_psqrrsResponseStatus = a})

instance NFData PutStoredQueryResponse
