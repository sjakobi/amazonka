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
-- Module      : Network.AWS.SageMaker.ListImageVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a specified image and their properties. The list can be filtered by creation time or modified time.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListImageVersions
  ( -- * Creating a Request
    listImageVersions,
    ListImageVersions,

    -- * Request Lenses
    livLastModifiedTimeBefore,
    livSortOrder,
    livNextToken,
    livMaxResults,
    livCreationTimeBefore,
    livLastModifiedTimeAfter,
    livSortBy,
    livCreationTimeAfter,
    livImageName,

    -- * Destructuring the Response
    listImageVersionsResponse,
    ListImageVersionsResponse,

    -- * Response Lenses
    livrrsNextToken,
    livrrsImageVersions,
    livrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listImageVersions' smart constructor.
data ListImageVersions = ListImageVersions'
  { _livLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _livSortOrder ::
      !(Maybe ImageVersionSortOrder),
    _livNextToken :: !(Maybe Text),
    _livMaxResults :: !(Maybe Nat),
    _livCreationTimeBefore ::
      !(Maybe POSIX),
    _livLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _livSortBy ::
      !(Maybe ImageVersionSortBy),
    _livCreationTimeAfter ::
      !(Maybe POSIX),
    _livImageName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListImageVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'livLastModifiedTimeBefore' - A filter that returns only versions modified on or before the specified time.
--
-- * 'livSortOrder' - The sort order. The default value is @DESCENDING@ .
--
-- * 'livNextToken' - If the previous call to @ListImageVersions@ didn't return the full set of versions, the call returns a token for getting the next set of versions.
--
-- * 'livMaxResults' - The maximum number of versions to return in the response. The default value is 10.
--
-- * 'livCreationTimeBefore' - A filter that returns only versions created on or before the specified time.
--
-- * 'livLastModifiedTimeAfter' - A filter that returns only versions modified on or after the specified time.
--
-- * 'livSortBy' - The property used to sort results. The default value is @CREATION_TIME@ .
--
-- * 'livCreationTimeAfter' - A filter that returns only versions created on or after the specified time.
--
-- * 'livImageName' - The name of the image to list the versions of.
listImageVersions ::
  -- | 'livImageName'
  Text ->
  ListImageVersions
listImageVersions pImageName_ =
  ListImageVersions'
    { _livLastModifiedTimeBefore =
        Nothing,
      _livSortOrder = Nothing,
      _livNextToken = Nothing,
      _livMaxResults = Nothing,
      _livCreationTimeBefore = Nothing,
      _livLastModifiedTimeAfter = Nothing,
      _livSortBy = Nothing,
      _livCreationTimeAfter = Nothing,
      _livImageName = pImageName_
    }

-- | A filter that returns only versions modified on or before the specified time.
livLastModifiedTimeBefore :: Lens' ListImageVersions (Maybe UTCTime)
livLastModifiedTimeBefore = lens _livLastModifiedTimeBefore (\s a -> s {_livLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order. The default value is @DESCENDING@ .
livSortOrder :: Lens' ListImageVersions (Maybe ImageVersionSortOrder)
livSortOrder = lens _livSortOrder (\s a -> s {_livSortOrder = a})

-- | If the previous call to @ListImageVersions@ didn't return the full set of versions, the call returns a token for getting the next set of versions.
livNextToken :: Lens' ListImageVersions (Maybe Text)
livNextToken = lens _livNextToken (\s a -> s {_livNextToken = a})

-- | The maximum number of versions to return in the response. The default value is 10.
livMaxResults :: Lens' ListImageVersions (Maybe Natural)
livMaxResults = lens _livMaxResults (\s a -> s {_livMaxResults = a}) . mapping _Nat

-- | A filter that returns only versions created on or before the specified time.
livCreationTimeBefore :: Lens' ListImageVersions (Maybe UTCTime)
livCreationTimeBefore = lens _livCreationTimeBefore (\s a -> s {_livCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only versions modified on or after the specified time.
livLastModifiedTimeAfter :: Lens' ListImageVersions (Maybe UTCTime)
livLastModifiedTimeAfter = lens _livLastModifiedTimeAfter (\s a -> s {_livLastModifiedTimeAfter = a}) . mapping _Time

-- | The property used to sort results. The default value is @CREATION_TIME@ .
livSortBy :: Lens' ListImageVersions (Maybe ImageVersionSortBy)
livSortBy = lens _livSortBy (\s a -> s {_livSortBy = a})

-- | A filter that returns only versions created on or after the specified time.
livCreationTimeAfter :: Lens' ListImageVersions (Maybe UTCTime)
livCreationTimeAfter = lens _livCreationTimeAfter (\s a -> s {_livCreationTimeAfter = a}) . mapping _Time

-- | The name of the image to list the versions of.
livImageName :: Lens' ListImageVersions Text
livImageName = lens _livImageName (\s a -> s {_livImageName = a})

instance AWSPager ListImageVersions where
  page rq rs
    | stop (rs ^. livrrsNextToken) = Nothing
    | stop (rs ^. livrrsImageVersions) = Nothing
    | otherwise =
      Just $ rq & livNextToken .~ rs ^. livrrsNextToken

instance AWSRequest ListImageVersions where
  type Rs ListImageVersions = ListImageVersionsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListImageVersionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ImageVersions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListImageVersions

instance NFData ListImageVersions

instance ToHeaders ListImageVersions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListImageVersions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListImageVersions where
  toJSON ListImageVersions' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _livLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _livSortOrder,
            ("NextToken" .=) <$> _livNextToken,
            ("MaxResults" .=) <$> _livMaxResults,
            ("CreationTimeBefore" .=) <$> _livCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _livLastModifiedTimeAfter,
            ("SortBy" .=) <$> _livSortBy,
            ("CreationTimeAfter" .=) <$> _livCreationTimeAfter,
            Just ("ImageName" .= _livImageName)
          ]
      )

instance ToPath ListImageVersions where
  toPath = const "/"

instance ToQuery ListImageVersions where
  toQuery = const mempty

-- | /See:/ 'listImageVersionsResponse' smart constructor.
data ListImageVersionsResponse = ListImageVersionsResponse'
  { _livrrsNextToken ::
      !(Maybe Text),
    _livrrsImageVersions ::
      !( Maybe
           [ImageVersion]
       ),
    _livrrsResponseStatus ::
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

-- | Creates a value of 'ListImageVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'livrrsNextToken' - A token for getting the next set of versions, if there are any.
--
-- * 'livrrsImageVersions' - A list of versions and their properties.
--
-- * 'livrrsResponseStatus' - -- | The response status code.
listImageVersionsResponse ::
  -- | 'livrrsResponseStatus'
  Int ->
  ListImageVersionsResponse
listImageVersionsResponse pResponseStatus_ =
  ListImageVersionsResponse'
    { _livrrsNextToken =
        Nothing,
      _livrrsImageVersions = Nothing,
      _livrrsResponseStatus = pResponseStatus_
    }

-- | A token for getting the next set of versions, if there are any.
livrrsNextToken :: Lens' ListImageVersionsResponse (Maybe Text)
livrrsNextToken = lens _livrrsNextToken (\s a -> s {_livrrsNextToken = a})

-- | A list of versions and their properties.
livrrsImageVersions :: Lens' ListImageVersionsResponse [ImageVersion]
livrrsImageVersions = lens _livrrsImageVersions (\s a -> s {_livrrsImageVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
livrrsResponseStatus :: Lens' ListImageVersionsResponse Int
livrrsResponseStatus = lens _livrrsResponseStatus (\s a -> s {_livrrsResponseStatus = a})

instance NFData ListImageVersionsResponse
