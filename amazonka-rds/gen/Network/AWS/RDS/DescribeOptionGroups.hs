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
-- Module      : Network.AWS.RDS.DescribeOptionGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the available option groups.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeOptionGroups
  ( -- * Creating a Request
    describeOptionGroups,
    DescribeOptionGroups,

    -- * Request Lenses
    dEngineName,
    dOptionGroupName,
    dMajorEngineVersion,
    dFilters,
    dMarker,
    dMaxRecords,

    -- * Destructuring the Response
    describeOptionGroupsResponse,
    DescribeOptionGroupsResponse,

    -- * Response Lenses
    dogrrsOptionGroupsList,
    dogrrsMarker,
    dogrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeOptionGroups' smart constructor.
data DescribeOptionGroups = DescribeOptionGroups'
  { _dEngineName ::
      !(Maybe Text),
    _dOptionGroupName ::
      !(Maybe Text),
    _dMajorEngineVersion ::
      !(Maybe Text),
    _dFilters ::
      !(Maybe [Filter]),
    _dMarker :: !(Maybe Text),
    _dMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeOptionGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dEngineName' - Filters the list of option groups to only include groups associated with a specific database engine. Valid Values:      * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
--
-- * 'dOptionGroupName' - The name of the option group to describe. Can't be supplied together with EngineName or MajorEngineVersion.
--
-- * 'dMajorEngineVersion' - Filters the list of option groups to only include groups associated with a specific database engine version. If specified, then EngineName must also be specified.
--
-- * 'dFilters' - This parameter isn't currently supported.
--
-- * 'dMarker' - An optional pagination token provided by a previous DescribeOptionGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeOptionGroups ::
  DescribeOptionGroups
describeOptionGroups =
  DescribeOptionGroups'
    { _dEngineName = Nothing,
      _dOptionGroupName = Nothing,
      _dMajorEngineVersion = Nothing,
      _dFilters = Nothing,
      _dMarker = Nothing,
      _dMaxRecords = Nothing
    }

-- | Filters the list of option groups to only include groups associated with a specific database engine. Valid Values:      * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
dEngineName :: Lens' DescribeOptionGroups (Maybe Text)
dEngineName = lens _dEngineName (\s a -> s {_dEngineName = a})

-- | The name of the option group to describe. Can't be supplied together with EngineName or MajorEngineVersion.
dOptionGroupName :: Lens' DescribeOptionGroups (Maybe Text)
dOptionGroupName = lens _dOptionGroupName (\s a -> s {_dOptionGroupName = a})

-- | Filters the list of option groups to only include groups associated with a specific database engine version. If specified, then EngineName must also be specified.
dMajorEngineVersion :: Lens' DescribeOptionGroups (Maybe Text)
dMajorEngineVersion = lens _dMajorEngineVersion (\s a -> s {_dMajorEngineVersion = a})

-- | This parameter isn't currently supported.
dFilters :: Lens' DescribeOptionGroups [Filter]
dFilters = lens _dFilters (\s a -> s {_dFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous DescribeOptionGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dMarker :: Lens' DescribeOptionGroups (Maybe Text)
dMarker = lens _dMarker (\s a -> s {_dMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
dMaxRecords :: Lens' DescribeOptionGroups (Maybe Int)
dMaxRecords = lens _dMaxRecords (\s a -> s {_dMaxRecords = a})

instance AWSPager DescribeOptionGroups where
  page rq rs
    | stop (rs ^. dogrrsMarker) = Nothing
    | stop (rs ^. dogrrsOptionGroupsList) = Nothing
    | otherwise =
      Just $ rq & dMarker .~ rs ^. dogrrsMarker

instance AWSRequest DescribeOptionGroups where
  type
    Rs DescribeOptionGroups =
      DescribeOptionGroupsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeOptionGroupsResult"
      ( \s h x ->
          DescribeOptionGroupsResponse'
            <$> ( x .@? "OptionGroupsList" .!@ mempty
                    >>= may (parseXMLList "OptionGroup")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeOptionGroups

instance NFData DescribeOptionGroups

instance ToHeaders DescribeOptionGroups where
  toHeaders = const mempty

instance ToPath DescribeOptionGroups where
  toPath = const "/"

instance ToQuery DescribeOptionGroups where
  toQuery DescribeOptionGroups' {..} =
    mconcat
      [ "Action" =: ("DescribeOptionGroups" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "EngineName" =: _dEngineName,
        "OptionGroupName" =: _dOptionGroupName,
        "MajorEngineVersion" =: _dMajorEngineVersion,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _dFilters),
        "Marker" =: _dMarker,
        "MaxRecords" =: _dMaxRecords
      ]

-- | List of option groups.
--
--
--
-- /See:/ 'describeOptionGroupsResponse' smart constructor.
data DescribeOptionGroupsResponse = DescribeOptionGroupsResponse'
  { _dogrrsOptionGroupsList ::
      !( Maybe
           [OptionGroup]
       ),
    _dogrrsMarker ::
      !(Maybe Text),
    _dogrrsResponseStatus ::
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

-- | Creates a value of 'DescribeOptionGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dogrrsOptionGroupsList' - List of option groups.
--
-- * 'dogrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dogrrsResponseStatus' - -- | The response status code.
describeOptionGroupsResponse ::
  -- | 'dogrrsResponseStatus'
  Int ->
  DescribeOptionGroupsResponse
describeOptionGroupsResponse pResponseStatus_ =
  DescribeOptionGroupsResponse'
    { _dogrrsOptionGroupsList =
        Nothing,
      _dogrrsMarker = Nothing,
      _dogrrsResponseStatus = pResponseStatus_
    }

-- | List of option groups.
dogrrsOptionGroupsList :: Lens' DescribeOptionGroupsResponse [OptionGroup]
dogrrsOptionGroupsList = lens _dogrrsOptionGroupsList (\s a -> s {_dogrrsOptionGroupsList = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dogrrsMarker :: Lens' DescribeOptionGroupsResponse (Maybe Text)
dogrrsMarker = lens _dogrrsMarker (\s a -> s {_dogrrsMarker = a})

-- | -- | The response status code.
dogrrsResponseStatus :: Lens' DescribeOptionGroupsResponse Int
dogrrsResponseStatus = lens _dogrrsResponseStatus (\s a -> s {_dogrrsResponseStatus = a})

instance NFData DescribeOptionGroupsResponse
