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
-- Module      : Network.AWS.CodeCommit.Types.ReplacementTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ReplacementTypeEnum
  ( ReplacementTypeEnum
      ( ..,
        ReplacementTypeEnumKEEPBASE,
        ReplacementTypeEnumKEEPDESTINATION,
        ReplacementTypeEnumKEEPSOURCE,
        ReplacementTypeEnumUSENEWCONTENT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReplacementTypeEnum = ReplacementTypeEnum'
  { fromReplacementTypeEnum ::
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

pattern ReplacementTypeEnumKEEPBASE :: ReplacementTypeEnum
pattern ReplacementTypeEnumKEEPBASE = ReplacementTypeEnum' "KEEP_BASE"

pattern ReplacementTypeEnumKEEPDESTINATION :: ReplacementTypeEnum
pattern ReplacementTypeEnumKEEPDESTINATION = ReplacementTypeEnum' "KEEP_DESTINATION"

pattern ReplacementTypeEnumKEEPSOURCE :: ReplacementTypeEnum
pattern ReplacementTypeEnumKEEPSOURCE = ReplacementTypeEnum' "KEEP_SOURCE"

pattern ReplacementTypeEnumUSENEWCONTENT :: ReplacementTypeEnum
pattern ReplacementTypeEnumUSENEWCONTENT = ReplacementTypeEnum' "USE_NEW_CONTENT"

{-# COMPLETE
  ReplacementTypeEnumKEEPBASE,
  ReplacementTypeEnumKEEPDESTINATION,
  ReplacementTypeEnumKEEPSOURCE,
  ReplacementTypeEnumUSENEWCONTENT,
  ReplacementTypeEnum'
  #-}

instance Prelude.FromText ReplacementTypeEnum where
  parser = ReplacementTypeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplacementTypeEnum where
  toText (ReplacementTypeEnum' x) = x

instance Prelude.Hashable ReplacementTypeEnum

instance Prelude.NFData ReplacementTypeEnum

instance Prelude.ToByteString ReplacementTypeEnum

instance Prelude.ToQuery ReplacementTypeEnum

instance Prelude.ToHeader ReplacementTypeEnum

instance Prelude.ToJSON ReplacementTypeEnum where
  toJSON = Prelude.toJSONText
