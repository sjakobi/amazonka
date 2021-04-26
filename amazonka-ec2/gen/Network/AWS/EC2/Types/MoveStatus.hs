{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        MoveStatusMovingToVpc,
        MoveStatusRestoringToClassic
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype MoveStatus = MoveStatus'
  { fromMoveStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern MoveStatusMovingToVpc :: MoveStatus
pattern MoveStatusMovingToVpc = MoveStatus' "movingToVpc"

pattern MoveStatusRestoringToClassic :: MoveStatus
pattern MoveStatusRestoringToClassic = MoveStatus' "restoringToClassic"

{-# COMPLETE
  MoveStatusMovingToVpc,
  MoveStatusRestoringToClassic,
  MoveStatus'
  #-}

instance Prelude.FromText MoveStatus where
  parser = MoveStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText MoveStatus where
  toText (MoveStatus' x) = x

instance Prelude.Hashable MoveStatus

instance Prelude.NFData MoveStatus

instance Prelude.ToByteString MoveStatus

instance Prelude.ToQuery MoveStatus

instance Prelude.ToHeader MoveStatus

instance Prelude.FromXML MoveStatus where
  parseXML = Prelude.parseXMLText "MoveStatus"
