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
-- Module      : Network.AWS.StorageGateway.RetrieveTapeRecoveryPoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the recovery point for the specified virtual tape. This operation is only supported in the tape gateway type.
--
--
-- A recovery point is a point in time view of a virtual tape at which all the data on the tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway.
module Network.AWS.StorageGateway.RetrieveTapeRecoveryPoint
  ( -- * Creating a Request
    retrieveTapeRecoveryPoint,
    RetrieveTapeRecoveryPoint,

    -- * Request Lenses
    rtrpTapeARN,
    rtrpGatewayARN,

    -- * Destructuring the Response
    retrieveTapeRecoveryPointResponse,
    RetrieveTapeRecoveryPointResponse,

    -- * Response Lenses
    rtrprrsTapeARN,
    rtrprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | RetrieveTapeRecoveryPointInput
--
--
--
-- /See:/ 'retrieveTapeRecoveryPoint' smart constructor.
data RetrieveTapeRecoveryPoint = RetrieveTapeRecoveryPoint'
  { _rtrpTapeARN ::
      !Text,
    _rtrpGatewayARN ::
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

-- | Creates a value of 'RetrieveTapeRecoveryPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrpTapeARN' - The Amazon Resource Name (ARN) of the virtual tape for which you want to retrieve the recovery point.
--
-- * 'rtrpGatewayARN' - Undocumented member.
retrieveTapeRecoveryPoint ::
  -- | 'rtrpTapeARN'
  Text ->
  -- | 'rtrpGatewayARN'
  Text ->
  RetrieveTapeRecoveryPoint
retrieveTapeRecoveryPoint pTapeARN_ pGatewayARN_ =
  RetrieveTapeRecoveryPoint'
    { _rtrpTapeARN =
        pTapeARN_,
      _rtrpGatewayARN = pGatewayARN_
    }

-- | The Amazon Resource Name (ARN) of the virtual tape for which you want to retrieve the recovery point.
rtrpTapeARN :: Lens' RetrieveTapeRecoveryPoint Text
rtrpTapeARN = lens _rtrpTapeARN (\s a -> s {_rtrpTapeARN = a})

-- | Undocumented member.
rtrpGatewayARN :: Lens' RetrieveTapeRecoveryPoint Text
rtrpGatewayARN = lens _rtrpGatewayARN (\s a -> s {_rtrpGatewayARN = a})

instance AWSRequest RetrieveTapeRecoveryPoint where
  type
    Rs RetrieveTapeRecoveryPoint =
      RetrieveTapeRecoveryPointResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          RetrieveTapeRecoveryPointResponse'
            <$> (x .?> "TapeARN") <*> (pure (fromEnum s))
      )

instance Hashable RetrieveTapeRecoveryPoint

instance NFData RetrieveTapeRecoveryPoint

instance ToHeaders RetrieveTapeRecoveryPoint where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.RetrieveTapeRecoveryPoint" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RetrieveTapeRecoveryPoint where
  toJSON RetrieveTapeRecoveryPoint' {..} =
    object
      ( catMaybes
          [ Just ("TapeARN" .= _rtrpTapeARN),
            Just ("GatewayARN" .= _rtrpGatewayARN)
          ]
      )

instance ToPath RetrieveTapeRecoveryPoint where
  toPath = const "/"

instance ToQuery RetrieveTapeRecoveryPoint where
  toQuery = const mempty

-- | RetrieveTapeRecoveryPointOutput
--
--
--
-- /See:/ 'retrieveTapeRecoveryPointResponse' smart constructor.
data RetrieveTapeRecoveryPointResponse = RetrieveTapeRecoveryPointResponse'
  { _rtrprrsTapeARN ::
      !( Maybe
           Text
       ),
    _rtrprrsResponseStatus ::
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

-- | Creates a value of 'RetrieveTapeRecoveryPointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrprrsTapeARN' - The Amazon Resource Name (ARN) of the virtual tape for which the recovery point was retrieved.
--
-- * 'rtrprrsResponseStatus' - -- | The response status code.
retrieveTapeRecoveryPointResponse ::
  -- | 'rtrprrsResponseStatus'
  Int ->
  RetrieveTapeRecoveryPointResponse
retrieveTapeRecoveryPointResponse pResponseStatus_ =
  RetrieveTapeRecoveryPointResponse'
    { _rtrprrsTapeARN =
        Nothing,
      _rtrprrsResponseStatus =
        pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the virtual tape for which the recovery point was retrieved.
rtrprrsTapeARN :: Lens' RetrieveTapeRecoveryPointResponse (Maybe Text)
rtrprrsTapeARN = lens _rtrprrsTapeARN (\s a -> s {_rtrprrsTapeARN = a})

-- | -- | The response status code.
rtrprrsResponseStatus :: Lens' RetrieveTapeRecoveryPointResponse Int
rtrprrsResponseStatus = lens _rtrprrsResponseStatus (\s a -> s {_rtrprrsResponseStatus = a})

instance NFData RetrieveTapeRecoveryPointResponse
