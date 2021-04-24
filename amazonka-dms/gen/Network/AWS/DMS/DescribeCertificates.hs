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
-- Module      : Network.AWS.DMS.DescribeCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a description of the certificate.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeCertificates
  ( -- * Creating a Request
    describeCertificates,
    DescribeCertificates,

    -- * Request Lenses
    dcFilters,
    dcMarker,
    dcMaxRecords,

    -- * Destructuring the Response
    describeCertificatesResponse,
    DescribeCertificatesResponse,

    -- * Response Lenses
    dcrcrsCertificates,
    dcrcrsMarker,
    dcrcrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCertificates' smart constructor.
data DescribeCertificates = DescribeCertificates'
  { _dcFilters ::
      !(Maybe [Filter]),
    _dcMarker :: !(Maybe Text),
    _dcMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcFilters' - Filters applied to the certificates described in the form of key-value pairs.
--
-- * 'dcMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dcMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 10
describeCertificates ::
  DescribeCertificates
describeCertificates =
  DescribeCertificates'
    { _dcFilters = Nothing,
      _dcMarker = Nothing,
      _dcMaxRecords = Nothing
    }

-- | Filters applied to the certificates described in the form of key-value pairs.
dcFilters :: Lens' DescribeCertificates [Filter]
dcFilters = lens _dcFilters (\s a -> s {_dcFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dcMarker :: Lens' DescribeCertificates (Maybe Text)
dcMarker = lens _dcMarker (\s a -> s {_dcMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 10
dcMaxRecords :: Lens' DescribeCertificates (Maybe Int)
dcMaxRecords = lens _dcMaxRecords (\s a -> s {_dcMaxRecords = a})

instance AWSPager DescribeCertificates where
  page rq rs
    | stop (rs ^. dcrcrsMarker) = Nothing
    | stop (rs ^. dcrcrsCertificates) = Nothing
    | otherwise =
      Just $ rq & dcMarker .~ rs ^. dcrcrsMarker

instance AWSRequest DescribeCertificates where
  type
    Rs DescribeCertificates =
      DescribeCertificatesResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeCertificatesResponse'
            <$> (x .?> "Certificates" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCertificates

instance NFData DescribeCertificates

instance ToHeaders DescribeCertificates where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeCertificates" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCertificates where
  toJSON DescribeCertificates' {..} =
    object
      ( catMaybes
          [ ("Filters" .=) <$> _dcFilters,
            ("Marker" .=) <$> _dcMarker,
            ("MaxRecords" .=) <$> _dcMaxRecords
          ]
      )

instance ToPath DescribeCertificates where
  toPath = const "/"

instance ToQuery DescribeCertificates where
  toQuery = const mempty

-- | /See:/ 'describeCertificatesResponse' smart constructor.
data DescribeCertificatesResponse = DescribeCertificatesResponse'
  { _dcrcrsCertificates ::
      !( Maybe
           [Certificate]
       ),
    _dcrcrsMarker ::
      !(Maybe Text),
    _dcrcrsResponseStatus ::
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

-- | Creates a value of 'DescribeCertificatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrcrsCertificates' - The Secure Sockets Layer (SSL) certificates associated with the replication instance.
--
-- * 'dcrcrsMarker' - The pagination token.
--
-- * 'dcrcrsResponseStatus' - -- | The response status code.
describeCertificatesResponse ::
  -- | 'dcrcrsResponseStatus'
  Int ->
  DescribeCertificatesResponse
describeCertificatesResponse pResponseStatus_ =
  DescribeCertificatesResponse'
    { _dcrcrsCertificates =
        Nothing,
      _dcrcrsMarker = Nothing,
      _dcrcrsResponseStatus = pResponseStatus_
    }

-- | The Secure Sockets Layer (SSL) certificates associated with the replication instance.
dcrcrsCertificates :: Lens' DescribeCertificatesResponse [Certificate]
dcrcrsCertificates = lens _dcrcrsCertificates (\s a -> s {_dcrcrsCertificates = a}) . _Default . _Coerce

-- | The pagination token.
dcrcrsMarker :: Lens' DescribeCertificatesResponse (Maybe Text)
dcrcrsMarker = lens _dcrcrsMarker (\s a -> s {_dcrcrsMarker = a})

-- | -- | The response status code.
dcrcrsResponseStatus :: Lens' DescribeCertificatesResponse Int
dcrcrsResponseStatus = lens _dcrcrsResponseStatus (\s a -> s {_dcrcrsResponseStatus = a})

instance NFData DescribeCertificatesResponse
