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
-- Module      : Network.AWS.StorageGateway.ListFileShares
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the file shares for a specific file gateway, or the list of file shares that belong to the calling user account. This operation is only supported for file gateways.
--
--
--
-- This operation returns paginated results.
module Network.AWS.StorageGateway.ListFileShares
  ( -- * Creating a Request
    listFileShares,
    ListFileShares,

    -- * Request Lenses
    lfsLimit,
    lfsGatewayARN,
    lfsMarker,

    -- * Destructuring the Response
    listFileSharesResponse,
    ListFileSharesResponse,

    -- * Response Lenses
    lfsrrsNextMarker,
    lfsrrsFileShareInfoList,
    lfsrrsMarker,
    lfsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | ListFileShareInput
--
--
--
-- /See:/ 'listFileShares' smart constructor.
data ListFileShares = ListFileShares'
  { _lfsLimit ::
      !(Maybe Nat),
    _lfsGatewayARN :: !(Maybe Text),
    _lfsMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFileShares' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfsLimit' - The maximum number of file shares to return in the response. The value must be an integer with a value greater than zero. Optional.
--
-- * 'lfsGatewayARN' - The Amazon Resource Name (ARN) of the gateway whose file shares you want to list. If this field is not present, all file shares under your account are listed.
--
-- * 'lfsMarker' - Opaque pagination token returned from a previous ListFileShares operation. If present, @Marker@ specifies where to continue the list from after a previous call to ListFileShares. Optional.
listFileShares ::
  ListFileShares
listFileShares =
  ListFileShares'
    { _lfsLimit = Nothing,
      _lfsGatewayARN = Nothing,
      _lfsMarker = Nothing
    }

-- | The maximum number of file shares to return in the response. The value must be an integer with a value greater than zero. Optional.
lfsLimit :: Lens' ListFileShares (Maybe Natural)
lfsLimit = lens _lfsLimit (\s a -> s {_lfsLimit = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the gateway whose file shares you want to list. If this field is not present, all file shares under your account are listed.
lfsGatewayARN :: Lens' ListFileShares (Maybe Text)
lfsGatewayARN = lens _lfsGatewayARN (\s a -> s {_lfsGatewayARN = a})

-- | Opaque pagination token returned from a previous ListFileShares operation. If present, @Marker@ specifies where to continue the list from after a previous call to ListFileShares. Optional.
lfsMarker :: Lens' ListFileShares (Maybe Text)
lfsMarker = lens _lfsMarker (\s a -> s {_lfsMarker = a})

instance AWSPager ListFileShares where
  page rq rs
    | stop (rs ^. lfsrrsNextMarker) = Nothing
    | stop (rs ^. lfsrrsFileShareInfoList) = Nothing
    | otherwise =
      Just $ rq & lfsMarker .~ rs ^. lfsrrsNextMarker

instance AWSRequest ListFileShares where
  type Rs ListFileShares = ListFileSharesResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          ListFileSharesResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "FileShareInfoList" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListFileShares

instance NFData ListFileShares

instance ToHeaders ListFileShares where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.ListFileShares" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListFileShares where
  toJSON ListFileShares' {..} =
    object
      ( catMaybes
          [ ("Limit" .=) <$> _lfsLimit,
            ("GatewayARN" .=) <$> _lfsGatewayARN,
            ("Marker" .=) <$> _lfsMarker
          ]
      )

instance ToPath ListFileShares where
  toPath = const "/"

instance ToQuery ListFileShares where
  toQuery = const mempty

-- | ListFileShareOutput
--
--
--
-- /See:/ 'listFileSharesResponse' smart constructor.
data ListFileSharesResponse = ListFileSharesResponse'
  { _lfsrrsNextMarker ::
      !(Maybe Text),
    _lfsrrsFileShareInfoList ::
      !(Maybe [FileShareInfo]),
    _lfsrrsMarker ::
      !(Maybe Text),
    _lfsrrsResponseStatus ::
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

-- | Creates a value of 'ListFileSharesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfsrrsNextMarker' - If a value is present, there are more file shares to return. In a subsequent request, use @NextMarker@ as the value for @Marker@ to retrieve the next set of file shares.
--
-- * 'lfsrrsFileShareInfoList' - An array of information about the file gateway's file shares.
--
-- * 'lfsrrsMarker' - If the request includes @Marker@ , the response returns that value in this field.
--
-- * 'lfsrrsResponseStatus' - -- | The response status code.
listFileSharesResponse ::
  -- | 'lfsrrsResponseStatus'
  Int ->
  ListFileSharesResponse
listFileSharesResponse pResponseStatus_ =
  ListFileSharesResponse'
    { _lfsrrsNextMarker =
        Nothing,
      _lfsrrsFileShareInfoList = Nothing,
      _lfsrrsMarker = Nothing,
      _lfsrrsResponseStatus = pResponseStatus_
    }

-- | If a value is present, there are more file shares to return. In a subsequent request, use @NextMarker@ as the value for @Marker@ to retrieve the next set of file shares.
lfsrrsNextMarker :: Lens' ListFileSharesResponse (Maybe Text)
lfsrrsNextMarker = lens _lfsrrsNextMarker (\s a -> s {_lfsrrsNextMarker = a})

-- | An array of information about the file gateway's file shares.
lfsrrsFileShareInfoList :: Lens' ListFileSharesResponse [FileShareInfo]
lfsrrsFileShareInfoList = lens _lfsrrsFileShareInfoList (\s a -> s {_lfsrrsFileShareInfoList = a}) . _Default . _Coerce

-- | If the request includes @Marker@ , the response returns that value in this field.
lfsrrsMarker :: Lens' ListFileSharesResponse (Maybe Text)
lfsrrsMarker = lens _lfsrrsMarker (\s a -> s {_lfsrrsMarker = a})

-- | -- | The response status code.
lfsrrsResponseStatus :: Lens' ListFileSharesResponse Int
lfsrrsResponseStatus = lens _lfsrrsResponseStatus (\s a -> s {_lfsrrsResponseStatus = a})

instance NFData ListFileSharesResponse
