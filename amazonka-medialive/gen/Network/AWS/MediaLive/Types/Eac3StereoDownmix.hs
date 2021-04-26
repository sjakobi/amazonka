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
-- Module      : Network.AWS.MediaLive.Types.Eac3StereoDownmix
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3StereoDownmix
  ( Eac3StereoDownmix
      ( ..,
        Eac3StereoDownmixDPL2,
        Eac3StereoDownmixLORO,
        Eac3StereoDownmixLTRT,
        Eac3StereoDownmixNOTINDICATED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Stereo Downmix
newtype Eac3StereoDownmix = Eac3StereoDownmix'
  { fromEac3StereoDownmix ::
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

pattern Eac3StereoDownmixDPL2 :: Eac3StereoDownmix
pattern Eac3StereoDownmixDPL2 = Eac3StereoDownmix' "DPL2"

pattern Eac3StereoDownmixLORO :: Eac3StereoDownmix
pattern Eac3StereoDownmixLORO = Eac3StereoDownmix' "LO_RO"

pattern Eac3StereoDownmixLTRT :: Eac3StereoDownmix
pattern Eac3StereoDownmixLTRT = Eac3StereoDownmix' "LT_RT"

pattern Eac3StereoDownmixNOTINDICATED :: Eac3StereoDownmix
pattern Eac3StereoDownmixNOTINDICATED = Eac3StereoDownmix' "NOT_INDICATED"

{-# COMPLETE
  Eac3StereoDownmixDPL2,
  Eac3StereoDownmixLORO,
  Eac3StereoDownmixLTRT,
  Eac3StereoDownmixNOTINDICATED,
  Eac3StereoDownmix'
  #-}

instance Prelude.FromText Eac3StereoDownmix where
  parser = Eac3StereoDownmix' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3StereoDownmix where
  toText (Eac3StereoDownmix' x) = x

instance Prelude.Hashable Eac3StereoDownmix

instance Prelude.NFData Eac3StereoDownmix

instance Prelude.ToByteString Eac3StereoDownmix

instance Prelude.ToQuery Eac3StereoDownmix

instance Prelude.ToHeader Eac3StereoDownmix

instance Prelude.ToJSON Eac3StereoDownmix where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3StereoDownmix where
  parseJSON = Prelude.parseJSONText "Eac3StereoDownmix"
