{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.MoveStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.MoveStatus
  ( MoveStatus
      ( ..,
        MovingToVPC,
        RestoringToClassic
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data MoveStatus = MoveStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MovingToVPC :: MoveStatus
pattern MovingToVPC = MoveStatus' "movingToVpc"

pattern RestoringToClassic :: MoveStatus
pattern RestoringToClassic = MoveStatus' "restoringToClassic"

{-# COMPLETE
  MovingToVPC,
  RestoringToClassic,
  MoveStatus'
  #-}

instance FromText MoveStatus where
  parser = (MoveStatus' . mk) <$> takeText

instance ToText MoveStatus where
  toText (MoveStatus' ci) = original ci

instance Hashable MoveStatus

instance NFData MoveStatus

instance ToByteString MoveStatus

instance ToQuery MoveStatus

instance ToHeader MoveStatus

instance FromXML MoveStatus where
  parseXML = parseXMLText "MoveStatus"
