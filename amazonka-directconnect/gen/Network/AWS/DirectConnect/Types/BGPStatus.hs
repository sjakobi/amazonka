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
-- Module      : Network.AWS.DirectConnect.Types.BGPStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.BGPStatus
  ( BGPStatus
      ( ..,
        BGPStatusDown,
        BGPStatusUP,
        BGPStatusUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BGPStatus = BGPStatus'
  { fromBGPStatus ::
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

pattern BGPStatusDown :: BGPStatus
pattern BGPStatusDown = BGPStatus' "down"

pattern BGPStatusUP :: BGPStatus
pattern BGPStatusUP = BGPStatus' "up"

pattern BGPStatusUnknown :: BGPStatus
pattern BGPStatusUnknown = BGPStatus' "unknown"

{-# COMPLETE
  BGPStatusDown,
  BGPStatusUP,
  BGPStatusUnknown,
  BGPStatus'
  #-}

instance Prelude.FromText BGPStatus where
  parser = BGPStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText BGPStatus where
  toText (BGPStatus' x) = x

instance Prelude.Hashable BGPStatus

instance Prelude.NFData BGPStatus

instance Prelude.ToByteString BGPStatus

instance Prelude.ToQuery BGPStatus

instance Prelude.ToHeader BGPStatus

instance Prelude.FromJSON BGPStatus where
  parseJSON = Prelude.parseJSONText "BGPStatus"
