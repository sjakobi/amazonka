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
-- Module      : Network.AWS.EFS.Types.ThroughputMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EFS.Types.ThroughputMode
  ( ThroughputMode
      ( ..,
        ThroughputModeBursting,
        ThroughputModeProvisioned
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ThroughputMode = ThroughputMode'
  { fromThroughputMode ::
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

pattern ThroughputModeBursting :: ThroughputMode
pattern ThroughputModeBursting = ThroughputMode' "bursting"

pattern ThroughputModeProvisioned :: ThroughputMode
pattern ThroughputModeProvisioned = ThroughputMode' "provisioned"

{-# COMPLETE
  ThroughputModeBursting,
  ThroughputModeProvisioned,
  ThroughputMode'
  #-}

instance Prelude.FromText ThroughputMode where
  parser = ThroughputMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ThroughputMode where
  toText (ThroughputMode' x) = x

instance Prelude.Hashable ThroughputMode

instance Prelude.NFData ThroughputMode

instance Prelude.ToByteString ThroughputMode

instance Prelude.ToQuery ThroughputMode

instance Prelude.ToHeader ThroughputMode

instance Prelude.ToJSON ThroughputMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ThroughputMode where
  parseJSON = Prelude.parseJSONText "ThroughputMode"
