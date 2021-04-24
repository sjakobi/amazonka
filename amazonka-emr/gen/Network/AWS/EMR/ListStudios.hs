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
-- Module      : Network.AWS.EMR.ListStudios
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all Amazon EMR Studios associated with the AWS account. The list includes details such as ID, Studio Access URL, and creation time for each Studio.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EMR.ListStudios
  ( -- * Creating a Request
    listStudios,
    ListStudios,

    -- * Request Lenses
    lsMarker,

    -- * Destructuring the Response
    listStudiosResponse,
    ListStudiosResponse,

    -- * Response Lenses
    lrsStudios,
    lrsMarker,
    lrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listStudios' smart constructor.
newtype ListStudios = ListStudios'
  { _lsMarker ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStudios' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsMarker' - The pagination token that indicates the set of results to retrieve.
listStudios ::
  ListStudios
listStudios = ListStudios' {_lsMarker = Nothing}

-- | The pagination token that indicates the set of results to retrieve.
lsMarker :: Lens' ListStudios (Maybe Text)
lsMarker = lens _lsMarker (\s a -> s {_lsMarker = a})

instance AWSPager ListStudios where
  page rq rs
    | stop (rs ^. lrsMarker) = Nothing
    | stop (rs ^. lrsStudios) = Nothing
    | otherwise = Just $ rq & lsMarker .~ rs ^. lrsMarker

instance AWSRequest ListStudios where
  type Rs ListStudios = ListStudiosResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          ListStudiosResponse'
            <$> (x .?> "Studios" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListStudios

instance NFData ListStudios

instance ToHeaders ListStudios where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ElasticMapReduce.ListStudios" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListStudios where
  toJSON ListStudios' {..} =
    object (catMaybes [("Marker" .=) <$> _lsMarker])

instance ToPath ListStudios where
  toPath = const "/"

instance ToQuery ListStudios where
  toQuery = const mempty

-- | /See:/ 'listStudiosResponse' smart constructor.
data ListStudiosResponse = ListStudiosResponse'
  { _lrsStudios ::
      !(Maybe [StudioSummary]),
    _lrsMarker :: !(Maybe Text),
    _lrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStudiosResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsStudios' - The list of Studio summary objects.
--
-- * 'lrsMarker' - The pagination token that indicates the next set of results to retrieve.
--
-- * 'lrsResponseStatus' - -- | The response status code.
listStudiosResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListStudiosResponse
listStudiosResponse pResponseStatus_ =
  ListStudiosResponse'
    { _lrsStudios = Nothing,
      _lrsMarker = Nothing,
      _lrsResponseStatus = pResponseStatus_
    }

-- | The list of Studio summary objects.
lrsStudios :: Lens' ListStudiosResponse [StudioSummary]
lrsStudios = lens _lrsStudios (\s a -> s {_lrsStudios = a}) . _Default . _Coerce

-- | The pagination token that indicates the next set of results to retrieve.
lrsMarker :: Lens' ListStudiosResponse (Maybe Text)
lrsMarker = lens _lrsMarker (\s a -> s {_lrsMarker = a})

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListStudiosResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

instance NFData ListStudiosResponse
