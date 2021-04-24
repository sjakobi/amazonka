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
-- Module      : Network.AWS.CodeCommit.GetCommentsForComparedCommit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about comments made on the comparison between two commits.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeCommit.GetCommentsForComparedCommit
  ( -- * Creating a Request
    getCommentsForComparedCommit,
    GetCommentsForComparedCommit,

    -- * Request Lenses
    gcfccNextToken,
    gcfccMaxResults,
    gcfccBeforeCommitId,
    gcfccRepositoryName,
    gcfccAfterCommitId,

    -- * Destructuring the Response
    getCommentsForComparedCommitResponse,
    GetCommentsForComparedCommitResponse,

    -- * Response Lenses
    gcfccrrsNextToken,
    gcfccrrsCommentsForComparedCommitData,
    gcfccrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCommentsForComparedCommit' smart constructor.
data GetCommentsForComparedCommit = GetCommentsForComparedCommit'
  { _gcfccNextToken ::
      !(Maybe Text),
    _gcfccMaxResults ::
      !(Maybe Int),
    _gcfccBeforeCommitId ::
      !(Maybe Text),
    _gcfccRepositoryName ::
      !Text,
    _gcfccAfterCommitId ::
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

-- | Creates a value of 'GetCommentsForComparedCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfccNextToken' - An enumeration token that when provided in a request, returns the next batch of the results.
--
-- * 'gcfccMaxResults' - A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments, but you can configure up to 500.
--
-- * 'gcfccBeforeCommitId' - To establish the directionality of the comparison, the full commit ID of the before commit.
--
-- * 'gcfccRepositoryName' - The name of the repository where you want to compare commits.
--
-- * 'gcfccAfterCommitId' - To establish the directionality of the comparison, the full commit ID of the after commit.
getCommentsForComparedCommit ::
  -- | 'gcfccRepositoryName'
  Text ->
  -- | 'gcfccAfterCommitId'
  Text ->
  GetCommentsForComparedCommit
getCommentsForComparedCommit
  pRepositoryName_
  pAfterCommitId_ =
    GetCommentsForComparedCommit'
      { _gcfccNextToken =
          Nothing,
        _gcfccMaxResults = Nothing,
        _gcfccBeforeCommitId = Nothing,
        _gcfccRepositoryName = pRepositoryName_,
        _gcfccAfterCommitId = pAfterCommitId_
      }

-- | An enumeration token that when provided in a request, returns the next batch of the results.
gcfccNextToken :: Lens' GetCommentsForComparedCommit (Maybe Text)
gcfccNextToken = lens _gcfccNextToken (\s a -> s {_gcfccNextToken = a})

-- | A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments, but you can configure up to 500.
gcfccMaxResults :: Lens' GetCommentsForComparedCommit (Maybe Int)
gcfccMaxResults = lens _gcfccMaxResults (\s a -> s {_gcfccMaxResults = a})

-- | To establish the directionality of the comparison, the full commit ID of the before commit.
gcfccBeforeCommitId :: Lens' GetCommentsForComparedCommit (Maybe Text)
gcfccBeforeCommitId = lens _gcfccBeforeCommitId (\s a -> s {_gcfccBeforeCommitId = a})

-- | The name of the repository where you want to compare commits.
gcfccRepositoryName :: Lens' GetCommentsForComparedCommit Text
gcfccRepositoryName = lens _gcfccRepositoryName (\s a -> s {_gcfccRepositoryName = a})

-- | To establish the directionality of the comparison, the full commit ID of the after commit.
gcfccAfterCommitId :: Lens' GetCommentsForComparedCommit Text
gcfccAfterCommitId = lens _gcfccAfterCommitId (\s a -> s {_gcfccAfterCommitId = a})

instance AWSPager GetCommentsForComparedCommit where
  page rq rs
    | stop (rs ^. gcfccrrsNextToken) = Nothing
    | stop (rs ^. gcfccrrsCommentsForComparedCommitData) =
      Nothing
    | otherwise =
      Just $ rq & gcfccNextToken .~ rs ^. gcfccrrsNextToken

instance AWSRequest GetCommentsForComparedCommit where
  type
    Rs GetCommentsForComparedCommit =
      GetCommentsForComparedCommitResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          GetCommentsForComparedCommitResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "commentsForComparedCommitData" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetCommentsForComparedCommit

instance NFData GetCommentsForComparedCommit

instance ToHeaders GetCommentsForComparedCommit where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.GetCommentsForComparedCommit" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCommentsForComparedCommit where
  toJSON GetCommentsForComparedCommit' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _gcfccNextToken,
            ("maxResults" .=) <$> _gcfccMaxResults,
            ("beforeCommitId" .=) <$> _gcfccBeforeCommitId,
            Just ("repositoryName" .= _gcfccRepositoryName),
            Just ("afterCommitId" .= _gcfccAfterCommitId)
          ]
      )

instance ToPath GetCommentsForComparedCommit where
  toPath = const "/"

instance ToQuery GetCommentsForComparedCommit where
  toQuery = const mempty

-- | /See:/ 'getCommentsForComparedCommitResponse' smart constructor.
data GetCommentsForComparedCommitResponse = GetCommentsForComparedCommitResponse'
  { _gcfccrrsNextToken ::
      !( Maybe
           Text
       ),
    _gcfccrrsCommentsForComparedCommitData ::
      !( Maybe
           [CommentsForComparedCommit]
       ),
    _gcfccrrsResponseStatus ::
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

-- | Creates a value of 'GetCommentsForComparedCommitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfccrrsNextToken' - An enumeration token that can be used in a request to return the next batch of the results.
--
-- * 'gcfccrrsCommentsForComparedCommitData' - A list of comment objects on the compared commit.
--
-- * 'gcfccrrsResponseStatus' - -- | The response status code.
getCommentsForComparedCommitResponse ::
  -- | 'gcfccrrsResponseStatus'
  Int ->
  GetCommentsForComparedCommitResponse
getCommentsForComparedCommitResponse pResponseStatus_ =
  GetCommentsForComparedCommitResponse'
    { _gcfccrrsNextToken =
        Nothing,
      _gcfccrrsCommentsForComparedCommitData =
        Nothing,
      _gcfccrrsResponseStatus =
        pResponseStatus_
    }

-- | An enumeration token that can be used in a request to return the next batch of the results.
gcfccrrsNextToken :: Lens' GetCommentsForComparedCommitResponse (Maybe Text)
gcfccrrsNextToken = lens _gcfccrrsNextToken (\s a -> s {_gcfccrrsNextToken = a})

-- | A list of comment objects on the compared commit.
gcfccrrsCommentsForComparedCommitData :: Lens' GetCommentsForComparedCommitResponse [CommentsForComparedCommit]
gcfccrrsCommentsForComparedCommitData = lens _gcfccrrsCommentsForComparedCommitData (\s a -> s {_gcfccrrsCommentsForComparedCommitData = a}) . _Default . _Coerce

-- | -- | The response status code.
gcfccrrsResponseStatus :: Lens' GetCommentsForComparedCommitResponse Int
gcfccrrsResponseStatus = lens _gcfccrrsResponseStatus (\s a -> s {_gcfccrrsResponseStatus = a})

instance NFData GetCommentsForComparedCommitResponse
