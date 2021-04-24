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
-- Module      : Network.AWS.Rekognition.DescribeProjects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists and gets information about your Amazon Rekognition Custom Labels projects.
--
--
-- This operation requires permissions to perform the @rekognition:DescribeProjects@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.Rekognition.DescribeProjects
  ( -- * Creating a Request
    describeProjects,
    DescribeProjects,

    -- * Request Lenses
    dpNextToken,
    dpMaxResults,

    -- * Destructuring the Response
    describeProjectsResponse,
    DescribeProjectsResponse,

    -- * Response Lenses
    dprprsNextToken,
    dprprsProjectDescriptions,
    dprprsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeProjects' smart constructor.
data DescribeProjects = DescribeProjects'
  { _dpNextToken ::
      !(Maybe Text),
    _dpMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeProjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpNextToken' - If the previous response was incomplete (because there is more results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination token to retrieve the next set of results.
--
-- * 'dpMaxResults' - The maximum number of results to return per paginated call. The largest value you can specify is 100. If you specify a value greater than 100, a ValidationException error occurs. The default value is 100.
describeProjects ::
  DescribeProjects
describeProjects =
  DescribeProjects'
    { _dpNextToken = Nothing,
      _dpMaxResults = Nothing
    }

-- | If the previous response was incomplete (because there is more results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination token to retrieve the next set of results.
dpNextToken :: Lens' DescribeProjects (Maybe Text)
dpNextToken = lens _dpNextToken (\s a -> s {_dpNextToken = a})

-- | The maximum number of results to return per paginated call. The largest value you can specify is 100. If you specify a value greater than 100, a ValidationException error occurs. The default value is 100.
dpMaxResults :: Lens' DescribeProjects (Maybe Natural)
dpMaxResults = lens _dpMaxResults (\s a -> s {_dpMaxResults = a}) . mapping _Nat

instance AWSPager DescribeProjects where
  page rq rs
    | stop (rs ^. dprprsNextToken) = Nothing
    | stop (rs ^. dprprsProjectDescriptions) = Nothing
    | otherwise =
      Just $ rq & dpNextToken .~ rs ^. dprprsNextToken

instance AWSRequest DescribeProjects where
  type Rs DescribeProjects = DescribeProjectsResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          DescribeProjectsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ProjectDescriptions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeProjects

instance NFData DescribeProjects

instance ToHeaders DescribeProjects where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.DescribeProjects" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeProjects where
  toJSON DescribeProjects' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dpNextToken,
            ("MaxResults" .=) <$> _dpMaxResults
          ]
      )

instance ToPath DescribeProjects where
  toPath = const "/"

instance ToQuery DescribeProjects where
  toQuery = const mempty

-- | /See:/ 'describeProjectsResponse' smart constructor.
data DescribeProjectsResponse = DescribeProjectsResponse'
  { _dprprsNextToken ::
      !(Maybe Text),
    _dprprsProjectDescriptions ::
      !( Maybe
           [ProjectDescription]
       ),
    _dprprsResponseStatus ::
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

-- | Creates a value of 'DescribeProjectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprprsNextToken' - If the previous response was incomplete (because there is more results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination token to retrieve the next set of results.
--
-- * 'dprprsProjectDescriptions' - A list of project descriptions. The list is sorted by the date and time the projects are created.
--
-- * 'dprprsResponseStatus' - -- | The response status code.
describeProjectsResponse ::
  -- | 'dprprsResponseStatus'
  Int ->
  DescribeProjectsResponse
describeProjectsResponse pResponseStatus_ =
  DescribeProjectsResponse'
    { _dprprsNextToken =
        Nothing,
      _dprprsProjectDescriptions = Nothing,
      _dprprsResponseStatus = pResponseStatus_
    }

-- | If the previous response was incomplete (because there is more results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination token to retrieve the next set of results.
dprprsNextToken :: Lens' DescribeProjectsResponse (Maybe Text)
dprprsNextToken = lens _dprprsNextToken (\s a -> s {_dprprsNextToken = a})

-- | A list of project descriptions. The list is sorted by the date and time the projects are created.
dprprsProjectDescriptions :: Lens' DescribeProjectsResponse [ProjectDescription]
dprprsProjectDescriptions = lens _dprprsProjectDescriptions (\s a -> s {_dprprsProjectDescriptions = a}) . _Default . _Coerce

-- | -- | The response status code.
dprprsResponseStatus :: Lens' DescribeProjectsResponse Int
dprprsResponseStatus = lens _dprprsResponseStatus (\s a -> s {_dprprsResponseStatus = a})

instance NFData DescribeProjectsResponse
