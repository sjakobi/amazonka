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
-- Module      : Network.AWS.MediaLive.UpdateReservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update reservation.
module Network.AWS.MediaLive.UpdateReservation
  ( -- * Creating a Request
    updateReservation',
    UpdateReservation',

    -- * Request Lenses
    urrName,
    urrReservationId,

    -- * Destructuring the Response
    updateReservationResponse,
    UpdateReservationResponse,

    -- * Response Lenses
    urrrsReservation,
    urrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to update a reservation
--
-- /See:/ 'updateReservation'' smart constructor.
data UpdateReservation' = UpdateReservation''
  { _urrName ::
      !(Maybe Text),
    _urrReservationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateReservation'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrName' - Name of the reservation
--
-- * 'urrReservationId' - Unique reservation ID, e.g. '1234567'
updateReservation' ::
  -- | 'urrReservationId'
  Text ->
  UpdateReservation'
updateReservation' pReservationId_ =
  UpdateReservation''
    { _urrName = Nothing,
      _urrReservationId = pReservationId_
    }

-- | Name of the reservation
urrName :: Lens' UpdateReservation' (Maybe Text)
urrName = lens _urrName (\s a -> s {_urrName = a})

-- | Unique reservation ID, e.g. '1234567'
urrReservationId :: Lens' UpdateReservation' Text
urrReservationId = lens _urrReservationId (\s a -> s {_urrReservationId = a})

instance AWSRequest UpdateReservation' where
  type
    Rs UpdateReservation' =
      UpdateReservationResponse
  request = putJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          UpdateReservationResponse'
            <$> (x .?> "reservation") <*> (pure (fromEnum s))
      )

instance Hashable UpdateReservation'

instance NFData UpdateReservation'

instance ToHeaders UpdateReservation' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateReservation' where
  toJSON UpdateReservation'' {..} =
    object (catMaybes [("name" .=) <$> _urrName])

instance ToPath UpdateReservation' where
  toPath UpdateReservation'' {..} =
    mconcat
      ["/prod/reservations/", toBS _urrReservationId]

instance ToQuery UpdateReservation' where
  toQuery = const mempty

-- | Placeholder documentation for UpdateReservationResponse
--
-- /See:/ 'updateReservationResponse' smart constructor.
data UpdateReservationResponse = UpdateReservationResponse'
  { _urrrsReservation ::
      !( Maybe
           Reservation
       ),
    _urrrsResponseStatus ::
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

-- | Creates a value of 'UpdateReservationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrrsReservation' - Undocumented member.
--
-- * 'urrrsResponseStatus' - -- | The response status code.
updateReservationResponse ::
  -- | 'urrrsResponseStatus'
  Int ->
  UpdateReservationResponse
updateReservationResponse pResponseStatus_ =
  UpdateReservationResponse'
    { _urrrsReservation =
        Nothing,
      _urrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
urrrsReservation :: Lens' UpdateReservationResponse (Maybe Reservation)
urrrsReservation = lens _urrrsReservation (\s a -> s {_urrrsReservation = a})

-- | -- | The response status code.
urrrsResponseStatus :: Lens' UpdateReservationResponse Int
urrrsResponseStatus = lens _urrrsResponseStatus (\s a -> s {_urrrsResponseStatus = a})

instance NFData UpdateReservationResponse
