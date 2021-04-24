{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceFleetStateChangeReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceFleetStateChangeReason where

import Network.AWS.EMR.Types.InstanceFleetStateChangeReasonCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides status change reason details for the instance fleet.
--
--
--
-- /See:/ 'instanceFleetStateChangeReason' smart constructor.
data InstanceFleetStateChangeReason = InstanceFleetStateChangeReason'
  { _ifscrMessage ::
      !( Maybe
           Text
       ),
    _ifscrCode ::
      !( Maybe
           InstanceFleetStateChangeReasonCode
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

-- | Creates a value of 'InstanceFleetStateChangeReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifscrMessage' - An explanatory message.
--
-- * 'ifscrCode' - A code corresponding to the reason the state change occurred.
instanceFleetStateChangeReason ::
  InstanceFleetStateChangeReason
instanceFleetStateChangeReason =
  InstanceFleetStateChangeReason'
    { _ifscrMessage =
        Nothing,
      _ifscrCode = Nothing
    }

-- | An explanatory message.
ifscrMessage :: Lens' InstanceFleetStateChangeReason (Maybe Text)
ifscrMessage = lens _ifscrMessage (\s a -> s {_ifscrMessage = a})

-- | A code corresponding to the reason the state change occurred.
ifscrCode :: Lens' InstanceFleetStateChangeReason (Maybe InstanceFleetStateChangeReasonCode)
ifscrCode = lens _ifscrCode (\s a -> s {_ifscrCode = a})

instance FromJSON InstanceFleetStateChangeReason where
  parseJSON =
    withObject
      "InstanceFleetStateChangeReason"
      ( \x ->
          InstanceFleetStateChangeReason'
            <$> (x .:? "Message") <*> (x .:? "Code")
      )

instance Hashable InstanceFleetStateChangeReason

instance NFData InstanceFleetStateChangeReason
