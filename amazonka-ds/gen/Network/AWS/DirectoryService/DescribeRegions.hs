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
-- Module      : Network.AWS.DirectoryService.DescribeRegions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about the Regions that are configured for multi-Region replication.
module Network.AWS.DirectoryService.DescribeRegions
  ( -- * Creating a Request
    describeRegions,
    DescribeRegions,

    -- * Request Lenses
    drsRegionName,
    drsNextToken,
    drsDirectoryId,

    -- * Destructuring the Response
    describeRegionsResponse,
    DescribeRegionsResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsRegionsDescription,
    desrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRegions' smart constructor.
data DescribeRegions = DescribeRegions'
  { _drsRegionName ::
      !(Maybe Text),
    _drsNextToken :: !(Maybe Text),
    _drsDirectoryId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRegions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsRegionName' - The name of the Region. For example, @us-east-1@ .
--
-- * 'drsNextToken' - The @DescribeRegionsResult.NextToken@ value from a previous call to 'DescribeRegions' . Pass null if this is the first call.
--
-- * 'drsDirectoryId' - The identifier of the directory.
describeRegions ::
  -- | 'drsDirectoryId'
  Text ->
  DescribeRegions
describeRegions pDirectoryId_ =
  DescribeRegions'
    { _drsRegionName = Nothing,
      _drsNextToken = Nothing,
      _drsDirectoryId = pDirectoryId_
    }

-- | The name of the Region. For example, @us-east-1@ .
drsRegionName :: Lens' DescribeRegions (Maybe Text)
drsRegionName = lens _drsRegionName (\s a -> s {_drsRegionName = a})

-- | The @DescribeRegionsResult.NextToken@ value from a previous call to 'DescribeRegions' . Pass null if this is the first call.
drsNextToken :: Lens' DescribeRegions (Maybe Text)
drsNextToken = lens _drsNextToken (\s a -> s {_drsNextToken = a})

-- | The identifier of the directory.
drsDirectoryId :: Lens' DescribeRegions Text
drsDirectoryId = lens _drsDirectoryId (\s a -> s {_drsDirectoryId = a})

instance AWSRequest DescribeRegions where
  type Rs DescribeRegions = DescribeRegionsResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          DescribeRegionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "RegionsDescription" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRegions

instance NFData DescribeRegions

instance ToHeaders DescribeRegions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DescribeRegions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeRegions where
  toJSON DescribeRegions' {..} =
    object
      ( catMaybes
          [ ("RegionName" .=) <$> _drsRegionName,
            ("NextToken" .=) <$> _drsNextToken,
            Just ("DirectoryId" .= _drsDirectoryId)
          ]
      )

instance ToPath DescribeRegions where
  toPath = const "/"

instance ToQuery DescribeRegions where
  toQuery = const mempty

-- | /See:/ 'describeRegionsResponse' smart constructor.
data DescribeRegionsResponse = DescribeRegionsResponse'
  { _desrsNextToken ::
      !(Maybe Text),
    _desrsRegionsDescription ::
      !( Maybe
           [RegionDescription]
       ),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeRegionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - If not null, more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to 'DescribeRegions' to retrieve the next set of items.
--
-- * 'desrsRegionsDescription' - List of Region information related to the directory for each replicated Region.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeRegionsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeRegionsResponse
describeRegionsResponse pResponseStatus_ =
  DescribeRegionsResponse'
    { _desrsNextToken = Nothing,
      _desrsRegionsDescription = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | If not null, more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to 'DescribeRegions' to retrieve the next set of items.
desrsNextToken :: Lens' DescribeRegionsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | List of Region information related to the directory for each replicated Region.
desrsRegionsDescription :: Lens' DescribeRegionsResponse [RegionDescription]
desrsRegionsDescription = lens _desrsRegionsDescription (\s a -> s {_desrsRegionsDescription = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeRegionsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeRegionsResponse
