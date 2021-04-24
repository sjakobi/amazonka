{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.ReservationUtilizationGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.ReservationUtilizationGroup where

import Network.AWS.CostExplorer.Types.ReservationAggregates
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A group of reservations that share a set of attributes.
--
--
--
-- /See:/ 'reservationUtilizationGroup' smart constructor.
data ReservationUtilizationGroup = ReservationUtilizationGroup'
  { _rugKey ::
      !(Maybe Text),
    _rugUtilization ::
      !( Maybe
           ReservationAggregates
       ),
    _rugAttributes ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _rugValue ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ReservationUtilizationGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rugKey' - The key for a specific reservation attribute.
--
-- * 'rugUtilization' - How much you used this group of reservations.
--
-- * 'rugAttributes' - The attributes for this group of reservations.
--
-- * 'rugValue' - The value of a specific reservation attribute.
reservationUtilizationGroup ::
  ReservationUtilizationGroup
reservationUtilizationGroup =
  ReservationUtilizationGroup'
    { _rugKey = Nothing,
      _rugUtilization = Nothing,
      _rugAttributes = Nothing,
      _rugValue = Nothing
    }

-- | The key for a specific reservation attribute.
rugKey :: Lens' ReservationUtilizationGroup (Maybe Text)
rugKey = lens _rugKey (\s a -> s {_rugKey = a})

-- | How much you used this group of reservations.
rugUtilization :: Lens' ReservationUtilizationGroup (Maybe ReservationAggregates)
rugUtilization = lens _rugUtilization (\s a -> s {_rugUtilization = a})

-- | The attributes for this group of reservations.
rugAttributes :: Lens' ReservationUtilizationGroup (HashMap Text Text)
rugAttributes = lens _rugAttributes (\s a -> s {_rugAttributes = a}) . _Default . _Map

-- | The value of a specific reservation attribute.
rugValue :: Lens' ReservationUtilizationGroup (Maybe Text)
rugValue = lens _rugValue (\s a -> s {_rugValue = a})

instance FromJSON ReservationUtilizationGroup where
  parseJSON =
    withObject
      "ReservationUtilizationGroup"
      ( \x ->
          ReservationUtilizationGroup'
            <$> (x .:? "Key")
            <*> (x .:? "Utilization")
            <*> (x .:? "Attributes" .!= mempty)
            <*> (x .:? "Value")
      )

instance Hashable ReservationUtilizationGroup

instance NFData ReservationUtilizationGroup
