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
-- Module      : Network.AWS.MediaConvert.Types.HlsCaptionLanguageSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsCaptionLanguageSetting
  ( HlsCaptionLanguageSetting
      ( ..,
        HlsCaptionLanguageSettingINSERT,
        HlsCaptionLanguageSettingNONE,
        HlsCaptionLanguageSettingOMIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Applies only to 608 Embedded output captions. Insert: Include
-- CLOSED-CAPTIONS lines in the manifest. Specify at least one language in
-- the CC1 Language Code field. One CLOSED-CAPTION line is added for each
-- Language Code you specify. Make sure to specify the languages in the
-- order in which they appear in the original source (if the source is
-- embedded format) or the order of the caption selectors (if the source is
-- other than embedded). Otherwise, languages in the manifest will not
-- match up properly with the output captions. None: Include
-- CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any
-- CLOSED-CAPTIONS line from the manifest.
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
