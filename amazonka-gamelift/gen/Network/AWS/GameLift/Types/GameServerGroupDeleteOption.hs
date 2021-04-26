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
-- Module      : Network.AWS.GameLift.Types.GameServerGroupDeleteOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerGroupDeleteOption
  ( GameServerGroupDeleteOption
      ( ..,
        GameServerGroupDeleteOptionFORCEDELETE,
        GameServerGroupDeleteOptionRETAIN,
        GameServerGroupDeleteOptionSAFEDELETE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameServerGroupDeleteOption = GameServerGroupDeleteOption'
  { fromGameServerGroupDeleteOption ::
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

pattern GameServerGroupDeleteOptionFORCEDELETE :: GameServerGroupDeleteOption
pattern GameServerGroupDeleteOptionFORCEDELETE = GameServerGroupDeleteOption' "FORCE_DELETE"

pattern GameServerGroupDeleteOptionRETAIN :: GameServerGroupDeleteOption
pattern GameServerGroupDeleteOptionRETAIN = GameServerGroupDeleteOption' "RETAIN"

pattern GameServerGroupDeleteOptionSAFEDELETE :: GameServerGroupDeleteOption
pattern GameServerGroupDeleteOptionSAFEDELETE = GameServerGroupDeleteOption' "SAFE_DELETE"

{-# COMPLETE
  GameServerGroupDeleteOptionFORCEDELETE,
  GameServerGroupDeleteOptionRETAIN,
  GameServerGroupDeleteOptionSAFEDELETE,
  GameServerGroupDeleteOption'
  #-}

instance Prelude.FromText GameServerGroupDeleteOption where
  parser = GameServerGroupDeleteOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameServerGroupDeleteOption where
  toText (GameServerGroupDeleteOption' x) = x

instance Prelude.Hashable GameServerGroupDeleteOption

instance Prelude.NFData GameServerGroupDeleteOption

instance Prelude.ToByteString GameServerGroupDeleteOption

instance Prelude.ToQuery GameServerGroupDeleteOption

instance Prelude.ToHeader GameServerGroupDeleteOption

instance Prelude.ToJSON GameServerGroupDeleteOption where
  toJSON = Prelude.toJSONText
