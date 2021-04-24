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
-- Module      : Network.AWS.ELBv2.DescribeListenerCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the default certificate and the certificate list for the specified HTTPS or TLS listener.
--
--
-- If the default certificate is also in the certificate list, it appears twice in the results (once with @IsDefault@ set to true and once with @IsDefault@ set to false).
--
-- For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#https-listener-certificates SSL certificates> in the /Application Load Balancers Guide/ or <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#tls-listener-certificate Server certificates> in the /Network Load Balancers Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.ELBv2.DescribeListenerCertificates
  ( -- * Creating a Request
    describeListenerCertificates,
    DescribeListenerCertificates,

    -- * Request Lenses
    dlcPageSize,
    dlcMarker,
    dlcListenerARN,

    -- * Destructuring the Response
    describeListenerCertificatesResponse,
    DescribeListenerCertificatesResponse,

    -- * Response Lenses
    dlcrrsNextMarker,
    dlcrrsCertificates,
    dlcrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeListenerCertificates' smart constructor.
data DescribeListenerCertificates = DescribeListenerCertificates'
  { _dlcPageSize ::
      !(Maybe Nat),
    _dlcMarker ::
      !(Maybe Text),
    _dlcListenerARN ::
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

-- | Creates a value of 'DescribeListenerCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlcPageSize' - The maximum number of results to return with this call.
--
-- * 'dlcMarker' - The marker for the next set of results. (You received this marker from a previous call.)
--
-- * 'dlcListenerARN' - The Amazon Resource Names (ARN) of the listener.
describeListenerCertificates ::
  -- | 'dlcListenerARN'
  Text ->
  DescribeListenerCertificates
describeListenerCertificates pListenerARN_ =
  DescribeListenerCertificates'
    { _dlcPageSize =
        Nothing,
      _dlcMarker = Nothing,
      _dlcListenerARN = pListenerARN_
    }

-- | The maximum number of results to return with this call.
dlcPageSize :: Lens' DescribeListenerCertificates (Maybe Natural)
dlcPageSize = lens _dlcPageSize (\s a -> s {_dlcPageSize = a}) . mapping _Nat

-- | The marker for the next set of results. (You received this marker from a previous call.)
dlcMarker :: Lens' DescribeListenerCertificates (Maybe Text)
dlcMarker = lens _dlcMarker (\s a -> s {_dlcMarker = a})

-- | The Amazon Resource Names (ARN) of the listener.
dlcListenerARN :: Lens' DescribeListenerCertificates Text
dlcListenerARN = lens _dlcListenerARN (\s a -> s {_dlcListenerARN = a})

instance AWSPager DescribeListenerCertificates where
  page rq rs
    | stop (rs ^. dlcrrsNextMarker) = Nothing
    | stop (rs ^. dlcrrsCertificates) = Nothing
    | otherwise =
      Just $ rq & dlcMarker .~ rs ^. dlcrrsNextMarker

instance AWSRequest DescribeListenerCertificates where
  type
    Rs DescribeListenerCertificates =
      DescribeListenerCertificatesResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "DescribeListenerCertificatesResult"
      ( \s h x ->
          DescribeListenerCertificatesResponse'
            <$> (x .@? "NextMarker")
            <*> ( x .@? "Certificates" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeListenerCertificates

instance NFData DescribeListenerCertificates

instance ToHeaders DescribeListenerCertificates where
  toHeaders = const mempty

instance ToPath DescribeListenerCertificates where
  toPath = const "/"

instance ToQuery DescribeListenerCertificates where
  toQuery DescribeListenerCertificates' {..} =
    mconcat
      [ "Action"
          =: ("DescribeListenerCertificates" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "PageSize" =: _dlcPageSize,
        "Marker" =: _dlcMarker,
        "ListenerArn" =: _dlcListenerARN
      ]

-- | /See:/ 'describeListenerCertificatesResponse' smart constructor.
data DescribeListenerCertificatesResponse = DescribeListenerCertificatesResponse'
  { _dlcrrsNextMarker ::
      !( Maybe
           Text
       ),
    _dlcrrsCertificates ::
      !( Maybe
           [Certificate]
       ),
    _dlcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeListenerCertificatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlcrrsNextMarker' - If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
--
-- * 'dlcrrsCertificates' - Information about the certificates.
--
-- * 'dlcrrsResponseStatus' - -- | The response status code.
describeListenerCertificatesResponse ::
  -- | 'dlcrrsResponseStatus'
  Int ->
  DescribeListenerCertificatesResponse
describeListenerCertificatesResponse pResponseStatus_ =
  DescribeListenerCertificatesResponse'
    { _dlcrrsNextMarker =
        Nothing,
      _dlcrrsCertificates = Nothing,
      _dlcrrsResponseStatus =
        pResponseStatus_
    }

-- | If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
dlcrrsNextMarker :: Lens' DescribeListenerCertificatesResponse (Maybe Text)
dlcrrsNextMarker = lens _dlcrrsNextMarker (\s a -> s {_dlcrrsNextMarker = a})

-- | Information about the certificates.
dlcrrsCertificates :: Lens' DescribeListenerCertificatesResponse [Certificate]
dlcrrsCertificates = lens _dlcrrsCertificates (\s a -> s {_dlcrrsCertificates = a}) . _Default . _Coerce

-- | -- | The response status code.
dlcrrsResponseStatus :: Lens' DescribeListenerCertificatesResponse Int
dlcrrsResponseStatus = lens _dlcrrsResponseStatus (\s a -> s {_dlcrrsResponseStatus = a})

instance NFData DescribeListenerCertificatesResponse
