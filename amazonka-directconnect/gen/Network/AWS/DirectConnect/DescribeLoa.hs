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
-- Module      : Network.AWS.DirectConnect.DescribeLoa
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the LOA-CFA for a connection, interconnect, or link aggregation group (LAG).
--
--
-- The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see <https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html Requesting Cross Connects at AWS Direct Connect Locations> in the /AWS Direct Connect User Guide/ .
module Network.AWS.DirectConnect.DescribeLoa
  ( -- * Creating a Request
    describeLoa,
    DescribeLoa,

    -- * Request Lenses
    dlProviderName,
    dlLoaContentType,
    dlConnectionId,

    -- * Destructuring the Response
    describeLoaResponse,
    DescribeLoaResponse,

    -- * Response Lenses
    dlrrsLoaContent,
    dlrrsLoaContentType,
    dlrrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLoa' smart constructor.
data DescribeLoa = DescribeLoa'
  { _dlProviderName ::
      !(Maybe Text),
    _dlLoaContentType :: !(Maybe LoaContentType),
    _dlConnectionId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeLoa' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlProviderName' - The name of the service provider who establishes connectivity on your behalf. If you specify this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.
--
-- * 'dlLoaContentType' - The standard media type for the LOA-CFA document. The only supported value is application/pdf.
--
-- * 'dlConnectionId' - The ID of a connection, LAG, or interconnect.
describeLoa ::
  -- | 'dlConnectionId'
  Text ->
  DescribeLoa
describeLoa pConnectionId_ =
  DescribeLoa'
    { _dlProviderName = Nothing,
      _dlLoaContentType = Nothing,
      _dlConnectionId = pConnectionId_
    }

-- | The name of the service provider who establishes connectivity on your behalf. If you specify this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.
dlProviderName :: Lens' DescribeLoa (Maybe Text)
dlProviderName = lens _dlProviderName (\s a -> s {_dlProviderName = a})

-- | The standard media type for the LOA-CFA document. The only supported value is application/pdf.
dlLoaContentType :: Lens' DescribeLoa (Maybe LoaContentType)
dlLoaContentType = lens _dlLoaContentType (\s a -> s {_dlLoaContentType = a})

-- | The ID of a connection, LAG, or interconnect.
dlConnectionId :: Lens' DescribeLoa Text
dlConnectionId = lens _dlConnectionId (\s a -> s {_dlConnectionId = a})

instance AWSRequest DescribeLoa where
  type Rs DescribeLoa = DescribeLoaResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DescribeLoaResponse'
            <$> (x .?> "loaContent")
            <*> (x .?> "loaContentType")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLoa

instance NFData DescribeLoa

instance ToHeaders DescribeLoa where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OvertureService.DescribeLoa" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeLoa where
  toJSON DescribeLoa' {..} =
    object
      ( catMaybes
          [ ("providerName" .=) <$> _dlProviderName,
            ("loaContentType" .=) <$> _dlLoaContentType,
            Just ("connectionId" .= _dlConnectionId)
          ]
      )

instance ToPath DescribeLoa where
  toPath = const "/"

instance ToQuery DescribeLoa where
  toQuery = const mempty

-- | Information about a Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.
--
--
--
-- /See:/ 'describeLoaResponse' smart constructor.
data DescribeLoaResponse = DescribeLoaResponse'
  { _dlrrsLoaContent ::
      !(Maybe Base64),
    _dlrrsLoaContentType ::
      !(Maybe LoaContentType),
    _dlrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeLoaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrrsLoaContent' - The binary contents of the LOA-CFA document.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'dlrrsLoaContentType' - The standard media type for the LOA-CFA document. The only supported value is application/pdf.
--
-- * 'dlrrsResponseStatus' - -- | The response status code.
describeLoaResponse ::
  -- | 'dlrrsResponseStatus'
  Int ->
  DescribeLoaResponse
describeLoaResponse pResponseStatus_ =
  DescribeLoaResponse'
    { _dlrrsLoaContent = Nothing,
      _dlrrsLoaContentType = Nothing,
      _dlrrsResponseStatus = pResponseStatus_
    }

-- | The binary contents of the LOA-CFA document.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
dlrrsLoaContent :: Lens' DescribeLoaResponse (Maybe ByteString)
dlrrsLoaContent = lens _dlrrsLoaContent (\s a -> s {_dlrrsLoaContent = a}) . mapping _Base64

-- | The standard media type for the LOA-CFA document. The only supported value is application/pdf.
dlrrsLoaContentType :: Lens' DescribeLoaResponse (Maybe LoaContentType)
dlrrsLoaContentType = lens _dlrrsLoaContentType (\s a -> s {_dlrrsLoaContentType = a})

-- | -- | The response status code.
dlrrsResponseStatus :: Lens' DescribeLoaResponse Int
dlrrsResponseStatus = lens _dlrrsResponseStatus (\s a -> s {_dlrrsResponseStatus = a})

instance NFData DescribeLoaResponse
