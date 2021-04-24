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
-- Module      : Network.AWS.ECR.GetLifecyclePolicyPreview
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the results of the lifecycle policy preview request for the specified repository.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ECR.GetLifecyclePolicyPreview
  ( -- * Creating a Request
    getLifecyclePolicyPreview,
    GetLifecyclePolicyPreview,

    -- * Request Lenses
    glppNextToken,
    glppImageIds,
    glppMaxResults,
    glppRegistryId,
    glppFilter,
    glppRepositoryName,

    -- * Destructuring the Response
    getLifecyclePolicyPreviewResponse,
    GetLifecyclePolicyPreviewResponse,

    -- * Response Lenses
    glpprrsNextToken,
    glpprrsStatus,
    glpprrsRegistryId,
    glpprrsRepositoryName,
    glpprrsSummary,
    glpprrsLifecyclePolicyText,
    glpprrsPreviewResults,
    glpprrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getLifecyclePolicyPreview' smart constructor.
data GetLifecyclePolicyPreview = GetLifecyclePolicyPreview'
  { _glppNextToken ::
      !(Maybe Text),
    _glppImageIds ::
      !( Maybe
           [ImageIdentifier]
       ),
    _glppMaxResults ::
      !(Maybe Nat),
    _glppRegistryId ::
      !(Maybe Text),
    _glppFilter ::
      !( Maybe
           LifecyclePolicyPreviewFilter
       ),
    _glppRepositoryName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetLifecyclePolicyPreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glppNextToken' - The @nextToken@ value returned from a previous paginated  @GetLifecyclePolicyPreviewRequest@ request where @maxResults@ was used and the  results exceeded the value of that parameter. Pagination continues from the end of the  previous results that returned the @nextToken@ value. This value is  @null@ when there are no more results to return. This option cannot be used when you specify images with @imageIds@ .
--
-- * 'glppImageIds' - The list of imageIDs to be included.
--
-- * 'glppMaxResults' - The maximum number of repository results returned by @GetLifecyclePolicyPreviewRequest@ in  paginated output. When this parameter is used, @GetLifecyclePolicyPreviewRequest@ only returns  @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending  another @GetLifecyclePolicyPreviewRequest@ request with the returned @nextToken@ value. This value can be between 1 and 1000. If this  parameter is not used, then @GetLifecyclePolicyPreviewRequest@ returns up to  100 results and a @nextToken@ value, if  applicable. This option cannot be used when you specify images with @imageIds@ .
--
-- * 'glppRegistryId' - The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
--
-- * 'glppFilter' - An optional parameter that filters results based on image tag status and all tags, if tagged.
--
-- * 'glppRepositoryName' - The name of the repository.
getLifecyclePolicyPreview ::
  -- | 'glppRepositoryName'
  Text ->
  GetLifecyclePolicyPreview
getLifecyclePolicyPreview pRepositoryName_ =
  GetLifecyclePolicyPreview'
    { _glppNextToken =
        Nothing,
      _glppImageIds = Nothing,
      _glppMaxResults = Nothing,
      _glppRegistryId = Nothing,
      _glppFilter = Nothing,
      _glppRepositoryName = pRepositoryName_
    }

-- | The @nextToken@ value returned from a previous paginated  @GetLifecyclePolicyPreviewRequest@ request where @maxResults@ was used and the  results exceeded the value of that parameter. Pagination continues from the end of the  previous results that returned the @nextToken@ value. This value is  @null@ when there are no more results to return. This option cannot be used when you specify images with @imageIds@ .
glppNextToken :: Lens' GetLifecyclePolicyPreview (Maybe Text)
glppNextToken = lens _glppNextToken (\s a -> s {_glppNextToken = a})

-- | The list of imageIDs to be included.
glppImageIds :: Lens' GetLifecyclePolicyPreview [ImageIdentifier]
glppImageIds = lens _glppImageIds (\s a -> s {_glppImageIds = a}) . _Default . _Coerce

-- | The maximum number of repository results returned by @GetLifecyclePolicyPreviewRequest@ in  paginated output. When this parameter is used, @GetLifecyclePolicyPreviewRequest@ only returns  @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending  another @GetLifecyclePolicyPreviewRequest@ request with the returned @nextToken@ value. This value can be between 1 and 1000. If this  parameter is not used, then @GetLifecyclePolicyPreviewRequest@ returns up to  100 results and a @nextToken@ value, if  applicable. This option cannot be used when you specify images with @imageIds@ .
glppMaxResults :: Lens' GetLifecyclePolicyPreview (Maybe Natural)
glppMaxResults = lens _glppMaxResults (\s a -> s {_glppMaxResults = a}) . mapping _Nat

-- | The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
glppRegistryId :: Lens' GetLifecyclePolicyPreview (Maybe Text)
glppRegistryId = lens _glppRegistryId (\s a -> s {_glppRegistryId = a})

-- | An optional parameter that filters results based on image tag status and all tags, if tagged.
glppFilter :: Lens' GetLifecyclePolicyPreview (Maybe LifecyclePolicyPreviewFilter)
glppFilter = lens _glppFilter (\s a -> s {_glppFilter = a})

-- | The name of the repository.
glppRepositoryName :: Lens' GetLifecyclePolicyPreview Text
glppRepositoryName = lens _glppRepositoryName (\s a -> s {_glppRepositoryName = a})

instance AWSPager GetLifecyclePolicyPreview where
  page rq rs
    | stop (rs ^. glpprrsNextToken) = Nothing
    | stop (rs ^. glpprrsPreviewResults) = Nothing
    | otherwise =
      Just $ rq & glppNextToken .~ rs ^. glpprrsNextToken

instance AWSRequest GetLifecyclePolicyPreview where
  type
    Rs GetLifecyclePolicyPreview =
      GetLifecyclePolicyPreviewResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          GetLifecyclePolicyPreviewResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "status")
            <*> (x .?> "registryId")
            <*> (x .?> "repositoryName")
            <*> (x .?> "summary")
            <*> (x .?> "lifecyclePolicyText")
            <*> (x .?> "previewResults" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetLifecyclePolicyPreview

instance NFData GetLifecyclePolicyPreview

instance ToHeaders GetLifecyclePolicyPreview where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.GetLifecyclePolicyPreview" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetLifecyclePolicyPreview where
  toJSON GetLifecyclePolicyPreview' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _glppNextToken,
            ("imageIds" .=) <$> _glppImageIds,
            ("maxResults" .=) <$> _glppMaxResults,
            ("registryId" .=) <$> _glppRegistryId,
            ("filter" .=) <$> _glppFilter,
            Just ("repositoryName" .= _glppRepositoryName)
          ]
      )

instance ToPath GetLifecyclePolicyPreview where
  toPath = const "/"

instance ToQuery GetLifecyclePolicyPreview where
  toQuery = const mempty

-- | /See:/ 'getLifecyclePolicyPreviewResponse' smart constructor.
data GetLifecyclePolicyPreviewResponse = GetLifecyclePolicyPreviewResponse'
  { _glpprrsNextToken ::
      !( Maybe
           Text
       ),
    _glpprrsStatus ::
      !( Maybe
           LifecyclePolicyPreviewStatus
       ),
    _glpprrsRegistryId ::
      !( Maybe
           Text
       ),
    _glpprrsRepositoryName ::
      !( Maybe
           Text
       ),
    _glpprrsSummary ::
      !( Maybe
           LifecyclePolicyPreviewSummary
       ),
    _glpprrsLifecyclePolicyText ::
      !( Maybe
           Text
       ),
    _glpprrsPreviewResults ::
      !( Maybe
           [LifecyclePolicyPreviewResult]
       ),
    _glpprrsResponseStatus ::
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

-- | Creates a value of 'GetLifecyclePolicyPreviewResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glpprrsNextToken' - The @nextToken@ value to include in a future @GetLifecyclePolicyPreview@ request. When the results of a @GetLifecyclePolicyPreview@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'glpprrsStatus' - The status of the lifecycle policy preview request.
--
-- * 'glpprrsRegistryId' - The registry ID associated with the request.
--
-- * 'glpprrsRepositoryName' - The repository name associated with the request.
--
-- * 'glpprrsSummary' - The list of images that is returned as a result of the action.
--
-- * 'glpprrsLifecyclePolicyText' - The JSON lifecycle policy text.
--
-- * 'glpprrsPreviewResults' - The results of the lifecycle policy preview request.
--
-- * 'glpprrsResponseStatus' - -- | The response status code.
getLifecyclePolicyPreviewResponse ::
  -- | 'glpprrsResponseStatus'
  Int ->
  GetLifecyclePolicyPreviewResponse
getLifecyclePolicyPreviewResponse pResponseStatus_ =
  GetLifecyclePolicyPreviewResponse'
    { _glpprrsNextToken =
        Nothing,
      _glpprrsStatus = Nothing,
      _glpprrsRegistryId = Nothing,
      _glpprrsRepositoryName = Nothing,
      _glpprrsSummary = Nothing,
      _glpprrsLifecyclePolicyText = Nothing,
      _glpprrsPreviewResults = Nothing,
      _glpprrsResponseStatus =
        pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @GetLifecyclePolicyPreview@ request. When the results of a @GetLifecyclePolicyPreview@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
glpprrsNextToken :: Lens' GetLifecyclePolicyPreviewResponse (Maybe Text)
glpprrsNextToken = lens _glpprrsNextToken (\s a -> s {_glpprrsNextToken = a})

-- | The status of the lifecycle policy preview request.
glpprrsStatus :: Lens' GetLifecyclePolicyPreviewResponse (Maybe LifecyclePolicyPreviewStatus)
glpprrsStatus = lens _glpprrsStatus (\s a -> s {_glpprrsStatus = a})

-- | The registry ID associated with the request.
glpprrsRegistryId :: Lens' GetLifecyclePolicyPreviewResponse (Maybe Text)
glpprrsRegistryId = lens _glpprrsRegistryId (\s a -> s {_glpprrsRegistryId = a})

-- | The repository name associated with the request.
glpprrsRepositoryName :: Lens' GetLifecyclePolicyPreviewResponse (Maybe Text)
glpprrsRepositoryName = lens _glpprrsRepositoryName (\s a -> s {_glpprrsRepositoryName = a})

-- | The list of images that is returned as a result of the action.
glpprrsSummary :: Lens' GetLifecyclePolicyPreviewResponse (Maybe LifecyclePolicyPreviewSummary)
glpprrsSummary = lens _glpprrsSummary (\s a -> s {_glpprrsSummary = a})

-- | The JSON lifecycle policy text.
glpprrsLifecyclePolicyText :: Lens' GetLifecyclePolicyPreviewResponse (Maybe Text)
glpprrsLifecyclePolicyText = lens _glpprrsLifecyclePolicyText (\s a -> s {_glpprrsLifecyclePolicyText = a})

-- | The results of the lifecycle policy preview request.
glpprrsPreviewResults :: Lens' GetLifecyclePolicyPreviewResponse [LifecyclePolicyPreviewResult]
glpprrsPreviewResults = lens _glpprrsPreviewResults (\s a -> s {_glpprrsPreviewResults = a}) . _Default . _Coerce

-- | -- | The response status code.
glpprrsResponseStatus :: Lens' GetLifecyclePolicyPreviewResponse Int
glpprrsResponseStatus = lens _glpprrsResponseStatus (\s a -> s {_glpprrsResponseStatus = a})

instance NFData GetLifecyclePolicyPreviewResponse
