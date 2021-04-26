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
-- Module      : Network.AWS.EC2.Types.BgpStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.BgpStatus
  ( BgpStatus
      ( ..,
        BgpStatusDown,
        BgpStatusUP
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype BgpStatus = BgpStatus'
  { fromBgpStatus ::
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

pattern BgpStatusDown :: BgpStatus
pattern BgpStatusDown = BgpStatus' "down"

pattern BgpStatusUP :: BgpStatus
pattern BgpStatusUP = BgpStatus' "up"

{-# COMPLETE
  BgpStatusDown,
  BgpStatusUP,
  BgpStatus'
  #-}

instance Prelude.FromText BgpStatus where
  parser = BgpStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText BgpStatus where
  toText (BgpStatus' x) = x

instance Prelude.Hashable BgpStatus

instance Prelude.NFData BgpStatus

instance Prelude.ToByteString BgpStatus

instance Prelude.ToQuery BgpStatus

instance Prelude.ToHeader BgpStatus

instance Prelude.FromXML BgpStatus where
  parseXML = Prelude.parseXMLText "BgpStatus"
