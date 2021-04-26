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
-- Module      : Network.AWS.EMR.Types.RepoUpgradeOnBoot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.RepoUpgradeOnBoot
  ( RepoUpgradeOnBoot
      ( ..,
        RepoUpgradeOnBootNONE,
        RepoUpgradeOnBootSECURITY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RepoUpgradeOnBoot = RepoUpgradeOnBoot'
  { fromRepoUpgradeOnBoot ::
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

pattern RepoUpgradeOnBootNONE :: RepoUpgradeOnBoot
pattern RepoUpgradeOnBootNONE = RepoUpgradeOnBoot' "NONE"

pattern RepoUpgradeOnBootSECURITY :: RepoUpgradeOnBoot
pattern RepoUpgradeOnBootSECURITY = RepoUpgradeOnBoot' "SECURITY"

{-# COMPLETE
  RepoUpgradeOnBootNONE,
  RepoUpgradeOnBootSECURITY,
  RepoUpgradeOnBoot'
  #-}

instance Prelude.FromText RepoUpgradeOnBoot where
  parser = RepoUpgradeOnBoot' Prelude.<$> Prelude.takeText

instance Prelude.ToText RepoUpgradeOnBoot where
  toText (RepoUpgradeOnBoot' x) = x

instance Prelude.Hashable RepoUpgradeOnBoot

instance Prelude.NFData RepoUpgradeOnBoot

instance Prelude.ToByteString RepoUpgradeOnBoot

instance Prelude.ToQuery RepoUpgradeOnBoot

instance Prelude.ToHeader RepoUpgradeOnBoot

instance Prelude.ToJSON RepoUpgradeOnBoot where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RepoUpgradeOnBoot where
  parseJSON = Prelude.parseJSONText "RepoUpgradeOnBoot"
