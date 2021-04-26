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
-- Module      : Network.AWS.MediaConvert.Types.ScalingBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ScalingBehavior
  ( ScalingBehavior
      ( ..,
        ScalingBehaviorDEFAULT,
        ScalingBehaviorSTRETCHTOOUTPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify how the service handles outputs that have a different aspect
-- ratio from the input aspect ratio. Choose Stretch to output
-- (STRETCH_TO_OUTPUT) to have the service stretch your video image to fit.
-- Keep the setting Default (DEFAULT) to have the service letterbox your
-- video instead. This setting overrides any value that you specify for the
-- setting Selection placement (position) in this output.
newtype ScalingBehavior = ScalingBehavior'
  { fromScalingBehavior ::
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

pattern ScalingBehaviorDEFAULT :: ScalingBehavior
pattern ScalingBehaviorDEFAULT = ScalingBehavior' "DEFAULT"

pattern ScalingBehaviorSTRETCHTOOUTPUT :: ScalingBehavior
pattern ScalingBehaviorSTRETCHTOOUTPUT = ScalingBehavior' "STRETCH_TO_OUTPUT"

{-# COMPLETE
  ScalingBehaviorDEFAULT,
  ScalingBehaviorSTRETCHTOOUTPUT,
  ScalingBehavior'
  #-}

instance Prelude.FromText ScalingBehavior where
  parser = ScalingBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalingBehavior where
  toText (ScalingBehavior' x) = x

instance Prelude.Hashable ScalingBehavior

instance Prelude.NFData ScalingBehavior

instance Prelude.ToByteString ScalingBehavior

instance Prelude.ToQuery ScalingBehavior

instance Prelude.ToHeader ScalingBehavior

instance Prelude.ToJSON ScalingBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ScalingBehavior where
  parseJSON = Prelude.parseJSONText "ScalingBehavior"
