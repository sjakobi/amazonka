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
-- Module      : Network.AWS.EC2.ModifyCapacityReservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a Capacity Reservation's capacity and the conditions under which it is to be released. You cannot change a Capacity Reservation's instance type, EBS optimization, instance store settings, platform, Availability Zone, or instance eligibility. If you need to modify any of these attributes, we recommend that you cancel the Capacity Reservation, and then create a new one with the required attributes.
module Network.AWS.EC2.ModifyCapacityReservation
  ( -- * Creating a Request
    modifyCapacityReservation,
    ModifyCapacityReservation,

    -- * Request Lenses
    mcrDryRun,
    mcrEndDateType,
    mcrAccept,
    mcrEndDate,
    mcrInstanceCount,
    mcrCapacityReservationId,

    -- * Destructuring the Response
    modifyCapacityReservationResponse,
    ModifyCapacityReservationResponse,

    -- * Response Lenses
    mcrrrsReturn,
    mcrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyCapacityReservation' smart constructor.
data ModifyCapacityReservation = ModifyCapacityReservation'
  { _mcrDryRun ::
      !(Maybe Bool),
    _mcrEndDateType ::
      !( Maybe
           EndDateType
       ),
    _mcrAccept ::
      !(Maybe Bool),
    _mcrEndDate ::
      !(Maybe ISO8601),
    _mcrInstanceCount ::
      !(Maybe Int),
    _mcrCapacityReservationId ::
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

-- | Creates a value of 'ModifyCapacityReservation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mcrEndDateType' - Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:     * @unlimited@ - The Capacity Reservation remains active until you explicitly cancel it. Do not provide an @EndDate@ value if @EndDateType@ is @unlimited@ .     * @limited@ - The Capacity Reservation expires automatically at a specified date and time. You must provide an @EndDate@ value if @EndDateType@ is @limited@ .
--
-- * 'mcrAccept' - Reserved. Capacity Reservations you have created are accepted by default.
--
-- * 'mcrEndDate' - The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to @expired@ when it reaches its end date and time. The Capacity Reservation is cancelled within an hour from the specified time. For example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019. You must provide an @EndDate@ value if @EndDateType@ is @limited@ . Omit @EndDate@ if @EndDateType@ is @unlimited@ .
--
-- * 'mcrInstanceCount' - The number of instances for which to reserve capacity.
--
-- * 'mcrCapacityReservationId' - The ID of the Capacity Reservation.
modifyCapacityReservation ::
  -- | 'mcrCapacityReservationId'
  Text ->
  ModifyCapacityReservation
modifyCapacityReservation pCapacityReservationId_ =
  ModifyCapacityReservation'
    { _mcrDryRun = Nothing,
      _mcrEndDateType = Nothing,
      _mcrAccept = Nothing,
      _mcrEndDate = Nothing,
      _mcrInstanceCount = Nothing,
      _mcrCapacityReservationId =
        pCapacityReservationId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mcrDryRun :: Lens' ModifyCapacityReservation (Maybe Bool)
mcrDryRun = lens _mcrDryRun (\s a -> s {_mcrDryRun = a})

-- | Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:     * @unlimited@ - The Capacity Reservation remains active until you explicitly cancel it. Do not provide an @EndDate@ value if @EndDateType@ is @unlimited@ .     * @limited@ - The Capacity Reservation expires automatically at a specified date and time. You must provide an @EndDate@ value if @EndDateType@ is @limited@ .
mcrEndDateType :: Lens' ModifyCapacityReservation (Maybe EndDateType)
mcrEndDateType = lens _mcrEndDateType (\s a -> s {_mcrEndDateType = a})

-- | Reserved. Capacity Reservations you have created are accepted by default.
mcrAccept :: Lens' ModifyCapacityReservation (Maybe Bool)
mcrAccept = lens _mcrAccept (\s a -> s {_mcrAccept = a})

-- | The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to @expired@ when it reaches its end date and time. The Capacity Reservation is cancelled within an hour from the specified time. For example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019. You must provide an @EndDate@ value if @EndDateType@ is @limited@ . Omit @EndDate@ if @EndDateType@ is @unlimited@ .
mcrEndDate :: Lens' ModifyCapacityReservation (Maybe UTCTime)
mcrEndDate = lens _mcrEndDate (\s a -> s {_mcrEndDate = a}) . mapping _Time

-- | The number of instances for which to reserve capacity.
mcrInstanceCount :: Lens' ModifyCapacityReservation (Maybe Int)
mcrInstanceCount = lens _mcrInstanceCount (\s a -> s {_mcrInstanceCount = a})

-- | The ID of the Capacity Reservation.
mcrCapacityReservationId :: Lens' ModifyCapacityReservation Text
mcrCapacityReservationId = lens _mcrCapacityReservationId (\s a -> s {_mcrCapacityReservationId = a})

instance AWSRequest ModifyCapacityReservation where
  type
    Rs ModifyCapacityReservation =
      ModifyCapacityReservationResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyCapacityReservationResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance Hashable ModifyCapacityReservation

instance NFData ModifyCapacityReservation

instance ToHeaders ModifyCapacityReservation where
  toHeaders = const mempty

instance ToPath ModifyCapacityReservation where
  toPath = const "/"

instance ToQuery ModifyCapacityReservation where
  toQuery ModifyCapacityReservation' {..} =
    mconcat
      [ "Action"
          =: ("ModifyCapacityReservation" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _mcrDryRun,
        "EndDateType" =: _mcrEndDateType,
        "Accept" =: _mcrAccept,
        "EndDate" =: _mcrEndDate,
        "InstanceCount" =: _mcrInstanceCount,
        "CapacityReservationId" =: _mcrCapacityReservationId
      ]

-- | /See:/ 'modifyCapacityReservationResponse' smart constructor.
data ModifyCapacityReservationResponse = ModifyCapacityReservationResponse'
  { _mcrrrsReturn ::
      !( Maybe
           Bool
       ),
    _mcrrrsResponseStatus ::
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

-- | Creates a value of 'ModifyCapacityReservationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcrrrsReturn' - Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- * 'mcrrrsResponseStatus' - -- | The response status code.
modifyCapacityReservationResponse ::
  -- | 'mcrrrsResponseStatus'
  Int ->
  ModifyCapacityReservationResponse
modifyCapacityReservationResponse pResponseStatus_ =
  ModifyCapacityReservationResponse'
    { _mcrrrsReturn =
        Nothing,
      _mcrrrsResponseStatus = pResponseStatus_
    }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
mcrrrsReturn :: Lens' ModifyCapacityReservationResponse (Maybe Bool)
mcrrrsReturn = lens _mcrrrsReturn (\s a -> s {_mcrrrsReturn = a})

-- | -- | The response status code.
mcrrrsResponseStatus :: Lens' ModifyCapacityReservationResponse Int
mcrrrsResponseStatus = lens _mcrrrsResponseStatus (\s a -> s {_mcrrrsResponseStatus = a})

instance NFData ModifyCapacityReservationResponse
