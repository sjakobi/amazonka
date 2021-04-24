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
-- Module      : Network.AWS.RDS.DescribeCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the set of CA certificates provided by Amazon RDS for this AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeCertificates
  ( -- * Creating a Request
    describeCertificates,
    DescribeCertificates,

    -- * Request Lenses
    dcCertificateIdentifier,
    dcFilters,
    dcMarker,
    dcMaxRecords,

    -- * Destructuring the Response
    describeCertificatesResponse,
    DescribeCertificatesResponse,

    -- * Response Lenses
    dcrrsCertificates,
    dcrrsMarker,
    dcrrsResponseStatus,
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
-- /See:/ 'describeCertificates' smart constructor.
data DescribeCertificates = DescribeCertificates'
  { _dcCertificateIdentifier ::
      !(Maybe Text),
    _dcFilters ::
      !(Maybe [Filter]),
    _dcMarker :: !(Maybe Text),
    _dcMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcCertificateIdentifier' - The user-supplied certificate identifier. If this parameter is specified, information for only the identified certificate is returned. This parameter isn't case-sensitive. Constraints:     * Must match an existing CertificateIdentifier.
--
-- * 'dcFilters' - This parameter isn't currently supported.
--
-- * 'dcMarker' - An optional pagination token provided by a previous @DescribeCertificates@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dcMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeCertificates ::
  DescribeCertificates
describeCertificates =
  DescribeCertificates'
    { _dcCertificateIdentifier =
        Nothing,
      _dcFilters = Nothing,
      _dcMarker = Nothing,
      _dcMaxRecords = Nothing
    }

-- | The user-supplied certificate identifier. If this parameter is specified, information for only the identified certificate is returned. This parameter isn't case-sensitive. Constraints:     * Must match an existing CertificateIdentifier.
dcCertificateIdentifier :: Lens' DescribeCertificates (Maybe Text)
dcCertificateIdentifier = lens _dcCertificateIdentifier (\s a -> s {_dcCertificateIdentifier = a})

-- | This parameter isn't currently supported.
dcFilters :: Lens' DescribeCertificates [Filter]
dcFilters = lens _dcFilters (\s a -> s {_dcFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeCertificates@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dcMarker :: Lens' DescribeCertificates (Maybe Text)
dcMarker = lens _dcMarker (\s a -> s {_dcMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
dcMaxRecords :: Lens' DescribeCertificates (Maybe Int)
dcMaxRecords = lens _dcMaxRecords (\s a -> s {_dcMaxRecords = a})

instance AWSPager DescribeCertificates where
  page rq rs
    | stop (rs ^. dcrrsMarker) = Nothing
    | stop (rs ^. dcrrsCertificates) = Nothing
    | otherwise =
      Just $ rq & dcMarker .~ rs ^. dcrrsMarker

instance AWSRequest DescribeCertificates where
  type
    Rs DescribeCertificates =
      DescribeCertificatesResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeCertificatesResult"
      ( \s h x ->
          DescribeCertificatesResponse'
            <$> ( x .@? "Certificates" .!@ mempty
                    >>= may (parseXMLList "Certificate")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCertificates

instance NFData DescribeCertificates

instance ToHeaders DescribeCertificates where
  toHeaders = const mempty

instance ToPath DescribeCertificates where
  toPath = const "/"

instance ToQuery DescribeCertificates where
  toQuery DescribeCertificates' {..} =
    mconcat
      [ "Action" =: ("DescribeCertificates" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "CertificateIdentifier" =: _dcCertificateIdentifier,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _dcFilters),
        "Marker" =: _dcMarker,
        "MaxRecords" =: _dcMaxRecords
      ]

-- | Data returned by the __DescribeCertificates__ action.
--
--
--
-- /See:/ 'describeCertificatesResponse' smart constructor.
data DescribeCertificatesResponse = DescribeCertificatesResponse'
  { _dcrrsCertificates ::
      !( Maybe
           [Certificate]
       ),
    _dcrrsMarker ::
      !(Maybe Text),
    _dcrrsResponseStatus ::
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
-- * 'dcrrsCertificates' - The list of @Certificate@ objects for the AWS account.
--
-- * 'dcrrsMarker' - An optional pagination token provided by a previous @DescribeCertificates@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
describeCertificatesResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DescribeCertificatesResponse
describeCertificatesResponse pResponseStatus_ =
  DescribeCertificatesResponse'
    { _dcrrsCertificates =
        Nothing,
      _dcrrsMarker = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | The list of @Certificate@ objects for the AWS account.
dcrrsCertificates :: Lens' DescribeCertificatesResponse [Certificate]
dcrrsCertificates = lens _dcrrsCertificates (\s a -> s {_dcrrsCertificates = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeCertificates@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dcrrsMarker :: Lens' DescribeCertificatesResponse (Maybe Text)
dcrrsMarker = lens _dcrrsMarker (\s a -> s {_dcrrsMarker = a})

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeCertificatesResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DescribeCertificatesResponse
