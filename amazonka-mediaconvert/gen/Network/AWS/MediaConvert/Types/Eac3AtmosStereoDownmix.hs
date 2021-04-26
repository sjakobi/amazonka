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
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosStereoDownmix
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosStereoDownmix
  ( Eac3AtmosStereoDownmix
      ( ..,
        Eac3AtmosStereoDownmixDPL2,
        Eac3AtmosStereoDownmixNOTINDICATED,
        Eac3AtmosStereoDownmixSTEREO,
        Eac3AtmosStereoDownmixSURROUND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose how the service does stereo downmixing.
newtype Eac3AtmosStereoDownmix = Eac3AtmosStereoDownmix'
  { fromEac3AtmosStereoDownmix ::
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

pattern Eac3AtmosStereoDownmixDPL2 :: Eac3AtmosStereoDownmix
pattern Eac3AtmosStereoDownmixDPL2 = Eac3AtmosStereoDownmix' "DPL2"

pattern Eac3AtmosStereoDownmixNOTINDICATED :: Eac3AtmosStereoDownmix
pattern Eac3AtmosStereoDownmixNOTINDICATED = Eac3AtmosStereoDownmix' "NOT_INDICATED"

pattern Eac3AtmosStereoDownmixSTEREO :: Eac3AtmosStereoDownmix
pattern Eac3AtmosStereoDownmixSTEREO = Eac3AtmosStereoDownmix' "STEREO"

pattern Eac3AtmosStereoDownmixSURROUND :: Eac3AtmosStereoDownmix
pattern Eac3AtmosStereoDownmixSURROUND = Eac3AtmosStereoDownmix' "SURROUND"

{-# COMPLETE
  Eac3AtmosStereoDownmixDPL2,
  Eac3AtmosStereoDownmixNOTINDICATED,
  Eac3AtmosStereoDownmixSTEREO,
  Eac3AtmosStereoDownmixSURROUND,
  Eac3AtmosStereoDownmix'
  #-}

instance Prelude.FromText Eac3AtmosStereoDownmix where
  parser = Eac3AtmosStereoDownmix' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3AtmosStereoDownmix where
  toText (Eac3AtmosStereoDownmix' x) = x

instance Prelude.Hashable Eac3AtmosStereoDownmix

instance Prelude.NFData Eac3AtmosStereoDownmix

instance Prelude.ToByteString Eac3AtmosStereoDownmix

instance Prelude.ToQuery Eac3AtmosStereoDownmix

instance Prelude.ToHeader Eac3AtmosStereoDownmix

instance Prelude.ToJSON Eac3AtmosStereoDownmix where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3AtmosStereoDownmix where
  parseJSON = Prelude.parseJSONText "Eac3AtmosStereoDownmix"
