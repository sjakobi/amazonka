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
-- Module      : Network.AWS.RDS.DescribeDBEngineVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the available DB engines.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBEngineVersions
  ( -- * Creating a Request
    describeDBEngineVersions,
    DescribeDBEngineVersions,

    -- * Request Lenses
    ddevListSupportedTimezones,
    ddevDefaultOnly,
    ddevListSupportedCharacterSets,
    ddevEngineVersion,
    ddevDBParameterGroupFamily,
    ddevEngine,
    ddevFilters,
    ddevIncludeAll,
    ddevMarker,
    ddevMaxRecords,

    -- * Destructuring the Response
    describeDBEngineVersionsResponse,
    DescribeDBEngineVersionsResponse,

    -- * Response Lenses
    ddevrrsDBEngineVersions,
    ddevrrsMarker,
    ddevrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDBEngineVersions' smart constructor.
data DescribeDBEngineVersions = DescribeDBEngineVersions'
  { _ddevListSupportedTimezones ::
      !(Maybe Bool),
    _ddevDefaultOnly ::
      !(Maybe Bool),
    _ddevListSupportedCharacterSets ::
      !(Maybe Bool),
    _ddevEngineVersion ::
      !(Maybe Text),
    _ddevDBParameterGroupFamily ::
      !(Maybe Text),
    _ddevEngine ::
      !(Maybe Text),
    _ddevFilters ::
      !(Maybe [Filter]),
    _ddevIncludeAll ::
      !(Maybe Bool),
    _ddevMarker ::
      !(Maybe Text),
    _ddevMaxRecords ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDBEngineVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddevListSupportedTimezones' - A value that indicates whether to list the supported time zones for each engine version. If this parameter is enabled and the requested engine supports the @TimeZone@ parameter for @CreateDBInstance@ , the response includes a list of supported time zones for each engine version.
--
-- * 'ddevDefaultOnly' - A value that indicates whether only the default version of the specified engine or engine and major version combination is returned.
--
-- * 'ddevListSupportedCharacterSets' - A value that indicates whether to list the supported character sets for each engine version. If this parameter is enabled and the requested engine supports the @CharacterSetName@ parameter for @CreateDBInstance@ , the response includes a list of supported character sets for each engine version.
--
-- * 'ddevEngineVersion' - The database engine version to return. Example: @5.1.49@
--
-- * 'ddevDBParameterGroupFamily' - The name of a specific DB parameter group family to return details for. Constraints:     * If supplied, must match an existing DBParameterGroupFamily.
--
-- * 'ddevEngine' - The database engine to return. Valid Values:      * @aurora@ (for MySQL 5.6-compatible Aurora)     * @aurora-mysql@ (for MySQL 5.7-compatible Aurora)     * @aurora-postgresql@      * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
--
-- * 'ddevFilters' - This parameter isn't currently supported.
--
-- * 'ddevIncludeAll' - A value that indicates whether to include engine versions that aren't available in the list. The default is to list only available engine versions.
--
-- * 'ddevMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddevMaxRecords' - The maximum number of records to include in the response. If more than the @MaxRecords@ value is available, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeDBEngineVersions ::
  DescribeDBEngineVersions
describeDBEngineVersions =
  DescribeDBEngineVersions'
    { _ddevListSupportedTimezones =
        Nothing,
      _ddevDefaultOnly = Nothing,
      _ddevListSupportedCharacterSets = Nothing,
      _ddevEngineVersion = Nothing,
      _ddevDBParameterGroupFamily = Nothing,
      _ddevEngine = Nothing,
      _ddevFilters = Nothing,
      _ddevIncludeAll = Nothing,
      _ddevMarker = Nothing,
      _ddevMaxRecords = Nothing
    }

-- | A value that indicates whether to list the supported time zones for each engine version. If this parameter is enabled and the requested engine supports the @TimeZone@ parameter for @CreateDBInstance@ , the response includes a list of supported time zones for each engine version.
ddevListSupportedTimezones :: Lens' DescribeDBEngineVersions (Maybe Bool)
ddevListSupportedTimezones = lens _ddevListSupportedTimezones (\s a -> s {_ddevListSupportedTimezones = a})

-- | A value that indicates whether only the default version of the specified engine or engine and major version combination is returned.
ddevDefaultOnly :: Lens' DescribeDBEngineVersions (Maybe Bool)
ddevDefaultOnly = lens _ddevDefaultOnly (\s a -> s {_ddevDefaultOnly = a})

-- | A value that indicates whether to list the supported character sets for each engine version. If this parameter is enabled and the requested engine supports the @CharacterSetName@ parameter for @CreateDBInstance@ , the response includes a list of supported character sets for each engine version.
ddevListSupportedCharacterSets :: Lens' DescribeDBEngineVersions (Maybe Bool)
ddevListSupportedCharacterSets = lens _ddevListSupportedCharacterSets (\s a -> s {_ddevListSupportedCharacterSets = a})

-- | The database engine version to return. Example: @5.1.49@
ddevEngineVersion :: Lens' DescribeDBEngineVersions (Maybe Text)
ddevEngineVersion = lens _ddevEngineVersion (\s a -> s {_ddevEngineVersion = a})

-- | The name of a specific DB parameter group family to return details for. Constraints:     * If supplied, must match an existing DBParameterGroupFamily.
ddevDBParameterGroupFamily :: Lens' DescribeDBEngineVersions (Maybe Text)
ddevDBParameterGroupFamily = lens _ddevDBParameterGroupFamily (\s a -> s {_ddevDBParameterGroupFamily = a})

-- | The database engine to return. Valid Values:      * @aurora@ (for MySQL 5.6-compatible Aurora)     * @aurora-mysql@ (for MySQL 5.7-compatible Aurora)     * @aurora-postgresql@      * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
ddevEngine :: Lens' DescribeDBEngineVersions (Maybe Text)
ddevEngine = lens _ddevEngine (\s a -> s {_ddevEngine = a})

-- | This parameter isn't currently supported.
ddevFilters :: Lens' DescribeDBEngineVersions [Filter]
ddevFilters = lens _ddevFilters (\s a -> s {_ddevFilters = a}) . _Default . _Coerce

-- | A value that indicates whether to include engine versions that aren't available in the list. The default is to list only available engine versions.
ddevIncludeAll :: Lens' DescribeDBEngineVersions (Maybe Bool)
ddevIncludeAll = lens _ddevIncludeAll (\s a -> s {_ddevIncludeAll = a})

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddevMarker :: Lens' DescribeDBEngineVersions (Maybe Text)
ddevMarker = lens _ddevMarker (\s a -> s {_ddevMarker = a})

-- | The maximum number of records to include in the response. If more than the @MaxRecords@ value is available, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
ddevMaxRecords :: Lens' DescribeDBEngineVersions (Maybe Int)
ddevMaxRecords = lens _ddevMaxRecords (\s a -> s {_ddevMaxRecords = a})

instance AWSPager DescribeDBEngineVersions where
  page rq rs
    | stop (rs ^. ddevrrsMarker) = Nothing
    | stop (rs ^. ddevrrsDBEngineVersions) = Nothing
    | otherwise =
      Just $ rq & ddevMarker .~ rs ^. ddevrrsMarker

instance AWSRequest DescribeDBEngineVersions where
  type
    Rs DescribeDBEngineVersions =
      DescribeDBEngineVersionsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBEngineVersionsResult"
      ( \s h x ->
          DescribeDBEngineVersionsResponse'
            <$> ( x .@? "DBEngineVersions" .!@ mempty
                    >>= may (parseXMLList "DBEngineVersion")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBEngineVersions

instance NFData DescribeDBEngineVersions

instance ToHeaders DescribeDBEngineVersions where
  toHeaders = const mempty

instance ToPath DescribeDBEngineVersions where
  toPath = const "/"

instance ToQuery DescribeDBEngineVersions where
  toQuery DescribeDBEngineVersions' {..} =
    mconcat
      [ "Action"
          =: ("DescribeDBEngineVersions" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "ListSupportedTimezones"
          =: _ddevListSupportedTimezones,
        "DefaultOnly" =: _ddevDefaultOnly,
        "ListSupportedCharacterSets"
          =: _ddevListSupportedCharacterSets,
        "EngineVersion" =: _ddevEngineVersion,
        "DBParameterGroupFamily"
          =: _ddevDBParameterGroupFamily,
        "Engine" =: _ddevEngine,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddevFilters),
        "IncludeAll" =: _ddevIncludeAll,
        "Marker" =: _ddevMarker,
        "MaxRecords" =: _ddevMaxRecords
      ]

-- | Contains the result of a successful invocation of the @DescribeDBEngineVersions@ action.
--
--
--
-- /See:/ 'describeDBEngineVersionsResponse' smart constructor.
data DescribeDBEngineVersionsResponse = DescribeDBEngineVersionsResponse'
  { _ddevrrsDBEngineVersions ::
      !( Maybe
           [DBEngineVersion]
       ),
    _ddevrrsMarker ::
      !( Maybe
           Text
       ),
    _ddevrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBEngineVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddevrrsDBEngineVersions' - A list of @DBEngineVersion@ elements.
--
-- * 'ddevrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddevrrsResponseStatus' - -- | The response status code.
describeDBEngineVersionsResponse ::
  -- | 'ddevrrsResponseStatus'
  Int ->
  DescribeDBEngineVersionsResponse
describeDBEngineVersionsResponse pResponseStatus_ =
  DescribeDBEngineVersionsResponse'
    { _ddevrrsDBEngineVersions =
        Nothing,
      _ddevrrsMarker = Nothing,
      _ddevrrsResponseStatus = pResponseStatus_
    }

-- | A list of @DBEngineVersion@ elements.
ddevrrsDBEngineVersions :: Lens' DescribeDBEngineVersionsResponse [DBEngineVersion]
ddevrrsDBEngineVersions = lens _ddevrrsDBEngineVersions (\s a -> s {_ddevrrsDBEngineVersions = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddevrrsMarker :: Lens' DescribeDBEngineVersionsResponse (Maybe Text)
ddevrrsMarker = lens _ddevrrsMarker (\s a -> s {_ddevrrsMarker = a})

-- | -- | The response status code.
ddevrrsResponseStatus :: Lens' DescribeDBEngineVersionsResponse Int
ddevrrsResponseStatus = lens _ddevrrsResponseStatus (\s a -> s {_ddevrrsResponseStatus = a})

instance NFData DescribeDBEngineVersionsResponse
