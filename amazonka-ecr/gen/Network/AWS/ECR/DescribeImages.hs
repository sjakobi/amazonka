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
-- Module      : Network.AWS.ECR.DescribeImages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata about the images in a repository.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ECR.DescribeImages
  ( -- * Creating a Request
    describeImages,
    DescribeImages,

    -- * Request Lenses
    diNextToken,
    diImageIds,
    diMaxResults,
    diRegistryId,
    diFilter,
    diRepositoryName,

    -- * Destructuring the Response
    describeImagesResponse,
    DescribeImagesResponse,

    -- * Response Lenses
    dirrsNextToken,
    dirrsImageDetails,
    dirrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeImages' smart constructor.
data DescribeImages = DescribeImages'
  { _diNextToken ::
      !(Maybe Text),
    _diImageIds :: !(Maybe [ImageIdentifier]),
    _diMaxResults :: !(Maybe Nat),
    _diRegistryId :: !(Maybe Text),
    _diFilter ::
      !(Maybe DescribeImagesFilter),
    _diRepositoryName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeImages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diNextToken' - The @nextToken@ value returned from a previous paginated @DescribeImages@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return. This option cannot be used when you specify images with @imageIds@ .
--
-- * 'diImageIds' - The list of image IDs for the requested repository.
--
-- * 'diMaxResults' - The maximum number of repository results returned by @DescribeImages@ in paginated output. When this parameter is used, @DescribeImages@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeImages@ request with the returned @nextToken@ value. This value can be between 1 and 1000. If this parameter is not used, then @DescribeImages@ returns up to 100 results and a @nextToken@ value, if applicable. This option cannot be used when you specify images with @imageIds@ .
--
-- * 'diRegistryId' - The AWS account ID associated with the registry that contains the repository in which to describe images. If you do not specify a registry, the default registry is assumed.
--
-- * 'diFilter' - The filter key and value with which to filter your @DescribeImages@ results.
--
-- * 'diRepositoryName' - The repository that contains the images to describe.
describeImages ::
  -- | 'diRepositoryName'
  Text ->
  DescribeImages
describeImages pRepositoryName_ =
  DescribeImages'
    { _diNextToken = Nothing,
      _diImageIds = Nothing,
      _diMaxResults = Nothing,
      _diRegistryId = Nothing,
      _diFilter = Nothing,
      _diRepositoryName = pRepositoryName_
    }

-- | The @nextToken@ value returned from a previous paginated @DescribeImages@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return. This option cannot be used when you specify images with @imageIds@ .
diNextToken :: Lens' DescribeImages (Maybe Text)
diNextToken = lens _diNextToken (\s a -> s {_diNextToken = a})

-- | The list of image IDs for the requested repository.
diImageIds :: Lens' DescribeImages [ImageIdentifier]
diImageIds = lens _diImageIds (\s a -> s {_diImageIds = a}) . _Default . _Coerce

-- | The maximum number of repository results returned by @DescribeImages@ in paginated output. When this parameter is used, @DescribeImages@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeImages@ request with the returned @nextToken@ value. This value can be between 1 and 1000. If this parameter is not used, then @DescribeImages@ returns up to 100 results and a @nextToken@ value, if applicable. This option cannot be used when you specify images with @imageIds@ .
diMaxResults :: Lens' DescribeImages (Maybe Natural)
diMaxResults = lens _diMaxResults (\s a -> s {_diMaxResults = a}) . mapping _Nat

-- | The AWS account ID associated with the registry that contains the repository in which to describe images. If you do not specify a registry, the default registry is assumed.
diRegistryId :: Lens' DescribeImages (Maybe Text)
diRegistryId = lens _diRegistryId (\s a -> s {_diRegistryId = a})

-- | The filter key and value with which to filter your @DescribeImages@ results.
diFilter :: Lens' DescribeImages (Maybe DescribeImagesFilter)
diFilter = lens _diFilter (\s a -> s {_diFilter = a})

-- | The repository that contains the images to describe.
diRepositoryName :: Lens' DescribeImages Text
diRepositoryName = lens _diRepositoryName (\s a -> s {_diRepositoryName = a})

instance AWSPager DescribeImages where
  page rq rs
    | stop (rs ^. dirrsNextToken) = Nothing
    | stop (rs ^. dirrsImageDetails) = Nothing
    | otherwise =
      Just $ rq & diNextToken .~ rs ^. dirrsNextToken

instance AWSRequest DescribeImages where
  type Rs DescribeImages = DescribeImagesResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          DescribeImagesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "imageDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeImages

instance NFData DescribeImages

instance ToHeaders DescribeImages where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.DescribeImages" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeImages where
  toJSON DescribeImages' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _diNextToken,
            ("imageIds" .=) <$> _diImageIds,
            ("maxResults" .=) <$> _diMaxResults,
            ("registryId" .=) <$> _diRegistryId,
            ("filter" .=) <$> _diFilter,
            Just ("repositoryName" .= _diRepositoryName)
          ]
      )

instance ToPath DescribeImages where
  toPath = const "/"

instance ToQuery DescribeImages where
  toQuery = const mempty

-- | /See:/ 'describeImagesResponse' smart constructor.
data DescribeImagesResponse = DescribeImagesResponse'
  { _dirrsNextToken ::
      !(Maybe Text),
    _dirrsImageDetails ::
      !(Maybe [ImageDetail]),
    _dirrsResponseStatus ::
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

-- | Creates a value of 'DescribeImagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirrsNextToken' - The @nextToken@ value to include in a future @DescribeImages@ request. When the results of a @DescribeImages@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dirrsImageDetails' - A list of 'ImageDetail' objects that contain data about the image.
--
-- * 'dirrsResponseStatus' - -- | The response status code.
describeImagesResponse ::
  -- | 'dirrsResponseStatus'
  Int ->
  DescribeImagesResponse
describeImagesResponse pResponseStatus_ =
  DescribeImagesResponse'
    { _dirrsNextToken = Nothing,
      _dirrsImageDetails = Nothing,
      _dirrsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @DescribeImages@ request. When the results of a @DescribeImages@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
dirrsNextToken :: Lens' DescribeImagesResponse (Maybe Text)
dirrsNextToken = lens _dirrsNextToken (\s a -> s {_dirrsNextToken = a})

-- | A list of 'ImageDetail' objects that contain data about the image.
dirrsImageDetails :: Lens' DescribeImagesResponse [ImageDetail]
dirrsImageDetails = lens _dirrsImageDetails (\s a -> s {_dirrsImageDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
dirrsResponseStatus :: Lens' DescribeImagesResponse Int
dirrsResponseStatus = lens _dirrsResponseStatus (\s a -> s {_dirrsResponseStatus = a})

instance NFData DescribeImagesResponse
