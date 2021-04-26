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
-- Module      : Network.AWS.MediaLive.Types.InputDeviceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceType
  ( InputDeviceType
      ( ..,
        InputDeviceTypeHD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of the input device. For an AWS Elemental Link device that
-- outputs resolutions up to 1080, choose \"HD\".
newtype InputDeviceType = InputDeviceType'
  { fromInputDeviceType ::
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

pattern InputDeviceTypeHD :: InputDeviceType
pattern InputDeviceTypeHD = InputDeviceType' "HD"

{-# COMPLETE
  InputDeviceTypeHD,
  InputDeviceType'
  #-}

instance Prelude.FromText InputDeviceType where
  parser = InputDeviceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputDeviceType where
  toText (InputDeviceType' x) = x

instance Prelude.Hashable InputDeviceType

instance Prelude.NFData InputDeviceType

instance Prelude.ToByteString InputDeviceType

instance Prelude.ToQuery InputDeviceType

instance Prelude.ToHeader InputDeviceType

instance Prelude.FromJSON InputDeviceType where
  parseJSON = Prelude.parseJSONText "InputDeviceType"
