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
-- Module      : Network.AWS.WAF.Types.TextTransformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.TextTransformation
  ( TextTransformation
      ( ..,
        TextTransformationCMDLINE,
        TextTransformationCOMPRESSWHITESPACE,
        TextTransformationHTMLENTITYDECODE,
        TextTransformationLOWERCASE,
        TextTransformationNONE,
        TextTransformationURLDECODE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TextTransformation = TextTransformation'
  { fromTextTransformation ::
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

pattern TextTransformationCMDLINE :: TextTransformation
pattern TextTransformationCMDLINE = TextTransformation' "CMD_LINE"

pattern TextTransformationCOMPRESSWHITESPACE :: TextTransformation
pattern TextTransformationCOMPRESSWHITESPACE = TextTransformation' "COMPRESS_WHITE_SPACE"

pattern TextTransformationHTMLENTITYDECODE :: TextTransformation
pattern TextTransformationHTMLENTITYDECODE = TextTransformation' "HTML_ENTITY_DECODE"

pattern TextTransformationLOWERCASE :: TextTransformation
pattern TextTransformationLOWERCASE = TextTransformation' "LOWERCASE"

pattern TextTransformationNONE :: TextTransformation
pattern TextTransformationNONE = TextTransformation' "NONE"

pattern TextTransformationURLDECODE :: TextTransformation
pattern TextTransformationURLDECODE = TextTransformation' "URL_DECODE"

{-# COMPLETE
  TextTransformationCMDLINE,
  TextTransformationCOMPRESSWHITESPACE,
  TextTransformationHTMLENTITYDECODE,
  TextTransformationLOWERCASE,
  TextTransformationNONE,
  TextTransformationURLDECODE,
  TextTransformation'
  #-}

instance Prelude.FromText TextTransformation where
  parser = TextTransformation' Prelude.<$> Prelude.takeText

instance Prelude.ToText TextTransformation where
  toText (TextTransformation' x) = x

instance Prelude.Hashable TextTransformation

instance Prelude.NFData TextTransformation

instance Prelude.ToByteString TextTransformation

instance Prelude.ToQuery TextTransformation

instance Prelude.ToHeader TextTransformation

instance Prelude.ToJSON TextTransformation where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TextTransformation where
  parseJSON = Prelude.parseJSONText "TextTransformation"
