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
-- Module      : Network.AWS.GameLift.Types.GameServerUtilizationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerUtilizationStatus
  ( GameServerUtilizationStatus
      ( ..,
        GameServerUtilizationStatusAVAILABLE,
        GameServerUtilizationStatusUTILIZED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameServerUtilizationStatus = GameServerUtilizationStatus'
  { fromGameServerUtilizationStatus ::
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

pattern GameServerUtilizationStatusAVAILABLE :: GameServerUtilizationStatus
pattern GameServerUtilizationStatusAVAILABLE = GameServerUtilizationStatus' "AVAILABLE"

pattern GameServerUtilizationStatusUTILIZED :: GameServerUtilizationStatus
pattern GameServerUtilizationStatusUTILIZED = GameServerUtilizationStatus' "UTILIZED"

{-# COMPLETE
  GameServerUtilizationStatusAVAILABLE,
  GameServerUtilizationStatusUTILIZED,
  GameServerUtilizationStatus'
  #-}

instance Prelude.FromText GameServerUtilizationStatus where
  parser = GameServerUtilizationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameServerUtilizationStatus where
  toText (GameServerUtilizationStatus' x) = x

instance Prelude.Hashable GameServerUtilizationStatus

instance Prelude.NFData GameServerUtilizationStatus

instance Prelude.ToByteString GameServerUtilizationStatus

instance Prelude.ToQuery GameServerUtilizationStatus

instance Prelude.ToHeader GameServerUtilizationStatus

instance Prelude.ToJSON GameServerUtilizationStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GameServerUtilizationStatus where
  parseJSON = Prelude.parseJSONText "GameServerUtilizationStatus"
