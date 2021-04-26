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
-- Module      : Network.AWS.MediaLive.Types.HlsCaptionLanguageSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsCaptionLanguageSetting
  ( HlsCaptionLanguageSetting
      ( ..,
        HlsCaptionLanguageSettingINSERT,
        HlsCaptionLanguageSettingNONE,
        HlsCaptionLanguageSettingOMIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Caption Language Setting
newtype HlsCaptionLanguageSetting = HlsCaptionLanguageSetting'
  { fromHlsCaptionLanguageSetting ::
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

pattern HlsCaptionLanguageSettingINSERT :: HlsCaptionLanguageSetting
pattern HlsCaptionLanguageSettingINSERT = HlsCaptionLanguageSetting' "INSERT"

pattern HlsCaptionLanguageSettingNONE :: HlsCaptionLanguageSetting
pattern HlsCaptionLanguageSettingNONE = HlsCaptionLanguageSetting' "NONE"

pattern HlsCaptionLanguageSettingOMIT :: HlsCaptionLanguageSetting
pattern HlsCaptionLanguageSettingOMIT = HlsCaptionLanguageSetting' "OMIT"

{-# COMPLETE
  HlsCaptionLanguageSettingINSERT,
  HlsCaptionLanguageSettingNONE,
  HlsCaptionLanguageSettingOMIT,
  HlsCaptionLanguageSetting'
  #-}

instance Prelude.FromText HlsCaptionLanguageSetting where
  parser = HlsCaptionLanguageSetting' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsCaptionLanguageSetting where
  toText (HlsCaptionLanguageSetting' x) = x

instance Prelude.Hashable HlsCaptionLanguageSetting

instance Prelude.NFData HlsCaptionLanguageSetting

instance Prelude.ToByteString HlsCaptionLanguageSetting

instance Prelude.ToQuery HlsCaptionLanguageSetting

instance Prelude.ToHeader HlsCaptionLanguageSetting

instance Prelude.ToJSON HlsCaptionLanguageSetting where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsCaptionLanguageSetting where
  parseJSON = Prelude.parseJSONText "HlsCaptionLanguageSetting"
