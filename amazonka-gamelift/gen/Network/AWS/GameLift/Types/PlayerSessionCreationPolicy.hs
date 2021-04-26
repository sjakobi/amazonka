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
-- Module      : Network.AWS.GameLift.Types.PlayerSessionCreationPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.PlayerSessionCreationPolicy
  ( PlayerSessionCreationPolicy
      ( ..,
        PlayerSessionCreationPolicyACCEPTALL,
        PlayerSessionCreationPolicyDENYALL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PlayerSessionCreationPolicy = PlayerSessionCreationPolicy'
  { fromPlayerSessionCreationPolicy ::
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

pattern PlayerSessionCreationPolicyACCEPTALL :: PlayerSessionCreationPolicy
pattern PlayerSessionCreationPolicyACCEPTALL = PlayerSessionCreationPolicy' "ACCEPT_ALL"

pattern PlayerSessionCreationPolicyDENYALL :: PlayerSessionCreationPolicy
pattern PlayerSessionCreationPolicyDENYALL = PlayerSessionCreationPolicy' "DENY_ALL"

{-# COMPLETE
  PlayerSessionCreationPolicyACCEPTALL,
  PlayerSessionCreationPolicyDENYALL,
  PlayerSessionCreationPolicy'
  #-}

instance Prelude.FromText PlayerSessionCreationPolicy where
  parser = PlayerSessionCreationPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlayerSessionCreationPolicy where
  toText (PlayerSessionCreationPolicy' x) = x

instance Prelude.Hashable PlayerSessionCreationPolicy

instance Prelude.NFData PlayerSessionCreationPolicy

instance Prelude.ToByteString PlayerSessionCreationPolicy

instance Prelude.ToQuery PlayerSessionCreationPolicy

instance Prelude.ToHeader PlayerSessionCreationPolicy

instance Prelude.ToJSON PlayerSessionCreationPolicy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PlayerSessionCreationPolicy where
  parseJSON = Prelude.parseJSONText "PlayerSessionCreationPolicy"
