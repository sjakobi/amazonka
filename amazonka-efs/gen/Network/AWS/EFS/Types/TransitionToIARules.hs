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
-- Module      : Network.AWS.EFS.Types.TransitionToIARules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EFS.Types.TransitionToIARules
  ( TransitionToIARules
      ( ..,
        TransitionToIARulesAFTER14DAYS,
        TransitionToIARulesAFTER30DAYS,
        TransitionToIARulesAFTER60DAYS,
        TransitionToIARulesAFTER7DAYS,
        TransitionToIARulesAFTER90DAYS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TransitionToIARules = TransitionToIARules'
  { fromTransitionToIARules ::
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

pattern TransitionToIARulesAFTER14DAYS :: TransitionToIARules
pattern TransitionToIARulesAFTER14DAYS = TransitionToIARules' "AFTER_14_DAYS"

pattern TransitionToIARulesAFTER30DAYS :: TransitionToIARules
pattern TransitionToIARulesAFTER30DAYS = TransitionToIARules' "AFTER_30_DAYS"

pattern TransitionToIARulesAFTER60DAYS :: TransitionToIARules
pattern TransitionToIARulesAFTER60DAYS = TransitionToIARules' "AFTER_60_DAYS"

pattern TransitionToIARulesAFTER7DAYS :: TransitionToIARules
pattern TransitionToIARulesAFTER7DAYS = TransitionToIARules' "AFTER_7_DAYS"

pattern TransitionToIARulesAFTER90DAYS :: TransitionToIARules
pattern TransitionToIARulesAFTER90DAYS = TransitionToIARules' "AFTER_90_DAYS"

{-# COMPLETE
  TransitionToIARulesAFTER14DAYS,
  TransitionToIARulesAFTER30DAYS,
  TransitionToIARulesAFTER60DAYS,
  TransitionToIARulesAFTER7DAYS,
  TransitionToIARulesAFTER90DAYS,
  TransitionToIARules'
  #-}

instance Prelude.FromText TransitionToIARules where
  parser = TransitionToIARules' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitionToIARules where
  toText (TransitionToIARules' x) = x

instance Prelude.Hashable TransitionToIARules

instance Prelude.NFData TransitionToIARules

instance Prelude.ToByteString TransitionToIARules

instance Prelude.ToQuery TransitionToIARules

instance Prelude.ToHeader TransitionToIARules

instance Prelude.ToJSON TransitionToIARules where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TransitionToIARules where
  parseJSON = Prelude.parseJSONText "TransitionToIARules"
