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
-- Module      : Network.AWS.RDS.DescribeOptionGroupOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes all available options.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeOptionGroupOptions
  ( -- * Creating a Request
    describeOptionGroupOptions,
    DescribeOptionGroupOptions,

    -- * Request Lenses
    dogoMajorEngineVersion,
    dogoFilters,
    dogoMarker,
    dogoMaxRecords,
    dogoEngineName,

    -- * Destructuring the Response
    describeOptionGroupOptionsResponse,
    DescribeOptionGroupOptionsResponse,

    -- * Response Lenses
    dogorrsOptionGroupOptions,
    dogorrsMarker,
    dogorrsResponseStatus,
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
-- /See:/ 'describeOptionGroupOptions' smart constructor.
data DescribeOptionGroupOptions = DescribeOptionGroupOptions'
  { _dogoMajorEngineVersion ::
      !(Maybe Text),
    _dogoFilters ::
      !(Maybe [Filter]),
    _dogoMarker ::
      !(Maybe Text),
    _dogoMaxRecords ::
      !(Maybe Int),
    _dogoEngineName ::
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

-- | Creates a value of 'DescribeOptionGroupOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dogoMajorEngineVersion' - If specified, filters the results to include only options for the specified major engine version.
--
-- * 'dogoFilters' - This parameter isn't currently supported.
--
-- * 'dogoMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dogoMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
--
-- * 'dogoEngineName' - A required parameter. Options available for the given engine name are described. Valid Values:      * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
describeOptionGroupOptions ::
  -- | 'dogoEngineName'
  Text ->
  DescribeOptionGroupOptions
describeOptionGroupOptions pEngineName_ =
  DescribeOptionGroupOptions'
    { _dogoMajorEngineVersion =
        Nothing,
      _dogoFilters = Nothing,
      _dogoMarker = Nothing,
      _dogoMaxRecords = Nothing,
      _dogoEngineName = pEngineName_
    }

-- | If specified, filters the results to include only options for the specified major engine version.
dogoMajorEngineVersion :: Lens' DescribeOptionGroupOptions (Maybe Text)
dogoMajorEngineVersion = lens _dogoMajorEngineVersion (\s a -> s {_dogoMajorEngineVersion = a})

-- | This parameter isn't currently supported.
dogoFilters :: Lens' DescribeOptionGroupOptions [Filter]
dogoFilters = lens _dogoFilters (\s a -> s {_dogoFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dogoMarker :: Lens' DescribeOptionGroupOptions (Maybe Text)
dogoMarker = lens _dogoMarker (\s a -> s {_dogoMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
dogoMaxRecords :: Lens' DescribeOptionGroupOptions (Maybe Int)
dogoMaxRecords = lens _dogoMaxRecords (\s a -> s {_dogoMaxRecords = a})

-- | A required parameter. Options available for the given engine name are described. Valid Values:      * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
dogoEngineName :: Lens' DescribeOptionGroupOptions Text
dogoEngineName = lens _dogoEngineName (\s a -> s {_dogoEngineName = a})

instance AWSPager DescribeOptionGroupOptions where
  page rq rs
    | stop (rs ^. dogorrsMarker) = Nothing
    | stop (rs ^. dogorrsOptionGroupOptions) = Nothing
    | otherwise =
      Just $ rq & dogoMarker .~ rs ^. dogorrsMarker

instance AWSRequest DescribeOptionGroupOptions where
  type
    Rs DescribeOptionGroupOptions =
      DescribeOptionGroupOptionsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeOptionGroupOptionsResult"
      ( \s h x ->
          DescribeOptionGroupOptionsResponse'
            <$> ( x .@? "OptionGroupOptions" .!@ mempty
                    >>= may (parseXMLList "OptionGroupOption")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeOptionGroupOptions

instance NFData DescribeOptionGroupOptions

instance ToHeaders DescribeOptionGroupOptions where
  toHeaders = const mempty

instance ToPath DescribeOptionGroupOptions where
  toPath = const "/"

instance ToQuery DescribeOptionGroupOptions where
  toQuery DescribeOptionGroupOptions' {..} =
    mconcat
      [ "Action"
          =: ("DescribeOptionGroupOptions" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "MajorEngineVersion" =: _dogoMajorEngineVersion,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _dogoFilters),
        "Marker" =: _dogoMarker,
        "MaxRecords" =: _dogoMaxRecords,
        "EngineName" =: _dogoEngineName
      ]

-- |
--
--
--
-- /See:/ 'describeOptionGroupOptionsResponse' smart constructor.
data DescribeOptionGroupOptionsResponse = DescribeOptionGroupOptionsResponse'
  { _dogorrsOptionGroupOptions ::
      !( Maybe
           [OptionGroupOption]
       ),
    _dogorrsMarker ::
      !( Maybe
           Text
       ),
    _dogorrsResponseStatus ::
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

-- | Creates a value of 'DescribeOptionGroupOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dogorrsOptionGroupOptions' - Undocumented member.
--
-- * 'dogorrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dogorrsResponseStatus' - -- | The response status code.
describeOptionGroupOptionsResponse ::
  -- | 'dogorrsResponseStatus'
  Int ->
  DescribeOptionGroupOptionsResponse
describeOptionGroupOptionsResponse pResponseStatus_ =
  DescribeOptionGroupOptionsResponse'
    { _dogorrsOptionGroupOptions =
        Nothing,
      _dogorrsMarker = Nothing,
      _dogorrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
dogorrsOptionGroupOptions :: Lens' DescribeOptionGroupOptionsResponse [OptionGroupOption]
dogorrsOptionGroupOptions = lens _dogorrsOptionGroupOptions (\s a -> s {_dogorrsOptionGroupOptions = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dogorrsMarker :: Lens' DescribeOptionGroupOptionsResponse (Maybe Text)
dogorrsMarker = lens _dogorrsMarker (\s a -> s {_dogorrsMarker = a})

-- | -- | The response status code.
dogorrsResponseStatus :: Lens' DescribeOptionGroupOptionsResponse Int
dogorrsResponseStatus = lens _dogorrsResponseStatus (\s a -> s {_dogorrsResponseStatus = a})

instance NFData DescribeOptionGroupOptionsResponse
