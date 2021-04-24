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
-- Module      : Network.AWS.AppStream.DescribeDirectoryConfigs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
--
--
-- Although the response syntax in this topic includes the account password, this password is not returned in the actual response.
--
--
-- This operation returns paginated results.
module Network.AWS.AppStream.DescribeDirectoryConfigs
  ( -- * Creating a Request
    describeDirectoryConfigs,
    DescribeDirectoryConfigs,

    -- * Request Lenses
    ddcNextToken,
    ddcMaxResults,
    ddcDirectoryNames,

    -- * Destructuring the Response
    describeDirectoryConfigsResponse,
    DescribeDirectoryConfigsResponse,

    -- * Response Lenses
    drsNextToken,
    drsDirectoryConfigs,
    drsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDirectoryConfigs' smart constructor.
data DescribeDirectoryConfigs = DescribeDirectoryConfigs'
  { _ddcNextToken ::
      !(Maybe Text),
    _ddcMaxResults ::
      !(Maybe Int),
    _ddcDirectoryNames ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDirectoryConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcNextToken' - The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
--
-- * 'ddcMaxResults' - The maximum size of each page of results.
--
-- * 'ddcDirectoryNames' - The directory names.
describeDirectoryConfigs ::
  DescribeDirectoryConfigs
describeDirectoryConfigs =
  DescribeDirectoryConfigs'
    { _ddcNextToken = Nothing,
      _ddcMaxResults = Nothing,
      _ddcDirectoryNames = Nothing
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
ddcNextToken :: Lens' DescribeDirectoryConfigs (Maybe Text)
ddcNextToken = lens _ddcNextToken (\s a -> s {_ddcNextToken = a})

-- | The maximum size of each page of results.
ddcMaxResults :: Lens' DescribeDirectoryConfigs (Maybe Int)
ddcMaxResults = lens _ddcMaxResults (\s a -> s {_ddcMaxResults = a})

-- | The directory names.
ddcDirectoryNames :: Lens' DescribeDirectoryConfigs [Text]
ddcDirectoryNames = lens _ddcDirectoryNames (\s a -> s {_ddcDirectoryNames = a}) . _Default . _Coerce

instance AWSPager DescribeDirectoryConfigs where
  page rq rs
    | stop (rs ^. drsNextToken) = Nothing
    | stop (rs ^. drsDirectoryConfigs) = Nothing
    | otherwise =
      Just $ rq & ddcNextToken .~ rs ^. drsNextToken

instance AWSRequest DescribeDirectoryConfigs where
  type
    Rs DescribeDirectoryConfigs =
      DescribeDirectoryConfigsResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          DescribeDirectoryConfigsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "DirectoryConfigs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDirectoryConfigs

instance NFData DescribeDirectoryConfigs

instance ToHeaders DescribeDirectoryConfigs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.DescribeDirectoryConfigs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDirectoryConfigs where
  toJSON DescribeDirectoryConfigs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ddcNextToken,
            ("MaxResults" .=) <$> _ddcMaxResults,
            ("DirectoryNames" .=) <$> _ddcDirectoryNames
          ]
      )

instance ToPath DescribeDirectoryConfigs where
  toPath = const "/"

instance ToQuery DescribeDirectoryConfigs where
  toQuery = const mempty

-- | /See:/ 'describeDirectoryConfigsResponse' smart constructor.
data DescribeDirectoryConfigsResponse = DescribeDirectoryConfigsResponse'
  { _drsNextToken ::
      !( Maybe
           Text
       ),
    _drsDirectoryConfigs ::
      !( Maybe
           [DirectoryConfig]
       ),
    _drsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDirectoryConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsNextToken' - The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- * 'drsDirectoryConfigs' - Information about the directory configurations. Note that although the response syntax in this topic includes the account password, this password is not returned in the actual response.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeDirectoryConfigsResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeDirectoryConfigsResponse
describeDirectoryConfigsResponse pResponseStatus_ =
  DescribeDirectoryConfigsResponse'
    { _drsNextToken =
        Nothing,
      _drsDirectoryConfigs = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
drsNextToken :: Lens' DescribeDirectoryConfigsResponse (Maybe Text)
drsNextToken = lens _drsNextToken (\s a -> s {_drsNextToken = a})

-- | Information about the directory configurations. Note that although the response syntax in this topic includes the account password, this password is not returned in the actual response.
drsDirectoryConfigs :: Lens' DescribeDirectoryConfigsResponse [DirectoryConfig]
drsDirectoryConfigs = lens _drsDirectoryConfigs (\s a -> s {_drsDirectoryConfigs = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeDirectoryConfigsResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeDirectoryConfigsResponse
