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
-- Module      : Network.AWS.OpsWorks.Types.AutoScalingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.AutoScalingType
  ( AutoScalingType
      ( ..,
        AutoScalingTypeLoad,
        AutoScalingTypeTimer
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoScalingType = AutoScalingType'
  { fromAutoScalingType ::
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

pattern AutoScalingTypeLoad :: AutoScalingType
pattern AutoScalingTypeLoad = AutoScalingType' "load"

pattern AutoScalingTypeTimer :: AutoScalingType
pattern AutoScalingTypeTimer = AutoScalingType' "timer"

{-# COMPLETE
  AutoScalingTypeLoad,
  AutoScalingTypeTimer,
  AutoScalingType'
  #-}

instance Prelude.FromText AutoScalingType where
  parser = AutoScalingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoScalingType where
  toText (AutoScalingType' x) = x

instance Prelude.Hashable AutoScalingType

instance Prelude.NFData AutoScalingType

instance Prelude.ToByteString AutoScalingType

instance Prelude.ToQuery AutoScalingType

instance Prelude.ToHeader AutoScalingType

instance Prelude.ToJSON AutoScalingType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AutoScalingType where
  parseJSON = Prelude.parseJSONText "AutoScalingType"
