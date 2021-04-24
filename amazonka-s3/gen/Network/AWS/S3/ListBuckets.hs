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
-- Module      : Network.AWS.S3.ListBuckets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all buckets owned by the authenticated sender of the request.
module Network.AWS.S3.ListBuckets
  ( -- * Creating a Request
    listBuckets,
    ListBuckets,

    -- * Destructuring the Response
    listBucketsResponse,
    ListBucketsResponse,

    -- * Response Lenses
    lbrrsBuckets,
    lbrrsOwner,
    lbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'listBuckets' smart constructor.
data ListBuckets = ListBuckets'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBuckets' with the minimum fields required to make a request.
listBuckets ::
  ListBuckets
listBuckets = ListBuckets'

instance AWSRequest ListBuckets where
  type Rs ListBuckets = ListBucketsResponse
  request = get s3
  response =
    receiveXML
      ( \s h x ->
          ListBucketsResponse'
            <$> ( x .@? "Buckets" .!@ mempty
                    >>= may (parseXMLList "Bucket")
                )
            <*> (x .@? "Owner")
            <*> (pure (fromEnum s))
      )

instance Hashable ListBuckets

instance NFData ListBuckets

instance ToHeaders ListBuckets where
  toHeaders = const mempty

instance ToPath ListBuckets where
  toPath = const "/"

instance ToQuery ListBuckets where
  toQuery = const mempty

-- | /See:/ 'listBucketsResponse' smart constructor.
data ListBucketsResponse = ListBucketsResponse'
  { _lbrrsBuckets ::
      !(Maybe [Bucket]),
    _lbrrsOwner :: !(Maybe Owner),
    _lbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBucketsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrrsBuckets' - The list of buckets owned by the requestor.
--
-- * 'lbrrsOwner' - The owner of the buckets listed.
--
-- * 'lbrrsResponseStatus' - -- | The response status code.
listBucketsResponse ::
  -- | 'lbrrsResponseStatus'
  Int ->
  ListBucketsResponse
listBucketsResponse pResponseStatus_ =
  ListBucketsResponse'
    { _lbrrsBuckets = Nothing,
      _lbrrsOwner = Nothing,
      _lbrrsResponseStatus = pResponseStatus_
    }

-- | The list of buckets owned by the requestor.
lbrrsBuckets :: Lens' ListBucketsResponse [Bucket]
lbrrsBuckets = lens _lbrrsBuckets (\s a -> s {_lbrrsBuckets = a}) . _Default . _Coerce

-- | The owner of the buckets listed.
lbrrsOwner :: Lens' ListBucketsResponse (Maybe Owner)
lbrrsOwner = lens _lbrrsOwner (\s a -> s {_lbrrsOwner = a})

-- | -- | The response status code.
lbrrsResponseStatus :: Lens' ListBucketsResponse Int
lbrrsResponseStatus = lens _lbrrsResponseStatus (\s a -> s {_lbrrsResponseStatus = a})

instance NFData ListBucketsResponse
