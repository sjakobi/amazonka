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
-- Module      : Network.AWS.EC2.CancelCapacityReservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the specified Capacity Reservation, releases the reserved capacity, and changes the Capacity Reservation's state to @cancelled@ .
--
--
-- Instances running in the reserved capacity continue running until you stop them. Stopped instances that target the Capacity Reservation can no longer launch. Modify these instances to either target a different Capacity Reservation, launch On-Demand Instance capacity, or run in any open Capacity Reservation that has matching attributes and sufficient capacity.
module Network.AWS.EC2.CancelCapacityReservation
  ( -- * Creating a Request
    cancelCapacityReservation,
    CancelCapacityReservation,

    -- * Request Lenses
    ccrDryRun,
    ccrCapacityReservationId,

    -- * Destructuring the Response
    cancelCapacityReservationResponse,
    CancelCapacityReservationResponse,

    -- * Response Lenses
    ccrrrsReturn,
    ccrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'cancelCapacityReservation' smart constructor.
data CancelCapacityReservation = CancelCapacityReservation'
  { _ccrDryRun ::
      !(Maybe Bool),
    _ccrCapacityReservationId ::
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

-- | Creates a value of 'CancelCapacityReservation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ccrCapacityReservationId' - The ID of the Capacity Reservation to be cancelled.
cancelCapacityReservation ::
  -- | 'ccrCapacityReservationId'
  Text ->
  CancelCapacityReservation
cancelCapacityReservation pCapacityReservationId_ =
  CancelCapacityReservation'
    { _ccrDryRun = Nothing,
      _ccrCapacityReservationId =
        pCapacityReservationId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ccrDryRun :: Lens' CancelCapacityReservation (Maybe Bool)
ccrDryRun = lens _ccrDryRun (\s a -> s {_ccrDryRun = a})

-- | The ID of the Capacity Reservation to be cancelled.
ccrCapacityReservationId :: Lens' CancelCapacityReservation Text
ccrCapacityReservationId = lens _ccrCapacityReservationId (\s a -> s {_ccrCapacityReservationId = a})

instance AWSRequest CancelCapacityReservation where
  type
    Rs CancelCapacityReservation =
      CancelCapacityReservationResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CancelCapacityReservationResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance Hashable CancelCapacityReservation

instance NFData CancelCapacityReservation

instance ToHeaders CancelCapacityReservation where
  toHeaders = const mempty

instance ToPath CancelCapacityReservation where
  toPath = const "/"

instance ToQuery CancelCapacityReservation where
  toQuery CancelCapacityReservation' {..} =
    mconcat
      [ "Action"
          =: ("CancelCapacityReservation" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _ccrDryRun,
        "CapacityReservationId" =: _ccrCapacityReservationId
      ]

-- | /See:/ 'cancelCapacityReservationResponse' smart constructor.
data CancelCapacityReservationResponse = CancelCapacityReservationResponse'
  { _ccrrrsReturn ::
      !( Maybe
           Bool
       ),
    _ccrrrsResponseStatus ::
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

-- | Creates a value of 'CancelCapacityReservationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrrsReturn' - Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- * 'ccrrrsResponseStatus' - -- | The response status code.
cancelCapacityReservationResponse ::
  -- | 'ccrrrsResponseStatus'
  Int ->
  CancelCapacityReservationResponse
cancelCapacityReservationResponse pResponseStatus_ =
  CancelCapacityReservationResponse'
    { _ccrrrsReturn =
        Nothing,
      _ccrrrsResponseStatus = pResponseStatus_
    }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
ccrrrsReturn :: Lens' CancelCapacityReservationResponse (Maybe Bool)
ccrrrsReturn = lens _ccrrrsReturn (\s a -> s {_ccrrrsReturn = a})

-- | -- | The response status code.
ccrrrsResponseStatus :: Lens' CancelCapacityReservationResponse Int
ccrrrsResponseStatus = lens _ccrrrsResponseStatus (\s a -> s {_ccrrrsResponseStatus = a})

instance NFData CancelCapacityReservationResponse
