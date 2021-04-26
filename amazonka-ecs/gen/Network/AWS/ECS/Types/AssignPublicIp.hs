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
-- Module      : Network.AWS.ECS.Types.AssignPublicIp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.AssignPublicIp
  ( AssignPublicIp
      ( ..,
        AssignPublicIpDISABLED,
        AssignPublicIpENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssignPublicIp = AssignPublicIp'
  { fromAssignPublicIp ::
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

pattern AssignPublicIpDISABLED :: AssignPublicIp
pattern AssignPublicIpDISABLED = AssignPublicIp' "DISABLED"

pattern AssignPublicIpENABLED :: AssignPublicIp
pattern AssignPublicIpENABLED = AssignPublicIp' "ENABLED"

{-# COMPLETE
  AssignPublicIpDISABLED,
  AssignPublicIpENABLED,
  AssignPublicIp'
  #-}

instance Prelude.FromText AssignPublicIp where
  parser = AssignPublicIp' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssignPublicIp where
  toText (AssignPublicIp' x) = x

instance Prelude.Hashable AssignPublicIp

instance Prelude.NFData AssignPublicIp

instance Prelude.ToByteString AssignPublicIp

instance Prelude.ToQuery AssignPublicIp

instance Prelude.ToHeader AssignPublicIp

instance Prelude.ToJSON AssignPublicIp where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AssignPublicIp where
  parseJSON = Prelude.parseJSONText "AssignPublicIp"
