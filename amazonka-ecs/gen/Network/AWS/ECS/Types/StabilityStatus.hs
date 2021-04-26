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
-- Module      : Network.AWS.ECS.Types.StabilityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.StabilityStatus
  ( StabilityStatus
      ( ..,
        StabilityStatusSTABILIZING,
        StabilityStatusSTEADYSTATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StabilityStatus = StabilityStatus'
  { fromStabilityStatus ::
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

pattern StabilityStatusSTABILIZING :: StabilityStatus
pattern StabilityStatusSTABILIZING = StabilityStatus' "STABILIZING"

pattern StabilityStatusSTEADYSTATE :: StabilityStatus
pattern StabilityStatusSTEADYSTATE = StabilityStatus' "STEADY_STATE"

{-# COMPLETE
  StabilityStatusSTABILIZING,
  StabilityStatusSTEADYSTATE,
  StabilityStatus'
  #-}

instance Prelude.FromText StabilityStatus where
  parser = StabilityStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StabilityStatus where
  toText (StabilityStatus' x) = x

instance Prelude.Hashable StabilityStatus

instance Prelude.NFData StabilityStatus

instance Prelude.ToByteString StabilityStatus

instance Prelude.ToQuery StabilityStatus

instance Prelude.ToHeader StabilityStatus

instance Prelude.FromJSON StabilityStatus where
  parseJSON = Prelude.parseJSONText "StabilityStatus"
