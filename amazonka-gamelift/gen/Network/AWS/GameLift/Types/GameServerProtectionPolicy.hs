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
-- Module      : Network.AWS.GameLift.Types.GameServerProtectionPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerProtectionPolicy
  ( GameServerProtectionPolicy
      ( ..,
        GameServerProtectionPolicyFULLPROTECTION,
        GameServerProtectionPolicyNOPROTECTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameServerProtectionPolicy = GameServerProtectionPolicy'
  { fromGameServerProtectionPolicy ::
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

pattern GameServerProtectionPolicyFULLPROTECTION :: GameServerProtectionPolicy
pattern GameServerProtectionPolicyFULLPROTECTION = GameServerProtectionPolicy' "FULL_PROTECTION"

pattern GameServerProtectionPolicyNOPROTECTION :: GameServerProtectionPolicy
pattern GameServerProtectionPolicyNOPROTECTION = GameServerProtectionPolicy' "NO_PROTECTION"

{-# COMPLETE
  GameServerProtectionPolicyFULLPROTECTION,
  GameServerProtectionPolicyNOPROTECTION,
  GameServerProtectionPolicy'
  #-}

instance Prelude.FromText GameServerProtectionPolicy where
  parser = GameServerProtectionPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameServerProtectionPolicy where
  toText (GameServerProtectionPolicy' x) = x

instance Prelude.Hashable GameServerProtectionPolicy

instance Prelude.NFData GameServerProtectionPolicy

instance Prelude.ToByteString GameServerProtectionPolicy

instance Prelude.ToQuery GameServerProtectionPolicy

instance Prelude.ToHeader GameServerProtectionPolicy

instance Prelude.ToJSON GameServerProtectionPolicy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GameServerProtectionPolicy where
  parseJSON = Prelude.parseJSONText "GameServerProtectionPolicy"
