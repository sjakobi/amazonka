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
-- Module      : Network.AWS.Pinpoint.Types.TemplateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.TemplateType
  ( TemplateType
      ( ..,
        TemplateTypeEMAIL,
        TemplateTypePUSH,
        TemplateTypeSMS,
        TemplateTypeVOICE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TemplateType = TemplateType'
  { fromTemplateType ::
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

pattern TemplateTypeEMAIL :: TemplateType
pattern TemplateTypeEMAIL = TemplateType' "EMAIL"

pattern TemplateTypePUSH :: TemplateType
pattern TemplateTypePUSH = TemplateType' "PUSH"

pattern TemplateTypeSMS :: TemplateType
pattern TemplateTypeSMS = TemplateType' "SMS"

pattern TemplateTypeVOICE :: TemplateType
pattern TemplateTypeVOICE = TemplateType' "VOICE"

{-# COMPLETE
  TemplateTypeEMAIL,
  TemplateTypePUSH,
  TemplateTypeSMS,
  TemplateTypeVOICE,
  TemplateType'
  #-}

instance Prelude.FromText TemplateType where
  parser = TemplateType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TemplateType where
  toText (TemplateType' x) = x

instance Prelude.Hashable TemplateType

instance Prelude.NFData TemplateType

instance Prelude.ToByteString TemplateType

instance Prelude.ToQuery TemplateType

instance Prelude.ToHeader TemplateType

instance Prelude.FromJSON TemplateType where
  parseJSON = Prelude.parseJSONText "TemplateType"
