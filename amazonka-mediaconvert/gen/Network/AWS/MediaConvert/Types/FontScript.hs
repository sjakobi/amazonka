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
-- Module      : Network.AWS.MediaConvert.Types.FontScript
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.FontScript
  ( FontScript
      ( ..,
        FontScriptAUTOMATIC,
        FontScriptHANS,
        FontScriptHANT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Provide the font script, using an ISO 15924 script code, if the
-- LanguageCode is not sufficient for determining the script type. Where
-- LanguageCode or CustomLanguageCode is sufficient, use \"AUTOMATIC\" or
-- leave unset.
newtype FontScript = FontScript'
  { fromFontScript ::
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

pattern FontScriptAUTOMATIC :: FontScript
pattern FontScriptAUTOMATIC = FontScript' "AUTOMATIC"

pattern FontScriptHANS :: FontScript
pattern FontScriptHANS = FontScript' "HANS"

pattern FontScriptHANT :: FontScript
pattern FontScriptHANT = FontScript' "HANT"

{-# COMPLETE
  FontScriptAUTOMATIC,
  FontScriptHANS,
  FontScriptHANT,
  FontScript'
  #-}

instance Prelude.FromText FontScript where
  parser = FontScript' Prelude.<$> Prelude.takeText

instance Prelude.ToText FontScript where
  toText (FontScript' x) = x

instance Prelude.Hashable FontScript

instance Prelude.NFData FontScript

instance Prelude.ToByteString FontScript

instance Prelude.ToQuery FontScript

instance Prelude.ToHeader FontScript

instance Prelude.ToJSON FontScript where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FontScript where
  parseJSON = Prelude.parseJSONText "FontScript"
