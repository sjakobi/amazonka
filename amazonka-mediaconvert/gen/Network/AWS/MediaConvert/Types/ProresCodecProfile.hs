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
-- Module      : Network.AWS.MediaConvert.Types.ProresCodecProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresCodecProfile
  ( ProresCodecProfile
      ( ..,
        ProresCodecProfileAPPLEPRORES422,
        ProresCodecProfileAPPLEPRORES422HQ,
        ProresCodecProfileAPPLEPRORES422LT,
        ProresCodecProfileAPPLEPRORES422PROXY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Profile (ProResCodecProfile) to specify the type of Apple ProRes
-- codec to use for this output.
newtype ProresCodecProfile = ProresCodecProfile'
  { fromProresCodecProfile ::
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

pattern ProresCodecProfileAPPLEPRORES422 :: ProresCodecProfile
pattern ProresCodecProfileAPPLEPRORES422 = ProresCodecProfile' "APPLE_PRORES_422"

pattern ProresCodecProfileAPPLEPRORES422HQ :: ProresCodecProfile
pattern ProresCodecProfileAPPLEPRORES422HQ = ProresCodecProfile' "APPLE_PRORES_422_HQ"

pattern ProresCodecProfileAPPLEPRORES422LT :: ProresCodecProfile
pattern ProresCodecProfileAPPLEPRORES422LT = ProresCodecProfile' "APPLE_PRORES_422_LT"

pattern ProresCodecProfileAPPLEPRORES422PROXY :: ProresCodecProfile
pattern ProresCodecProfileAPPLEPRORES422PROXY = ProresCodecProfile' "APPLE_PRORES_422_PROXY"

{-# COMPLETE
  ProresCodecProfileAPPLEPRORES422,
  ProresCodecProfileAPPLEPRORES422HQ,
  ProresCodecProfileAPPLEPRORES422LT,
  ProresCodecProfileAPPLEPRORES422PROXY,
  ProresCodecProfile'
  #-}

instance Prelude.FromText ProresCodecProfile where
  parser = ProresCodecProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProresCodecProfile where
  toText (ProresCodecProfile' x) = x

instance Prelude.Hashable ProresCodecProfile

instance Prelude.NFData ProresCodecProfile

instance Prelude.ToByteString ProresCodecProfile

instance Prelude.ToQuery ProresCodecProfile

instance Prelude.ToHeader ProresCodecProfile

instance Prelude.ToJSON ProresCodecProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProresCodecProfile where
  parseJSON = Prelude.parseJSONText "ProresCodecProfile"
