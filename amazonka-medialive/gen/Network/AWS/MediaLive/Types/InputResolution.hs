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
-- Module      : Network.AWS.MediaLive.Types.InputResolution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputResolution
  ( InputResolution
      ( ..,
        InputResolutionHD,
        InputResolutionSD,
        InputResolutionUHD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Input resolution based on lines of vertical resolution in the input; SD
-- is less than 720 lines, HD is 720 to 1080 lines, UHD is greater than
-- 1080 lines
newtype InputResolution = InputResolution'
  { fromInputResolution ::
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

pattern InputResolutionHD :: InputResolution
pattern InputResolutionHD = InputResolution' "HD"

pattern InputResolutionSD :: InputResolution
pattern InputResolutionSD = InputResolution' "SD"

pattern InputResolutionUHD :: InputResolution
pattern InputResolutionUHD = InputResolution' "UHD"

{-# COMPLETE
  InputResolutionHD,
  InputResolutionSD,
  InputResolutionUHD,
  InputResolution'
  #-}

instance Prelude.FromText InputResolution where
  parser = InputResolution' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputResolution where
  toText (InputResolution' x) = x

instance Prelude.Hashable InputResolution

instance Prelude.NFData InputResolution

instance Prelude.ToByteString InputResolution

instance Prelude.ToQuery InputResolution

instance Prelude.ToHeader InputResolution

instance Prelude.ToJSON InputResolution where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputResolution where
  parseJSON = Prelude.parseJSONText "InputResolution"
