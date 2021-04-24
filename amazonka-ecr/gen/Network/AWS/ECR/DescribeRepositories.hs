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
-- Module      : Network.AWS.ECR.DescribeRepositories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes image repositories in a registry.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ECR.DescribeRepositories
  ( -- * Creating a Request
    describeRepositories,
    DescribeRepositories,

    -- * Request Lenses
    drNextToken,
    drMaxResults,
    drRepositoryNames,
    drRegistryId,

    -- * Destructuring the Response
    describeRepositoriesResponse,
    DescribeRepositoriesResponse,

    -- * Response Lenses
    drsNextToken,
    drsRepositories,
    drsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRepositories' smart constructor.
data DescribeRepositories = DescribeRepositories'
  { _drNextToken ::
      !(Maybe Text),
    _drMaxResults :: !(Maybe Nat),
    _drRepositoryNames ::
      !(Maybe (List1 Text)),
    _drRegistryId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRepositories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drNextToken' - The @nextToken@ value returned from a previous paginated @DescribeRepositories@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return. This option cannot be used when you specify repositories with @repositoryNames@ .
--
-- * 'drMaxResults' - The maximum number of repository results returned by @DescribeRepositories@ in paginated output. When this parameter is used, @DescribeRepositories@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeRepositories@ request with the returned @nextToken@ value. This value can be between 1 and 1000. If this parameter is not used, then @DescribeRepositories@ returns up to 100 results and a @nextToken@ value, if applicable. This option cannot be used when you specify repositories with @repositoryNames@ .
--
-- * 'drRepositoryNames' - A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.
--
-- * 'drRegistryId' - The AWS account ID associated with the registry that contains the repositories to be described. If you do not specify a registry, the default registry is assumed.
describeRepositories ::
  DescribeRepositories
describeRepositories =
  DescribeRepositories'
    { _drNextToken = Nothing,
      _drMaxResults = Nothing,
      _drRepositoryNames = Nothing,
      _drRegistryId = Nothing
    }

-- | The @nextToken@ value returned from a previous paginated @DescribeRepositories@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return. This option cannot be used when you specify repositories with @repositoryNames@ .
drNextToken :: Lens' DescribeRepositories (Maybe Text)
drNextToken = lens _drNextToken (\s a -> s {_drNextToken = a})

-- | The maximum number of repository results returned by @DescribeRepositories@ in paginated output. When this parameter is used, @DescribeRepositories@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeRepositories@ request with the returned @nextToken@ value. This value can be between 1 and 1000. If this parameter is not used, then @DescribeRepositories@ returns up to 100 results and a @nextToken@ value, if applicable. This option cannot be used when you specify repositories with @repositoryNames@ .
drMaxResults :: Lens' DescribeRepositories (Maybe Natural)
drMaxResults = lens _drMaxResults (\s a -> s {_drMaxResults = a}) . mapping _Nat

-- | A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.
drRepositoryNames :: Lens' DescribeRepositories (Maybe (NonEmpty Text))
drRepositoryNames = lens _drRepositoryNames (\s a -> s {_drRepositoryNames = a}) . mapping _List1

-- | The AWS account ID associated with the registry that contains the repositories to be described. If you do not specify a registry, the default registry is assumed.
drRegistryId :: Lens' DescribeRepositories (Maybe Text)
drRegistryId = lens _drRegistryId (\s a -> s {_drRegistryId = a})

instance AWSPager DescribeRepositories where
  page rq rs
    | stop (rs ^. drsNextToken) = Nothing
    | stop (rs ^. drsRepositories) = Nothing
    | otherwise =
      Just $ rq & drNextToken .~ rs ^. drsNextToken

instance AWSRequest DescribeRepositories where
  type
    Rs DescribeRepositories =
      DescribeRepositoriesResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          DescribeRepositoriesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "repositories" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRepositories

instance NFData DescribeRepositories

instance ToHeaders DescribeRepositories where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.DescribeRepositories" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeRepositories where
  toJSON DescribeRepositories' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _drNextToken,
            ("maxResults" .=) <$> _drMaxResults,
            ("repositoryNames" .=) <$> _drRepositoryNames,
            ("registryId" .=) <$> _drRegistryId
          ]
      )

instance ToPath DescribeRepositories where
  toPath = const "/"

instance ToQuery DescribeRepositories where
  toQuery = const mempty

-- | /See:/ 'describeRepositoriesResponse' smart constructor.
data DescribeRepositoriesResponse = DescribeRepositoriesResponse'
  { _drsNextToken ::
      !(Maybe Text),
    _drsRepositories ::
      !( Maybe
           [Repository]
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeRepositoriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsNextToken' - The @nextToken@ value to include in a future @DescribeRepositories@ request. When the results of a @DescribeRepositories@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'drsRepositories' - A list of repository objects corresponding to valid repositories.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeRepositoriesResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeRepositoriesResponse
describeRepositoriesResponse pResponseStatus_ =
  DescribeRepositoriesResponse'
    { _drsNextToken =
        Nothing,
      _drsRepositories = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @DescribeRepositories@ request. When the results of a @DescribeRepositories@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
drsNextToken :: Lens' DescribeRepositoriesResponse (Maybe Text)
drsNextToken = lens _drsNextToken (\s a -> s {_drsNextToken = a})

-- | A list of repository objects corresponding to valid repositories.
drsRepositories :: Lens' DescribeRepositoriesResponse [Repository]
drsRepositories = lens _drsRepositories (\s a -> s {_drsRepositories = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeRepositoriesResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeRepositoriesResponse
