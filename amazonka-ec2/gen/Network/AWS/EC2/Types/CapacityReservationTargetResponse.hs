{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CapacityReservationTargetResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CapacityReservationTargetResponse where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a target Capacity Reservation or Capacity Reservation group.
--
--
--
-- /See:/ 'capacityReservationTargetResponse' smart constructor.
data CapacityReservationTargetResponse = CapacityReservationTargetResponse'
  { _crtrCapacityReservationResourceGroupARN ::
      !( Maybe
           Text
       ),
    _crtrCapacityReservationId ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CapacityReservationTargetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crtrCapacityReservationResourceGroupARN' - The ARN of the targeted Capacity Reservation group.
--
-- * 'crtrCapacityReservationId' - The ID of the targeted Capacity Reservation.
capacityReservationTargetResponse ::
  CapacityReservationTargetResponse
capacityReservationTargetResponse =
  CapacityReservationTargetResponse'
    { _crtrCapacityReservationResourceGroupARN =
        Nothing,
      _crtrCapacityReservationId = Nothing
    }

-- | The ARN of the targeted Capacity Reservation group.
crtrCapacityReservationResourceGroupARN :: Lens' CapacityReservationTargetResponse (Maybe Text)
crtrCapacityReservationResourceGroupARN = lens _crtrCapacityReservationResourceGroupARN (\s a -> s {_crtrCapacityReservationResourceGroupARN = a})

-- | The ID of the targeted Capacity Reservation.
crtrCapacityReservationId :: Lens' CapacityReservationTargetResponse (Maybe Text)
crtrCapacityReservationId = lens _crtrCapacityReservationId (\s a -> s {_crtrCapacityReservationId = a})

instance FromXML CapacityReservationTargetResponse where
  parseXML x =
    CapacityReservationTargetResponse'
      <$> (x .@? "capacityReservationResourceGroupArn")
      <*> (x .@? "capacityReservationId")

instance Hashable CapacityReservationTargetResponse

instance NFData CapacityReservationTargetResponse
