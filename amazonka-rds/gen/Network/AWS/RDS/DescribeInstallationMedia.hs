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
-- Module      : Network.AWS.RDS.DescribeInstallationMedia
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the available installation media for a DB engine that requires an on-premises customer provided license, such as Microsoft SQL Server.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeInstallationMedia
  ( -- * Creating a Request
    describeInstallationMedia,
    DescribeInstallationMedia,

    -- * Request Lenses
    dimiInstallationMediaId,
    dimiFilters,
    dimiMarker,
    dimiMaxRecords,

    -- * Destructuring the Response
    describeInstallationMediaResponse,
    DescribeInstallationMediaResponse,

    -- * Response Lenses
    dimrrsInstallationMedia,
    dimrrsMarker,
    dimrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeInstallationMedia' smart constructor.
data DescribeInstallationMedia = DescribeInstallationMedia'
  { _dimiInstallationMediaId ::
      !(Maybe Text),
    _dimiFilters ::
      !(Maybe [Filter]),
    _dimiMarker ::
      !(Maybe Text),
    _dimiMaxRecords ::
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

-- | Creates a value of 'DescribeInstallationMedia' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dimiInstallationMediaId' - The installation medium ID.
--
-- * 'dimiFilters' - A filter that specifies one or more installation media to describe. Supported filters include the following:     * @custom-availability-zone-id@ - Accepts custom Availability Zone (AZ) identifiers. The results list includes information about only the custom AZs identified by these identifiers.     * @engine@ - Accepts database engines. The results list includes information about only the database engines identified by these identifiers. For more information about the valid engines for installation media, see 'ImportInstallationMedia' .
--
-- * 'dimiMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dimiMaxRecords' - An optional pagination token provided by a previous DescribeInstallationMedia request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
describeInstallationMedia ::
  DescribeInstallationMedia
describeInstallationMedia =
  DescribeInstallationMedia'
    { _dimiInstallationMediaId =
        Nothing,
      _dimiFilters = Nothing,
      _dimiMarker = Nothing,
      _dimiMaxRecords = Nothing
    }

-- | The installation medium ID.
dimiInstallationMediaId :: Lens' DescribeInstallationMedia (Maybe Text)
dimiInstallationMediaId = lens _dimiInstallationMediaId (\s a -> s {_dimiInstallationMediaId = a})

-- | A filter that specifies one or more installation media to describe. Supported filters include the following:     * @custom-availability-zone-id@ - Accepts custom Availability Zone (AZ) identifiers. The results list includes information about only the custom AZs identified by these identifiers.     * @engine@ - Accepts database engines. The results list includes information about only the database engines identified by these identifiers. For more information about the valid engines for installation media, see 'ImportInstallationMedia' .
dimiFilters :: Lens' DescribeInstallationMedia [Filter]
dimiFilters = lens _dimiFilters (\s a -> s {_dimiFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dimiMarker :: Lens' DescribeInstallationMedia (Maybe Text)
dimiMarker = lens _dimiMarker (\s a -> s {_dimiMarker = a})

-- | An optional pagination token provided by a previous DescribeInstallationMedia request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dimiMaxRecords :: Lens' DescribeInstallationMedia (Maybe Int)
dimiMaxRecords = lens _dimiMaxRecords (\s a -> s {_dimiMaxRecords = a})

instance AWSPager DescribeInstallationMedia where
  page rq rs
    | stop (rs ^. dimrrsMarker) = Nothing
    | stop (rs ^. dimrrsInstallationMedia) = Nothing
    | otherwise =
      Just $ rq & dimiMarker .~ rs ^. dimrrsMarker

instance AWSRequest DescribeInstallationMedia where
  type
    Rs DescribeInstallationMedia =
      DescribeInstallationMediaResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeInstallationMediaResult"
      ( \s h x ->
          DescribeInstallationMediaResponse'
            <$> ( x .@? "InstallationMedia" .!@ mempty
                    >>= may (parseXMLList "InstallationMedia")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInstallationMedia

instance NFData DescribeInstallationMedia

instance ToHeaders DescribeInstallationMedia where
  toHeaders = const mempty

instance ToPath DescribeInstallationMedia where
  toPath = const "/"

instance ToQuery DescribeInstallationMedia where
  toQuery DescribeInstallationMedia' {..} =
    mconcat
      [ "Action"
          =: ("DescribeInstallationMedia" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "InstallationMediaId" =: _dimiInstallationMediaId,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _dimiFilters),
        "Marker" =: _dimiMarker,
        "MaxRecords" =: _dimiMaxRecords
      ]

-- | /See:/ 'describeInstallationMediaResponse' smart constructor.
data DescribeInstallationMediaResponse = DescribeInstallationMediaResponse'
  { _dimrrsInstallationMedia ::
      !( Maybe
           [InstallationMedia]
       ),
    _dimrrsMarker ::
      !( Maybe
           Text
       ),
    _dimrrsResponseStatus ::
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

-- | Creates a value of 'DescribeInstallationMediaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dimrrsInstallationMedia' - The list of 'InstallationMedia' objects for the AWS account.
--
-- * 'dimrrsMarker' - An optional pagination token provided by a previous 'DescribeInstallationMedia' request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dimrrsResponseStatus' - -- | The response status code.
describeInstallationMediaResponse ::
  -- | 'dimrrsResponseStatus'
  Int ->
  DescribeInstallationMediaResponse
describeInstallationMediaResponse pResponseStatus_ =
  DescribeInstallationMediaResponse'
    { _dimrrsInstallationMedia =
        Nothing,
      _dimrrsMarker = Nothing,
      _dimrrsResponseStatus = pResponseStatus_
    }

-- | The list of 'InstallationMedia' objects for the AWS account.
dimrrsInstallationMedia :: Lens' DescribeInstallationMediaResponse [InstallationMedia]
dimrrsInstallationMedia = lens _dimrrsInstallationMedia (\s a -> s {_dimrrsInstallationMedia = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous 'DescribeInstallationMedia' request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dimrrsMarker :: Lens' DescribeInstallationMediaResponse (Maybe Text)
dimrrsMarker = lens _dimrrsMarker (\s a -> s {_dimrrsMarker = a})

-- | -- | The response status code.
dimrrsResponseStatus :: Lens' DescribeInstallationMediaResponse Int
dimrrsResponseStatus = lens _dimrrsResponseStatus (\s a -> s {_dimrrsResponseStatus = a})

instance NFData DescribeInstallationMediaResponse
