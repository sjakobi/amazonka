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
-- Module      : Network.AWS.SageMaker.ListArtifacts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the artifacts in your account and their properties.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListArtifacts
  ( -- * Creating a Request
    listArtifacts,
    ListArtifacts,

    -- * Request Lenses
    lasCreatedAfter,
    lasSortOrder,
    lasNextToken,
    lasCreatedBefore,
    lasArtifactType,
    lasMaxResults,
    lasSourceURI,
    lasSortBy,

    -- * Destructuring the Response
    listArtifactsResponse,
    ListArtifactsResponse,

    -- * Response Lenses
    llrsNextToken,
    llrsArtifactSummaries,
    llrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listArtifacts' smart constructor.
data ListArtifacts = ListArtifacts'
  { _lasCreatedAfter ::
      !(Maybe POSIX),
    _lasSortOrder :: !(Maybe SortOrder),
    _lasNextToken :: !(Maybe Text),
    _lasCreatedBefore :: !(Maybe POSIX),
    _lasArtifactType :: !(Maybe Text),
    _lasMaxResults :: !(Maybe Nat),
    _lasSourceURI :: !(Maybe Text),
    _lasSortBy :: !(Maybe SortArtifactsBy)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListArtifacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasCreatedAfter' - A filter that returns only artifacts created on or after the specified time.
--
-- * 'lasSortOrder' - The sort order. The default value is @Descending@ .
--
-- * 'lasNextToken' - If the previous call to @ListArtifacts@ didn't return the full set of artifacts, the call returns a token for getting the next set of artifacts.
--
-- * 'lasCreatedBefore' - A filter that returns only artifacts created on or before the specified time.
--
-- * 'lasArtifactType' - A filter that returns only artifacts of the specified type.
--
-- * 'lasMaxResults' - The maximum number of artifacts to return in the response. The default value is 10.
--
-- * 'lasSourceURI' - A filter that returns only artifacts with the specified source URI.
--
-- * 'lasSortBy' - The property used to sort results. The default value is @CreationTime@ .
listArtifacts ::
  ListArtifacts
listArtifacts =
  ListArtifacts'
    { _lasCreatedAfter = Nothing,
      _lasSortOrder = Nothing,
      _lasNextToken = Nothing,
      _lasCreatedBefore = Nothing,
      _lasArtifactType = Nothing,
      _lasMaxResults = Nothing,
      _lasSourceURI = Nothing,
      _lasSortBy = Nothing
    }

-- | A filter that returns only artifacts created on or after the specified time.
lasCreatedAfter :: Lens' ListArtifacts (Maybe UTCTime)
lasCreatedAfter = lens _lasCreatedAfter (\s a -> s {_lasCreatedAfter = a}) . mapping _Time

-- | The sort order. The default value is @Descending@ .
lasSortOrder :: Lens' ListArtifacts (Maybe SortOrder)
lasSortOrder = lens _lasSortOrder (\s a -> s {_lasSortOrder = a})

-- | If the previous call to @ListArtifacts@ didn't return the full set of artifacts, the call returns a token for getting the next set of artifacts.
lasNextToken :: Lens' ListArtifacts (Maybe Text)
lasNextToken = lens _lasNextToken (\s a -> s {_lasNextToken = a})

-- | A filter that returns only artifacts created on or before the specified time.
lasCreatedBefore :: Lens' ListArtifacts (Maybe UTCTime)
lasCreatedBefore = lens _lasCreatedBefore (\s a -> s {_lasCreatedBefore = a}) . mapping _Time

-- | A filter that returns only artifacts of the specified type.
lasArtifactType :: Lens' ListArtifacts (Maybe Text)
lasArtifactType = lens _lasArtifactType (\s a -> s {_lasArtifactType = a})

-- | The maximum number of artifacts to return in the response. The default value is 10.
lasMaxResults :: Lens' ListArtifacts (Maybe Natural)
lasMaxResults = lens _lasMaxResults (\s a -> s {_lasMaxResults = a}) . mapping _Nat

-- | A filter that returns only artifacts with the specified source URI.
lasSourceURI :: Lens' ListArtifacts (Maybe Text)
lasSourceURI = lens _lasSourceURI (\s a -> s {_lasSourceURI = a})

-- | The property used to sort results. The default value is @CreationTime@ .
lasSortBy :: Lens' ListArtifacts (Maybe SortArtifactsBy)
lasSortBy = lens _lasSortBy (\s a -> s {_lasSortBy = a})

instance AWSPager ListArtifacts where
  page rq rs
    | stop (rs ^. llrsNextToken) = Nothing
    | stop (rs ^. llrsArtifactSummaries) = Nothing
    | otherwise =
      Just $ rq & lasNextToken .~ rs ^. llrsNextToken

instance AWSRequest ListArtifacts where
  type Rs ListArtifacts = ListArtifactsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListArtifactsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ArtifactSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListArtifacts

instance NFData ListArtifacts

instance ToHeaders ListArtifacts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListArtifacts" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListArtifacts where
  toJSON ListArtifacts' {..} =
    object
      ( catMaybes
          [ ("CreatedAfter" .=) <$> _lasCreatedAfter,
            ("SortOrder" .=) <$> _lasSortOrder,
            ("NextToken" .=) <$> _lasNextToken,
            ("CreatedBefore" .=) <$> _lasCreatedBefore,
            ("ArtifactType" .=) <$> _lasArtifactType,
            ("MaxResults" .=) <$> _lasMaxResults,
            ("SourceUri" .=) <$> _lasSourceURI,
            ("SortBy" .=) <$> _lasSortBy
          ]
      )

instance ToPath ListArtifacts where
  toPath = const "/"

instance ToQuery ListArtifacts where
  toQuery = const mempty

-- | /See:/ 'listArtifactsResponse' smart constructor.
data ListArtifactsResponse = ListArtifactsResponse'
  { _llrsNextToken ::
      !(Maybe Text),
    _llrsArtifactSummaries ::
      !(Maybe [ArtifactSummary]),
    _llrsResponseStatus :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListArtifactsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrsNextToken' - A token for getting the next set of artifacts, if there are any.
--
-- * 'llrsArtifactSummaries' - A list of artifacts and their properties.
--
-- * 'llrsResponseStatus' - -- | The response status code.
listArtifactsResponse ::
  -- | 'llrsResponseStatus'
  Int ->
  ListArtifactsResponse
listArtifactsResponse pResponseStatus_ =
  ListArtifactsResponse'
    { _llrsNextToken = Nothing,
      _llrsArtifactSummaries = Nothing,
      _llrsResponseStatus = pResponseStatus_
    }

-- | A token for getting the next set of artifacts, if there are any.
llrsNextToken :: Lens' ListArtifactsResponse (Maybe Text)
llrsNextToken = lens _llrsNextToken (\s a -> s {_llrsNextToken = a})

-- | A list of artifacts and their properties.
llrsArtifactSummaries :: Lens' ListArtifactsResponse [ArtifactSummary]
llrsArtifactSummaries = lens _llrsArtifactSummaries (\s a -> s {_llrsArtifactSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
llrsResponseStatus :: Lens' ListArtifactsResponse Int
llrsResponseStatus = lens _llrsResponseStatus (\s a -> s {_llrsResponseStatus = a})

instance NFData ListArtifactsResponse
