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
-- Module      : Network.AWS.MediaLive.Types.GlobalConfigurationLowFramerateInputs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.GlobalConfigurationLowFramerateInputs
  ( GlobalConfigurationLowFramerateInputs
      ( ..,
        GlobalConfigurationLowFramerateInputsDISABLED,
        GlobalConfigurationLowFramerateInputsENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Global Configuration Low Framerate Inputs
newtype GlobalConfigurationLowFramerateInputs = GlobalConfigurationLowFramerateInputs'
  { fromGlobalConfigurationLowFramerateInputs ::
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

pattern GlobalConfigurationLowFramerateInputsDISABLED :: GlobalConfigurationLowFramerateInputs
pattern GlobalConfigurationLowFramerateInputsDISABLED = GlobalConfigurationLowFramerateInputs' "DISABLED"

pattern GlobalConfigurationLowFramerateInputsENABLED :: GlobalConfigurationLowFramerateInputs
pattern GlobalConfigurationLowFramerateInputsENABLED = GlobalConfigurationLowFramerateInputs' "ENABLED"

{-# COMPLETE
  GlobalConfigurationLowFramerateInputsDISABLED,
  GlobalConfigurationLowFramerateInputsENABLED,
  GlobalConfigurationLowFramerateInputs'
  #-}

instance Prelude.FromText GlobalConfigurationLowFramerateInputs where
  parser = GlobalConfigurationLowFramerateInputs' Prelude.<$> Prelude.takeText

instance Prelude.ToText GlobalConfigurationLowFramerateInputs where
  toText (GlobalConfigurationLowFramerateInputs' x) = x

instance Prelude.Hashable GlobalConfigurationLowFramerateInputs

instance Prelude.NFData GlobalConfigurationLowFramerateInputs

instance Prelude.ToByteString GlobalConfigurationLowFramerateInputs

instance Prelude.ToQuery GlobalConfigurationLowFramerateInputs

instance Prelude.ToHeader GlobalConfigurationLowFramerateInputs

instance Prelude.ToJSON GlobalConfigurationLowFramerateInputs where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GlobalConfigurationLowFramerateInputs where
  parseJSON = Prelude.parseJSONText "GlobalConfigurationLowFramerateInputs"
