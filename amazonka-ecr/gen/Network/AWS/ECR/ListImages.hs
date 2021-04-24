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
-- Module      : Network.AWS.ECR.ListImages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the image IDs for the specified repository.
--
--
-- You can filter images based on whether or not they are tagged by using the @tagStatus@ filter and specifying either @TAGGED@ , @UNTAGGED@ or @ANY@ . For example, you can filter your results to return only @UNTAGGED@ images and then pipe that result to a 'BatchDeleteImage' operation to delete them. Or, you can filter your results to return only @TAGGED@ images to list all of the tags in your repository.
--
--
-- This operation returns paginated results.
module Network.AWS.ECR.ListImages
  ( -- * Creating a Request
    listImages,
    ListImages,

    -- * Request Lenses
    liNextToken,
    liMaxResults,
    liRegistryId,
    liFilter,
    liRepositoryName,

    -- * Destructuring the Response
    listImagesResponse,
    ListImagesResponse,

    -- * Response Lenses
    lirrsNextToken,
    lirrsImageIds,
    lirrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listImages' smart constructor.
data ListImages = ListImages'
  { _liNextToken ::
      !(Maybe Text),
    _liMaxResults :: !(Maybe Nat),
    _liRegistryId :: !(Maybe Text),
    _liFilter :: !(Maybe ListImagesFilter),
    _liRepositoryName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListImages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liNextToken' - The @nextToken@ value returned from a previous paginated @ListImages@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
--
-- * 'liMaxResults' - The maximum number of image results returned by @ListImages@ in paginated output. When this parameter is used, @ListImages@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListImages@ request with the returned @nextToken@ value. This value can be between 1 and 1000. If this parameter is not used, then @ListImages@ returns up to 100 results and a @nextToken@ value, if applicable.
--
-- * 'liRegistryId' - The AWS account ID associated with the registry that contains the repository in which to list images. If you do not specify a registry, the default registry is assumed.
--
-- * 'liFilter' - The filter key and value with which to filter your @ListImages@ results.
--
-- * 'liRepositoryName' - The repository with image IDs to be listed.
listImages ::
  -- | 'liRepositoryName'
  Text ->
  ListImages
listImages pRepositoryName_ =
  ListImages'
    { _liNextToken = Nothing,
      _liMaxResults = Nothing,
      _liRegistryId = Nothing,
      _liFilter = Nothing,
      _liRepositoryName = pRepositoryName_
    }

-- | The @nextToken@ value returned from a previous paginated @ListImages@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
liNextToken :: Lens' ListImages (Maybe Text)
liNextToken = lens _liNextToken (\s a -> s {_liNextToken = a})

-- | The maximum number of image results returned by @ListImages@ in paginated output. When this parameter is used, @ListImages@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListImages@ request with the returned @nextToken@ value. This value can be between 1 and 1000. If this parameter is not used, then @ListImages@ returns up to 100 results and a @nextToken@ value, if applicable.
liMaxResults :: Lens' ListImages (Maybe Natural)
liMaxResults = lens _liMaxResults (\s a -> s {_liMaxResults = a}) . mapping _Nat

-- | The AWS account ID associated with the registry that contains the repository in which to list images. If you do not specify a registry, the default registry is assumed.
liRegistryId :: Lens' ListImages (Maybe Text)
liRegistryId = lens _liRegistryId (\s a -> s {_liRegistryId = a})

-- | The filter key and value with which to filter your @ListImages@ results.
liFilter :: Lens' ListImages (Maybe ListImagesFilter)
liFilter = lens _liFilter (\s a -> s {_liFilter = a})

-- | The repository with image IDs to be listed.
liRepositoryName :: Lens' ListImages Text
liRepositoryName = lens _liRepositoryName (\s a -> s {_liRepositoryName = a})

instance AWSPager ListImages where
  page rq rs
    | stop (rs ^. lirrsNextToken) = Nothing
    | stop (rs ^. lirrsImageIds) = Nothing
    | otherwise =
      Just $ rq & liNextToken .~ rs ^. lirrsNextToken

instance AWSRequest ListImages where
  type Rs ListImages = ListImagesResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          ListImagesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "imageIds" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListImages

instance NFData ListImages

instance ToHeaders ListImages where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.ListImages" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListImages where
  toJSON ListImages' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _liNextToken,
            ("maxResults" .=) <$> _liMaxResults,
            ("registryId" .=) <$> _liRegistryId,
            ("filter" .=) <$> _liFilter,
            Just ("repositoryName" .= _liRepositoryName)
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
    _lirrsImageIds ::
      !(Maybe [ImageIdentifier]),
    _lirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListImagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrsNextToken' - The @nextToken@ value to include in a future @ListImages@ request. When the results of a @ListImages@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'lirrsImageIds' - The list of image IDs for the requested repository.
--
-- * 'lirrsResponseStatus' - -- | The response status code.
listImagesResponse ::
  -- | 'lirrsResponseStatus'
  Int ->
  ListImagesResponse
listImagesResponse pResponseStatus_ =
  ListImagesResponse'
    { _lirrsNextToken = Nothing,
      _lirrsImageIds = Nothing,
      _lirrsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @ListImages@ request. When the results of a @ListImages@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
lirrsNextToken :: Lens' ListImagesResponse (Maybe Text)
lirrsNextToken = lens _lirrsNextToken (\s a -> s {_lirrsNextToken = a})

-- | The list of image IDs for the requested repository.
lirrsImageIds :: Lens' ListImagesResponse [ImageIdentifier]
lirrsImageIds = lens _lirrsImageIds (\s a -> s {_lirrsImageIds = a}) . _Default . _Coerce

-- | -- | The response status code.
lirrsResponseStatus :: Lens' ListImagesResponse Int
lirrsResponseStatus = lens _lirrsResponseStatus (\s a -> s {_lirrsResponseStatus = a})

instance NFData ListImagesResponse
