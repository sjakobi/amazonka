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
-- Module      : Network.AWS.SageMaker.ListImages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the images in your account and their properties. The list can be filtered by creation time or modified time, and whether the image name contains a specified string.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListImages
  ( -- * Creating a Request
    listImages,
    ListImages,

    -- * Request Lenses
    liLastModifiedTimeBefore,
    liSortOrder,
    liNextToken,
    liNameContains,
    liMaxResults,
    liCreationTimeBefore,
    liLastModifiedTimeAfter,
    liSortBy,
    liCreationTimeAfter,

    -- * Destructuring the Response
    listImagesResponse,
    ListImagesResponse,

    -- * Response Lenses
    lirrsNextToken,
    lirrsImages,
    lirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listImages' smart constructor.
data ListImages = ListImages'
  { _liLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _liSortOrder :: !(Maybe ImageSortOrder),
    _liNextToken :: !(Maybe Text),
    _liNameContains :: !(Maybe Text),
    _liMaxResults :: !(Maybe Nat),
    _liCreationTimeBefore :: !(Maybe POSIX),
    _liLastModifiedTimeAfter :: !(Maybe POSIX),
    _liSortBy :: !(Maybe ImageSortBy),
    _liCreationTimeAfter :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListImages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liLastModifiedTimeBefore' - A filter that returns only images modified on or before the specified time.
--
-- * 'liSortOrder' - The sort order. The default value is @DESCENDING@ .
--
-- * 'liNextToken' - If the previous call to @ListImages@ didn't return the full set of images, the call returns a token for getting the next set of images.
--
-- * 'liNameContains' - A filter that returns only images whose name contains the specified string.
--
-- * 'liMaxResults' - The maximum number of images to return in the response. The default value is 10.
--
-- * 'liCreationTimeBefore' - A filter that returns only images created on or before the specified time.
--
-- * 'liLastModifiedTimeAfter' - A filter that returns only images modified on or after the specified time.
--
-- * 'liSortBy' - The property used to sort results. The default value is @CREATION_TIME@ .
--
-- * 'liCreationTimeAfter' - A filter that returns only images created on or after the specified time.
listImages ::
  ListImages
listImages =
  ListImages'
    { _liLastModifiedTimeBefore = Nothing,
      _liSortOrder = Nothing,
      _liNextToken = Nothing,
      _liNameContains = Nothing,
      _liMaxResults = Nothing,
      _liCreationTimeBefore = Nothing,
      _liLastModifiedTimeAfter = Nothing,
      _liSortBy = Nothing,
      _liCreationTimeAfter = Nothing
    }

-- | A filter that returns only images modified on or before the specified time.
liLastModifiedTimeBefore :: Lens' ListImages (Maybe UTCTime)
liLastModifiedTimeBefore = lens _liLastModifiedTimeBefore (\s a -> s {_liLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order. The default value is @DESCENDING@ .
liSortOrder :: Lens' ListImages (Maybe ImageSortOrder)
liSortOrder = lens _liSortOrder (\s a -> s {_liSortOrder = a})

-- | If the previous call to @ListImages@ didn't return the full set of images, the call returns a token for getting the next set of images.
liNextToken :: Lens' ListImages (Maybe Text)
liNextToken = lens _liNextToken (\s a -> s {_liNextToken = a})

-- | A filter that returns only images whose name contains the specified string.
liNameContains :: Lens' ListImages (Maybe Text)
liNameContains = lens _liNameContains (\s a -> s {_liNameContains = a})

-- | The maximum number of images to return in the response. The default value is 10.
liMaxResults :: Lens' ListImages (Maybe Natural)
liMaxResults = lens _liMaxResults (\s a -> s {_liMaxResults = a}) . mapping _Nat

-- | A filter that returns only images created on or before the specified time.
liCreationTimeBefore :: Lens' ListImages (Maybe UTCTime)
liCreationTimeBefore = lens _liCreationTimeBefore (\s a -> s {_liCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only images modified on or after the specified time.
liLastModifiedTimeAfter :: Lens' ListImages (Maybe UTCTime)
liLastModifiedTimeAfter = lens _liLastModifiedTimeAfter (\s a -> s {_liLastModifiedTimeAfter = a}) . mapping _Time

-- | The property used to sort results. The default value is @CREATION_TIME@ .
liSortBy :: Lens' ListImages (Maybe ImageSortBy)
liSortBy = lens _liSortBy (\s a -> s {_liSortBy = a})

-- | A filter that returns only images created on or after the specified time.
liCreationTimeAfter :: Lens' ListImages (Maybe UTCTime)
liCreationTimeAfter = lens _liCreationTimeAfter (\s a -> s {_liCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListImages where
  page rq rs
    | stop (rs ^. lirrsNextToken) = Nothing
    | stop (rs ^. lirrsImages) = Nothing
    | otherwise =
      Just $ rq & liNextToken .~ rs ^. lirrsNextToken

instance AWSRequest ListImages where
  type Rs ListImages = ListImagesResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListImagesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Images" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListImages

instance NFData ListImages

instance ToHeaders ListImages where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListImages" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListImages where
  toJSON ListImages' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _liLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _liSortOrder,
            ("NextToken" .=) <$> _liNextToken,
            ("NameContains" .=) <$> _liNameContains,
            ("MaxResults" .=) <$> _liMaxResults,
            ("CreationTimeBefore" .=) <$> _liCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _liLastModifiedTimeAfter,
            ("SortBy" .=) <$> _liSortBy,
            ("CreationTimeAfter" .=) <$> _liCreationTimeAfter
          ]
      )

instance ToPath ListImages where
  toPath = const "/"

instance ToQuery ListImages where
  toQuery = const mempty

-- | /See:/ 'listImagesResponse' smart constructor.
data ListImagesResponse = ListImagesResponse'
  { _lirrsNextToken ::
      !(Maybe Text),
    _lirrsImages :: !(Maybe [Image]),
    _lirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListImagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrsNextToken' - A token for getting the next set of images, if there are any.
--
-- * 'lirrsImages' - A list of images and their properties.
--
-- * 'lirrsResponseStatus' - -- | The response status code.
listImagesResponse ::
  -- | 'lirrsResponseStatus'
  Int ->
  ListImagesResponse
listImagesResponse pResponseStatus_ =
  ListImagesResponse'
    { _lirrsNextToken = Nothing,
      _lirrsImages = Nothing,
      _lirrsResponseStatus = pResponseStatus_
    }

-- | A token for getting the next set of images, if there are any.
lirrsNextToken :: Lens' ListImagesResponse (Maybe Text)
lirrsNextToken = lens _lirrsNextToken (\s a -> s {_lirrsNextToken = a})

-- | A list of images and their properties.
lirrsImages :: Lens' ListImagesResponse [Image]
lirrsImages = lens _lirrsImages (\s a -> s {_lirrsImages = a}) . _Default . _Coerce

-- | -- | The response status code.
lirrsResponseStatus :: Lens' ListImagesResponse Int
lirrsResponseStatus = lens _lirrsResponseStatus (\s a -> s {_lirrsResponseStatus = a})

instance NFData ListImagesResponse
