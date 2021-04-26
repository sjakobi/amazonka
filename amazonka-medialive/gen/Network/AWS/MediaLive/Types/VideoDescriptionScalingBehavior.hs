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
-- Module      : Network.AWS.MediaLive.Types.VideoDescriptionScalingBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.VideoDescriptionScalingBehavior
  ( VideoDescriptionScalingBehavior
      ( ..,
        VideoDescriptionScalingBehaviorDEFAULT,
        VideoDescriptionScalingBehaviorSTRETCHTOOUTPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Video Description Scaling Behavior
newtype VideoDescriptionScalingBehavior = VideoDescriptionScalingBehavior'
  { fromVideoDescriptionScalingBehavior ::
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

pattern VideoDescriptionScalingBehaviorDEFAULT :: VideoDescriptionScalingBehavior
pattern VideoDescriptionScalingBehaviorDEFAULT = VideoDescriptionScalingBehavior' "DEFAULT"

pattern VideoDescriptionScalingBehaviorSTRETCHTOOUTPUT :: VideoDescriptionScalingBehavior
pattern VideoDescriptionScalingBehaviorSTRETCHTOOUTPUT = VideoDescriptionScalingBehavior' "STRETCH_TO_OUTPUT"

{-# COMPLETE
  VideoDescriptionScalingBehaviorDEFAULT,
  VideoDescriptionScalingBehaviorSTRETCHTOOUTPUT,
  VideoDescriptionScalingBehavior'
  #-}

instance Prelude.FromText VideoDescriptionScalingBehavior where
  parser = VideoDescriptionScalingBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText VideoDescriptionScalingBehavior where
  toText (VideoDescriptionScalingBehavior' x) = x

instance Prelude.Hashable VideoDescriptionScalingBehavior

instance Prelude.NFData VideoDescriptionScalingBehavior

instance Prelude.ToByteString VideoDescriptionScalingBehavior

instance Prelude.ToQuery VideoDescriptionScalingBehavior

instance Prelude.ToHeader VideoDescriptionScalingBehavior

instance Prelude.ToJSON VideoDescriptionScalingBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON VideoDescriptionScalingBehavior where
  parseJSON = Prelude.parseJSONText "VideoDescriptionScalingBehavior"
