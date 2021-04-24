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
-- Module      : Network.AWS.DirectoryService.DescribeSharedDirectories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the shared directories in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DirectoryService.DescribeSharedDirectories
  ( -- * Creating a Request
    describeSharedDirectories,
    DescribeSharedDirectories,

    -- * Request Lenses
    dsdNextToken,
    dsdSharedDirectoryIds,
    dsdLimit,
    dsdOwnerDirectoryId,

    -- * Destructuring the Response
    describeSharedDirectoriesResponse,
    DescribeSharedDirectoriesResponse,

    -- * Response Lenses
    dsdrrsNextToken,
    dsdrrsSharedDirectories,
    dsdrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSharedDirectories' smart constructor.
data DescribeSharedDirectories = DescribeSharedDirectories'
  { _dsdNextToken ::
      !(Maybe Text),
    _dsdSharedDirectoryIds ::
      !(Maybe [Text]),
    _dsdLimit ::
      !(Maybe Nat),
    _dsdOwnerDirectoryId ::
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

-- | Creates a value of 'DescribeSharedDirectories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsdNextToken' - The @DescribeSharedDirectoriesResult.NextToken@ value from a previous call to 'DescribeSharedDirectories' . Pass null if this is the first call.
--
-- * 'dsdSharedDirectoryIds' - A list of identifiers of all shared directories in your account.
--
-- * 'dsdLimit' - The number of shared directories to return in the response object.
--
-- * 'dsdOwnerDirectoryId' - Returns the identifier of the directory in the directory owner account.
describeSharedDirectories ::
  -- | 'dsdOwnerDirectoryId'
  Text ->
  DescribeSharedDirectories
describeSharedDirectories pOwnerDirectoryId_ =
  DescribeSharedDirectories'
    { _dsdNextToken = Nothing,
      _dsdSharedDirectoryIds = Nothing,
      _dsdLimit = Nothing,
      _dsdOwnerDirectoryId = pOwnerDirectoryId_
    }

-- | The @DescribeSharedDirectoriesResult.NextToken@ value from a previous call to 'DescribeSharedDirectories' . Pass null if this is the first call.
dsdNextToken :: Lens' DescribeSharedDirectories (Maybe Text)
dsdNextToken = lens _dsdNextToken (\s a -> s {_dsdNextToken = a})

-- | A list of identifiers of all shared directories in your account.
dsdSharedDirectoryIds :: Lens' DescribeSharedDirectories [Text]
dsdSharedDirectoryIds = lens _dsdSharedDirectoryIds (\s a -> s {_dsdSharedDirectoryIds = a}) . _Default . _Coerce

-- | The number of shared directories to return in the response object.
dsdLimit :: Lens' DescribeSharedDirectories (Maybe Natural)
dsdLimit = lens _dsdLimit (\s a -> s {_dsdLimit = a}) . mapping _Nat

-- | Returns the identifier of the directory in the directory owner account.
dsdOwnerDirectoryId :: Lens' DescribeSharedDirectories Text
dsdOwnerDirectoryId = lens _dsdOwnerDirectoryId (\s a -> s {_dsdOwnerDirectoryId = a})

instance AWSPager DescribeSharedDirectories where
  page rq rs
    | stop (rs ^. dsdrrsNextToken) = Nothing
    | stop (rs ^. dsdrrsSharedDirectories) = Nothing
    | otherwise =
      Just $ rq & dsdNextToken .~ rs ^. dsdrrsNextToken

instance AWSRequest DescribeSharedDirectories where
  type
    Rs DescribeSharedDirectories =
      DescribeSharedDirectoriesResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          DescribeSharedDirectoriesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "SharedDirectories" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSharedDirectories

instance NFData DescribeSharedDirectories

instance ToHeaders DescribeSharedDirectories where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DescribeSharedDirectories" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeSharedDirectories where
  toJSON DescribeSharedDirectories' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dsdNextToken,
            ("SharedDirectoryIds" .=) <$> _dsdSharedDirectoryIds,
            ("Limit" .=) <$> _dsdLimit,
            Just ("OwnerDirectoryId" .= _dsdOwnerDirectoryId)
          ]
      )

instance ToPath DescribeSharedDirectories where
  toPath = const "/"

instance ToQuery DescribeSharedDirectories where
  toQuery = const mempty

-- | /See:/ 'describeSharedDirectoriesResponse' smart constructor.
data DescribeSharedDirectoriesResponse = DescribeSharedDirectoriesResponse'
  { _dsdrrsNextToken ::
      !( Maybe
           Text
       ),
    _dsdrrsSharedDirectories ::
      !( Maybe
           [SharedDirectory]
       ),
    _dsdrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeSharedDirectoriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsdrrsNextToken' - If not null, token that indicates that more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to 'DescribeSharedDirectories' to retrieve the next set of items.
--
-- * 'dsdrrsSharedDirectories' - A list of all shared directories in your account.
--
-- * 'dsdrrsResponseStatus' - -- | The response status code.
describeSharedDirectoriesResponse ::
  -- | 'dsdrrsResponseStatus'
  Int ->
  DescribeSharedDirectoriesResponse
describeSharedDirectoriesResponse pResponseStatus_ =
  DescribeSharedDirectoriesResponse'
    { _dsdrrsNextToken =
        Nothing,
      _dsdrrsSharedDirectories = Nothing,
      _dsdrrsResponseStatus = pResponseStatus_
    }

-- | If not null, token that indicates that more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to 'DescribeSharedDirectories' to retrieve the next set of items.
dsdrrsNextToken :: Lens' DescribeSharedDirectoriesResponse (Maybe Text)
dsdrrsNextToken = lens _dsdrrsNextToken (\s a -> s {_dsdrrsNextToken = a})

-- | A list of all shared directories in your account.
dsdrrsSharedDirectories :: Lens' DescribeSharedDirectoriesResponse [SharedDirectory]
dsdrrsSharedDirectories = lens _dsdrrsSharedDirectories (\s a -> s {_dsdrrsSharedDirectories = a}) . _Default . _Coerce

-- | -- | The response status code.
dsdrrsResponseStatus :: Lens' DescribeSharedDirectoriesResponse Int
dsdrrsResponseStatus = lens _dsdrrsResponseStatus (\s a -> s {_dsdrrsResponseStatus = a})

instance NFData DescribeSharedDirectoriesResponse
