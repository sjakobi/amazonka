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
-- Module      : Network.AWS.ECR.DescribeImageScanFindings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the scan findings for the specified image.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ECR.DescribeImageScanFindings
  ( -- * Creating a Request
    describeImageScanFindings,
    DescribeImageScanFindings,

    -- * Request Lenses
    disfNextToken,
    disfMaxResults,
    disfRegistryId,
    disfRepositoryName,
    disfImageId,

    -- * Destructuring the Response
    describeImageScanFindingsResponse,
    DescribeImageScanFindingsResponse,

    -- * Response Lenses
    disfrrsNextToken,
    disfrrsImageScanStatus,
    disfrrsImageScanFindings,
    disfrrsRegistryId,
    disfrrsRepositoryName,
    disfrrsImageId,
    disfrrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeImageScanFindings' smart constructor.
data DescribeImageScanFindings = DescribeImageScanFindings'
  { _disfNextToken ::
      !(Maybe Text),
    _disfMaxResults ::
      !(Maybe Nat),
    _disfRegistryId ::
      !(Maybe Text),
    _disfRepositoryName ::
      !Text,
    _disfImageId ::
      !ImageIdentifier
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeImageScanFindings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disfNextToken' - The @nextToken@ value returned from a previous paginated @DescribeImageScanFindings@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is null when there are no more results to return.
--
-- * 'disfMaxResults' - The maximum number of image scan results returned by @DescribeImageScanFindings@ in paginated output. When this parameter is used, @DescribeImageScanFindings@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeImageScanFindings@ request with the returned @nextToken@ value. This value can be between 1 and 1000. If this parameter is not used, then @DescribeImageScanFindings@ returns up to 100 results and a @nextToken@ value, if applicable.
--
-- * 'disfRegistryId' - The AWS account ID associated with the registry that contains the repository in which to describe the image scan findings for. If you do not specify a registry, the default registry is assumed.
--
-- * 'disfRepositoryName' - The repository for the image for which to describe the scan findings.
--
-- * 'disfImageId' - Undocumented member.
describeImageScanFindings ::
  -- | 'disfRepositoryName'
  Text ->
  -- | 'disfImageId'
  ImageIdentifier ->
  DescribeImageScanFindings
describeImageScanFindings pRepositoryName_ pImageId_ =
  DescribeImageScanFindings'
    { _disfNextToken =
        Nothing,
      _disfMaxResults = Nothing,
      _disfRegistryId = Nothing,
      _disfRepositoryName = pRepositoryName_,
      _disfImageId = pImageId_
    }

-- | The @nextToken@ value returned from a previous paginated @DescribeImageScanFindings@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is null when there are no more results to return.
disfNextToken :: Lens' DescribeImageScanFindings (Maybe Text)
disfNextToken = lens _disfNextToken (\s a -> s {_disfNextToken = a})

-- | The maximum number of image scan results returned by @DescribeImageScanFindings@ in paginated output. When this parameter is used, @DescribeImageScanFindings@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeImageScanFindings@ request with the returned @nextToken@ value. This value can be between 1 and 1000. If this parameter is not used, then @DescribeImageScanFindings@ returns up to 100 results and a @nextToken@ value, if applicable.
disfMaxResults :: Lens' DescribeImageScanFindings (Maybe Natural)
disfMaxResults = lens _disfMaxResults (\s a -> s {_disfMaxResults = a}) . mapping _Nat

-- | The AWS account ID associated with the registry that contains the repository in which to describe the image scan findings for. If you do not specify a registry, the default registry is assumed.
disfRegistryId :: Lens' DescribeImageScanFindings (Maybe Text)
disfRegistryId = lens _disfRegistryId (\s a -> s {_disfRegistryId = a})

-- | The repository for the image for which to describe the scan findings.
disfRepositoryName :: Lens' DescribeImageScanFindings Text
disfRepositoryName = lens _disfRepositoryName (\s a -> s {_disfRepositoryName = a})

-- | Undocumented member.
disfImageId :: Lens' DescribeImageScanFindings ImageIdentifier
disfImageId = lens _disfImageId (\s a -> s {_disfImageId = a})

instance AWSPager DescribeImageScanFindings where
  page rq rs
    | stop (rs ^. disfrrsNextToken) = Nothing
    | stop
        ( rs
            ^? disfrrsImageScanFindings . _Just . isfFindings
        ) =
      Nothing
    | otherwise =
      Just $ rq & disfNextToken .~ rs ^. disfrrsNextToken

instance AWSRequest DescribeImageScanFindings where
  type
    Rs DescribeImageScanFindings =
      DescribeImageScanFindingsResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          DescribeImageScanFindingsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "imageScanStatus")
            <*> (x .?> "imageScanFindings")
            <*> (x .?> "registryId")
            <*> (x .?> "repositoryName")
            <*> (x .?> "imageId")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeImageScanFindings

instance NFData DescribeImageScanFindings

instance ToHeaders DescribeImageScanFindings where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.DescribeImageScanFindings" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeImageScanFindings where
  toJSON DescribeImageScanFindings' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _disfNextToken,
            ("maxResults" .=) <$> _disfMaxResults,
            ("registryId" .=) <$> _disfRegistryId,
            Just ("repositoryName" .= _disfRepositoryName),
            Just ("imageId" .= _disfImageId)
          ]
      )

instance ToPath DescribeImageScanFindings where
  toPath = const "/"

instance ToQuery DescribeImageScanFindings where
  toQuery = const mempty

-- | /See:/ 'describeImageScanFindingsResponse' smart constructor.
data DescribeImageScanFindingsResponse = DescribeImageScanFindingsResponse'
  { _disfrrsNextToken ::
      !( Maybe
           Text
       ),
    _disfrrsImageScanStatus ::
      !( Maybe
           ImageScanStatus
       ),
    _disfrrsImageScanFindings ::
      !( Maybe
           ImageScanFindings
       ),
    _disfrrsRegistryId ::
      !( Maybe
           Text
       ),
    _disfrrsRepositoryName ::
      !( Maybe
           Text
       ),
    _disfrrsImageId ::
      !( Maybe
           ImageIdentifier
       ),
    _disfrrsResponseStatus ::
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

-- | Creates a value of 'DescribeImageScanFindingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disfrrsNextToken' - The @nextToken@ value to include in a future @DescribeImageScanFindings@ request. When the results of a @DescribeImageScanFindings@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is null when there are no more results to return.
--
-- * 'disfrrsImageScanStatus' - The current state of the scan.
--
-- * 'disfrrsImageScanFindings' - The information contained in the image scan findings.
--
-- * 'disfrrsRegistryId' - The registry ID associated with the request.
--
-- * 'disfrrsRepositoryName' - The repository name associated with the request.
--
-- * 'disfrrsImageId' - Undocumented member.
--
-- * 'disfrrsResponseStatus' - -- | The response status code.
describeImageScanFindingsResponse ::
  -- | 'disfrrsResponseStatus'
  Int ->
  DescribeImageScanFindingsResponse
describeImageScanFindingsResponse pResponseStatus_ =
  DescribeImageScanFindingsResponse'
    { _disfrrsNextToken =
        Nothing,
      _disfrrsImageScanStatus = Nothing,
      _disfrrsImageScanFindings = Nothing,
      _disfrrsRegistryId = Nothing,
      _disfrrsRepositoryName = Nothing,
      _disfrrsImageId = Nothing,
      _disfrrsResponseStatus =
        pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @DescribeImageScanFindings@ request. When the results of a @DescribeImageScanFindings@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is null when there are no more results to return.
disfrrsNextToken :: Lens' DescribeImageScanFindingsResponse (Maybe Text)
disfrrsNextToken = lens _disfrrsNextToken (\s a -> s {_disfrrsNextToken = a})

-- | The current state of the scan.
disfrrsImageScanStatus :: Lens' DescribeImageScanFindingsResponse (Maybe ImageScanStatus)
disfrrsImageScanStatus = lens _disfrrsImageScanStatus (\s a -> s {_disfrrsImageScanStatus = a})

-- | The information contained in the image scan findings.
disfrrsImageScanFindings :: Lens' DescribeImageScanFindingsResponse (Maybe ImageScanFindings)
disfrrsImageScanFindings = lens _disfrrsImageScanFindings (\s a -> s {_disfrrsImageScanFindings = a})

-- | The registry ID associated with the request.
disfrrsRegistryId :: Lens' DescribeImageScanFindingsResponse (Maybe Text)
disfrrsRegistryId = lens _disfrrsRegistryId (\s a -> s {_disfrrsRegistryId = a})

-- | The repository name associated with the request.
disfrrsRepositoryName :: Lens' DescribeImageScanFindingsResponse (Maybe Text)
disfrrsRepositoryName = lens _disfrrsRepositoryName (\s a -> s {_disfrrsRepositoryName = a})

-- | Undocumented member.
disfrrsImageId :: Lens' DescribeImageScanFindingsResponse (Maybe ImageIdentifier)
disfrrsImageId = lens _disfrrsImageId (\s a -> s {_disfrrsImageId = a})

-- | -- | The response status code.
disfrrsResponseStatus :: Lens' DescribeImageScanFindingsResponse Int
disfrrsResponseStatus = lens _disfrrsResponseStatus (\s a -> s {_disfrrsResponseStatus = a})

instance NFData DescribeImageScanFindingsResponse
