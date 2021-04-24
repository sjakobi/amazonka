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
-- Module      : Network.AWS.DirectoryService.DescribeDirectories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtains information about the directories that belong to this account.
--
--
-- You can retrieve information about specific directories by passing the directory identifiers in the @DirectoryIds@ parameter. Otherwise, all directories that belong to the current account are returned.
--
-- This operation supports pagination with the use of the @NextToken@ request and response parameters. If more results are available, the @DescribeDirectoriesResult.NextToken@ member contains a token that you pass in the next call to 'DescribeDirectories' to retrieve the next set of items.
--
-- You can also specify a maximum number of return results with the @Limit@ parameter.
--
--
-- This operation returns paginated results.
module Network.AWS.DirectoryService.DescribeDirectories
  ( -- * Creating a Request
    describeDirectories,
    DescribeDirectories,

    -- * Request Lenses
    ddNextToken,
    ddDirectoryIds,
    ddLimit,

    -- * Destructuring the Response
    describeDirectoriesResponse,
    DescribeDirectoriesResponse,

    -- * Response Lenses
    ddrdrsNextToken,
    ddrdrsDirectoryDescriptions,
    ddrdrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the inputs for the 'DescribeDirectories' operation.
--
--
--
-- /See:/ 'describeDirectories' smart constructor.
data DescribeDirectories = DescribeDirectories'
  { _ddNextToken ::
      !(Maybe Text),
    _ddDirectoryIds ::
      !(Maybe [Text]),
    _ddLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDirectories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddNextToken' - The @DescribeDirectoriesResult.NextToken@ value from a previous call to 'DescribeDirectories' . Pass null if this is the first call.
--
-- * 'ddDirectoryIds' - A list of identifiers of the directories for which to obtain the information. If this member is null, all directories that belong to the current account are returned. An empty list results in an @InvalidParameterException@ being thrown.
--
-- * 'ddLimit' - The maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.
describeDirectories ::
  DescribeDirectories
describeDirectories =
  DescribeDirectories'
    { _ddNextToken = Nothing,
      _ddDirectoryIds = Nothing,
      _ddLimit = Nothing
    }

-- | The @DescribeDirectoriesResult.NextToken@ value from a previous call to 'DescribeDirectories' . Pass null if this is the first call.
ddNextToken :: Lens' DescribeDirectories (Maybe Text)
ddNextToken = lens _ddNextToken (\s a -> s {_ddNextToken = a})

-- | A list of identifiers of the directories for which to obtain the information. If this member is null, all directories that belong to the current account are returned. An empty list results in an @InvalidParameterException@ being thrown.
ddDirectoryIds :: Lens' DescribeDirectories [Text]
ddDirectoryIds = lens _ddDirectoryIds (\s a -> s {_ddDirectoryIds = a}) . _Default . _Coerce

-- | The maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.
ddLimit :: Lens' DescribeDirectories (Maybe Natural)
ddLimit = lens _ddLimit (\s a -> s {_ddLimit = a}) . mapping _Nat

instance AWSPager DescribeDirectories where
  page rq rs
    | stop (rs ^. ddrdrsNextToken) = Nothing
    | stop (rs ^. ddrdrsDirectoryDescriptions) = Nothing
    | otherwise =
      Just $ rq & ddNextToken .~ rs ^. ddrdrsNextToken

instance AWSRequest DescribeDirectories where
  type
    Rs DescribeDirectories =
      DescribeDirectoriesResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          DescribeDirectoriesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "DirectoryDescriptions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDirectories

instance NFData DescribeDirectories

instance ToHeaders DescribeDirectories where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DescribeDirectories" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDirectories where
  toJSON DescribeDirectories' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ddNextToken,
            ("DirectoryIds" .=) <$> _ddDirectoryIds,
            ("Limit" .=) <$> _ddLimit
          ]
      )

instance ToPath DescribeDirectories where
  toPath = const "/"

instance ToQuery DescribeDirectories where
  toQuery = const mempty

-- | Contains the results of the 'DescribeDirectories' operation.
--
--
--
-- /See:/ 'describeDirectoriesResponse' smart constructor.
data DescribeDirectoriesResponse = DescribeDirectoriesResponse'
  { _ddrdrsNextToken ::
      !(Maybe Text),
    _ddrdrsDirectoryDescriptions ::
      !( Maybe
           [DirectoryDescription]
       ),
    _ddrdrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDirectoriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrdrsNextToken' - If not null, more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to 'DescribeDirectories' to retrieve the next set of items.
--
-- * 'ddrdrsDirectoryDescriptions' - The list of 'DirectoryDescription' objects that were retrieved. It is possible that this list contains less than the number of items specified in the @Limit@ member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.
--
-- * 'ddrdrsResponseStatus' - -- | The response status code.
describeDirectoriesResponse ::
  -- | 'ddrdrsResponseStatus'
  Int ->
  DescribeDirectoriesResponse
describeDirectoriesResponse pResponseStatus_ =
  DescribeDirectoriesResponse'
    { _ddrdrsNextToken =
        Nothing,
      _ddrdrsDirectoryDescriptions = Nothing,
      _ddrdrsResponseStatus = pResponseStatus_
    }

-- | If not null, more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to 'DescribeDirectories' to retrieve the next set of items.
ddrdrsNextToken :: Lens' DescribeDirectoriesResponse (Maybe Text)
ddrdrsNextToken = lens _ddrdrsNextToken (\s a -> s {_ddrdrsNextToken = a})

-- | The list of 'DirectoryDescription' objects that were retrieved. It is possible that this list contains less than the number of items specified in the @Limit@ member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.
ddrdrsDirectoryDescriptions :: Lens' DescribeDirectoriesResponse [DirectoryDescription]
ddrdrsDirectoryDescriptions = lens _ddrdrsDirectoryDescriptions (\s a -> s {_ddrdrsDirectoryDescriptions = a}) . _Default . _Coerce

-- | -- | The response status code.
ddrdrsResponseStatus :: Lens' DescribeDirectoriesResponse Int
ddrdrsResponseStatus = lens _ddrdrsResponseStatus (\s a -> s {_ddrdrsResponseStatus = a})

instance NFData DescribeDirectoriesResponse
