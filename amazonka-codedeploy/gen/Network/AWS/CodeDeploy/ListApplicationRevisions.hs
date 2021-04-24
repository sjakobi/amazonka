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
-- Module      : Network.AWS.CodeDeploy.ListApplicationRevisions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about revisions for an application.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeDeploy.ListApplicationRevisions
  ( -- * Creating a Request
    listApplicationRevisions,
    ListApplicationRevisions,

    -- * Request Lenses
    larSortOrder,
    larNextToken,
    larS3Bucket,
    larDeployed,
    larS3KeyPrefix,
    larSortBy,
    larApplicationName,

    -- * Destructuring the Response
    listApplicationRevisionsResponse,
    ListApplicationRevisionsResponse,

    -- * Response Lenses
    larrrsNextToken,
    larrrsRevisions,
    larrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @ListApplicationRevisions@ operation.
--
--
--
-- /See:/ 'listApplicationRevisions' smart constructor.
data ListApplicationRevisions = ListApplicationRevisions'
  { _larSortOrder ::
      !(Maybe SortOrder),
    _larNextToken ::
      !(Maybe Text),
    _larS3Bucket ::
      !(Maybe Text),
    _larDeployed ::
      !( Maybe
           ListStateFilterAction
       ),
    _larS3KeyPrefix ::
      !(Maybe Text),
    _larSortBy ::
      !( Maybe
           ApplicationRevisionSortBy
       ),
    _larApplicationName ::
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

-- | Creates a value of 'ListApplicationRevisions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larSortOrder' - The order in which to sort the list results:      * @ascending@ : ascending order.     * @descending@ : descending order. If not specified, the results are sorted in ascending order. If set to null, the results are sorted in an arbitrary order.
--
-- * 'larNextToken' - An identifier returned from the previous @ListApplicationRevisions@ call. It can be used to return the next set of applications in the list.
--
-- * 'larS3Bucket' - An Amazon S3 bucket name to limit the search for revisions.  If set to null, all of the user's buckets are searched.
--
-- * 'larDeployed' - Whether to list revisions based on whether the revision is the target revision of a deployment group:      * @include@ : List revisions that are target revisions of a deployment group.     * @exclude@ : Do not list revisions that are target revisions of a deployment group.     * @ignore@ : List all revisions.
--
-- * 'larS3KeyPrefix' - A key prefix for the set of Amazon S3 objects to limit the search for revisions.
--
-- * 'larSortBy' - The column name to use to sort the list results:     * @registerTime@ : Sort by the time the revisions were registered with AWS CodeDeploy.     * @firstUsedTime@ : Sort by the time the revisions were first used in a deployment.     * @lastUsedTime@ : Sort by the time the revisions were last used in a deployment. If not specified or set to null, the results are returned in an arbitrary order.
--
-- * 'larApplicationName' - The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
listApplicationRevisions ::
  -- | 'larApplicationName'
  Text ->
  ListApplicationRevisions
listApplicationRevisions pApplicationName_ =
  ListApplicationRevisions'
    { _larSortOrder = Nothing,
      _larNextToken = Nothing,
      _larS3Bucket = Nothing,
      _larDeployed = Nothing,
      _larS3KeyPrefix = Nothing,
      _larSortBy = Nothing,
      _larApplicationName = pApplicationName_
    }

-- | The order in which to sort the list results:      * @ascending@ : ascending order.     * @descending@ : descending order. If not specified, the results are sorted in ascending order. If set to null, the results are sorted in an arbitrary order.
larSortOrder :: Lens' ListApplicationRevisions (Maybe SortOrder)
larSortOrder = lens _larSortOrder (\s a -> s {_larSortOrder = a})

-- | An identifier returned from the previous @ListApplicationRevisions@ call. It can be used to return the next set of applications in the list.
larNextToken :: Lens' ListApplicationRevisions (Maybe Text)
larNextToken = lens _larNextToken (\s a -> s {_larNextToken = a})

-- | An Amazon S3 bucket name to limit the search for revisions.  If set to null, all of the user's buckets are searched.
larS3Bucket :: Lens' ListApplicationRevisions (Maybe Text)
larS3Bucket = lens _larS3Bucket (\s a -> s {_larS3Bucket = a})

-- | Whether to list revisions based on whether the revision is the target revision of a deployment group:      * @include@ : List revisions that are target revisions of a deployment group.     * @exclude@ : Do not list revisions that are target revisions of a deployment group.     * @ignore@ : List all revisions.
larDeployed :: Lens' ListApplicationRevisions (Maybe ListStateFilterAction)
larDeployed = lens _larDeployed (\s a -> s {_larDeployed = a})

-- | A key prefix for the set of Amazon S3 objects to limit the search for revisions.
larS3KeyPrefix :: Lens' ListApplicationRevisions (Maybe Text)
larS3KeyPrefix = lens _larS3KeyPrefix (\s a -> s {_larS3KeyPrefix = a})

-- | The column name to use to sort the list results:     * @registerTime@ : Sort by the time the revisions were registered with AWS CodeDeploy.     * @firstUsedTime@ : Sort by the time the revisions were first used in a deployment.     * @lastUsedTime@ : Sort by the time the revisions were last used in a deployment. If not specified or set to null, the results are returned in an arbitrary order.
larSortBy :: Lens' ListApplicationRevisions (Maybe ApplicationRevisionSortBy)
larSortBy = lens _larSortBy (\s a -> s {_larSortBy = a})

-- | The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
larApplicationName :: Lens' ListApplicationRevisions Text
larApplicationName = lens _larApplicationName (\s a -> s {_larApplicationName = a})

instance AWSPager ListApplicationRevisions where
  page rq rs
    | stop (rs ^. larrrsNextToken) = Nothing
    | stop (rs ^. larrrsRevisions) = Nothing
    | otherwise =
      Just $ rq & larNextToken .~ rs ^. larrrsNextToken

instance AWSRequest ListApplicationRevisions where
  type
    Rs ListApplicationRevisions =
      ListApplicationRevisionsResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          ListApplicationRevisionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "revisions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListApplicationRevisions

instance NFData ListApplicationRevisions

instance ToHeaders ListApplicationRevisions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.ListApplicationRevisions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListApplicationRevisions where
  toJSON ListApplicationRevisions' {..} =
    object
      ( catMaybes
          [ ("sortOrder" .=) <$> _larSortOrder,
            ("nextToken" .=) <$> _larNextToken,
            ("s3Bucket" .=) <$> _larS3Bucket,
            ("deployed" .=) <$> _larDeployed,
            ("s3KeyPrefix" .=) <$> _larS3KeyPrefix,
            ("sortBy" .=) <$> _larSortBy,
            Just ("applicationName" .= _larApplicationName)
          ]
      )

instance ToPath ListApplicationRevisions where
  toPath = const "/"

instance ToQuery ListApplicationRevisions where
  toQuery = const mempty

-- | Represents the output of a @ListApplicationRevisions@ operation.
--
--
--
-- /See:/ 'listApplicationRevisionsResponse' smart constructor.
data ListApplicationRevisionsResponse = ListApplicationRevisionsResponse'
  { _larrrsNextToken ::
      !( Maybe
           Text
       ),
    _larrrsRevisions ::
      !( Maybe
           [RevisionLocation]
       ),
    _larrrsResponseStatus ::
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

-- | Creates a value of 'ListApplicationRevisionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrrsNextToken' - If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list application revisions call to return the next set of application revisions in the list.
--
-- * 'larrrsRevisions' - A list of locations that contain the matching revisions.
--
-- * 'larrrsResponseStatus' - -- | The response status code.
listApplicationRevisionsResponse ::
  -- | 'larrrsResponseStatus'
  Int ->
  ListApplicationRevisionsResponse
listApplicationRevisionsResponse pResponseStatus_ =
  ListApplicationRevisionsResponse'
    { _larrrsNextToken =
        Nothing,
      _larrrsRevisions = Nothing,
      _larrrsResponseStatus = pResponseStatus_
    }

-- | If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list application revisions call to return the next set of application revisions in the list.
larrrsNextToken :: Lens' ListApplicationRevisionsResponse (Maybe Text)
larrrsNextToken = lens _larrrsNextToken (\s a -> s {_larrrsNextToken = a})

-- | A list of locations that contain the matching revisions.
larrrsRevisions :: Lens' ListApplicationRevisionsResponse [RevisionLocation]
larrrsRevisions = lens _larrrsRevisions (\s a -> s {_larrrsRevisions = a}) . _Default . _Coerce

-- | -- | The response status code.
larrrsResponseStatus :: Lens' ListApplicationRevisionsResponse Int
larrrsResponseStatus = lens _larrrsResponseStatus (\s a -> s {_larrrsResponseStatus = a})

instance NFData ListApplicationRevisionsResponse
