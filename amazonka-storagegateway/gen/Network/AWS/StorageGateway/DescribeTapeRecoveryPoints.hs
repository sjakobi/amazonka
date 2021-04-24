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
-- Module      : Network.AWS.StorageGateway.DescribeTapeRecoveryPoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of virtual tape recovery points that are available for the specified tape gateway.
--
--
-- A recovery point is a point-in-time view of a virtual tape at which all the data on the virtual tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway. This operation is only supported in the tape gateway type.
--
--
-- This operation returns paginated results.
module Network.AWS.StorageGateway.DescribeTapeRecoveryPoints
  ( -- * Creating a Request
    describeTapeRecoveryPoints,
    DescribeTapeRecoveryPoints,

    -- * Request Lenses
    dtrpLimit,
    dtrpMarker,
    dtrpGatewayARN,

    -- * Destructuring the Response
    describeTapeRecoveryPointsResponse,
    DescribeTapeRecoveryPointsResponse,

    -- * Response Lenses
    dtrprrsTapeRecoveryPointInfos,
    dtrprrsGatewayARN,
    dtrprrsMarker,
    dtrprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | DescribeTapeRecoveryPointsInput
--
--
--
-- /See:/ 'describeTapeRecoveryPoints' smart constructor.
data DescribeTapeRecoveryPoints = DescribeTapeRecoveryPoints'
  { _dtrpLimit ::
      !(Maybe Nat),
    _dtrpMarker ::
      !(Maybe Text),
    _dtrpGatewayARN ::
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

-- | Creates a value of 'DescribeTapeRecoveryPoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrpLimit' - Specifies that the number of virtual tape recovery points that are described be limited to the specified number.
--
-- * 'dtrpMarker' - An opaque string that indicates the position at which to begin describing the virtual tape recovery points.
--
-- * 'dtrpGatewayARN' - Undocumented member.
describeTapeRecoveryPoints ::
  -- | 'dtrpGatewayARN'
  Text ->
  DescribeTapeRecoveryPoints
describeTapeRecoveryPoints pGatewayARN_ =
  DescribeTapeRecoveryPoints'
    { _dtrpLimit = Nothing,
      _dtrpMarker = Nothing,
      _dtrpGatewayARN = pGatewayARN_
    }

-- | Specifies that the number of virtual tape recovery points that are described be limited to the specified number.
dtrpLimit :: Lens' DescribeTapeRecoveryPoints (Maybe Natural)
dtrpLimit = lens _dtrpLimit (\s a -> s {_dtrpLimit = a}) . mapping _Nat

-- | An opaque string that indicates the position at which to begin describing the virtual tape recovery points.
dtrpMarker :: Lens' DescribeTapeRecoveryPoints (Maybe Text)
dtrpMarker = lens _dtrpMarker (\s a -> s {_dtrpMarker = a})

-- | Undocumented member.
dtrpGatewayARN :: Lens' DescribeTapeRecoveryPoints Text
dtrpGatewayARN = lens _dtrpGatewayARN (\s a -> s {_dtrpGatewayARN = a})

instance AWSPager DescribeTapeRecoveryPoints where
  page rq rs
    | stop (rs ^. dtrprrsMarker) = Nothing
    | stop (rs ^. dtrprrsTapeRecoveryPointInfos) =
      Nothing
    | otherwise =
      Just $ rq & dtrpMarker .~ rs ^. dtrprrsMarker

instance AWSRequest DescribeTapeRecoveryPoints where
  type
    Rs DescribeTapeRecoveryPoints =
      DescribeTapeRecoveryPointsResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeTapeRecoveryPointsResponse'
            <$> (x .?> "TapeRecoveryPointInfos" .!@ mempty)
            <*> (x .?> "GatewayARN")
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTapeRecoveryPoints

instance NFData DescribeTapeRecoveryPoints

instance ToHeaders DescribeTapeRecoveryPoints where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeTapeRecoveryPoints" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTapeRecoveryPoints where
  toJSON DescribeTapeRecoveryPoints' {..} =
    object
      ( catMaybes
          [ ("Limit" .=) <$> _dtrpLimit,
            ("Marker" .=) <$> _dtrpMarker,
            Just ("GatewayARN" .= _dtrpGatewayARN)
          ]
      )

instance ToPath DescribeTapeRecoveryPoints where
  toPath = const "/"

instance ToQuery DescribeTapeRecoveryPoints where
  toQuery = const mempty

-- | DescribeTapeRecoveryPointsOutput
--
--
--
-- /See:/ 'describeTapeRecoveryPointsResponse' smart constructor.
data DescribeTapeRecoveryPointsResponse = DescribeTapeRecoveryPointsResponse'
  { _dtrprrsTapeRecoveryPointInfos ::
      !( Maybe
           [TapeRecoveryPointInfo]
       ),
    _dtrprrsGatewayARN ::
      !( Maybe
           Text
       ),
    _dtrprrsMarker ::
      !( Maybe
           Text
       ),
    _dtrprrsResponseStatus ::
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

-- | Creates a value of 'DescribeTapeRecoveryPointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrprrsTapeRecoveryPointInfos' - An array of TapeRecoveryPointInfos that are available for the specified gateway.
--
-- * 'dtrprrsGatewayARN' - Undocumented member.
--
-- * 'dtrprrsMarker' - An opaque string that indicates the position at which the virtual tape recovery points that were listed for description ended. Use this marker in your next request to list the next set of virtual tape recovery points in the list. If there are no more recovery points to describe, this field does not appear in the response.
--
-- * 'dtrprrsResponseStatus' - -- | The response status code.
describeTapeRecoveryPointsResponse ::
  -- | 'dtrprrsResponseStatus'
  Int ->
  DescribeTapeRecoveryPointsResponse
describeTapeRecoveryPointsResponse pResponseStatus_ =
  DescribeTapeRecoveryPointsResponse'
    { _dtrprrsTapeRecoveryPointInfos =
        Nothing,
      _dtrprrsGatewayARN = Nothing,
      _dtrprrsMarker = Nothing,
      _dtrprrsResponseStatus =
        pResponseStatus_
    }

-- | An array of TapeRecoveryPointInfos that are available for the specified gateway.
dtrprrsTapeRecoveryPointInfos :: Lens' DescribeTapeRecoveryPointsResponse [TapeRecoveryPointInfo]
dtrprrsTapeRecoveryPointInfos = lens _dtrprrsTapeRecoveryPointInfos (\s a -> s {_dtrprrsTapeRecoveryPointInfos = a}) . _Default . _Coerce

-- | Undocumented member.
dtrprrsGatewayARN :: Lens' DescribeTapeRecoveryPointsResponse (Maybe Text)
dtrprrsGatewayARN = lens _dtrprrsGatewayARN (\s a -> s {_dtrprrsGatewayARN = a})

-- | An opaque string that indicates the position at which the virtual tape recovery points that were listed for description ended. Use this marker in your next request to list the next set of virtual tape recovery points in the list. If there are no more recovery points to describe, this field does not appear in the response.
dtrprrsMarker :: Lens' DescribeTapeRecoveryPointsResponse (Maybe Text)
dtrprrsMarker = lens _dtrprrsMarker (\s a -> s {_dtrprrsMarker = a})

-- | -- | The response status code.
dtrprrsResponseStatus :: Lens' DescribeTapeRecoveryPointsResponse Int
dtrprrsResponseStatus = lens _dtrprrsResponseStatus (\s a -> s {_dtrprrsResponseStatus = a})

instance NFData DescribeTapeRecoveryPointsResponse
