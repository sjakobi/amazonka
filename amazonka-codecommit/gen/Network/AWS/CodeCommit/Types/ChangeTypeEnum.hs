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
-- Module      : Network.AWS.CodeCommit.Types.ChangeTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ChangeTypeEnum
  ( ChangeTypeEnum
      ( ..,
        ChangeTypeEnumA,
        ChangeTypeEnumD,
        ChangeTypeEnumM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChangeTypeEnum = ChangeTypeEnum'
  { fromChangeTypeEnum ::
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

pattern ChangeTypeEnumA :: ChangeTypeEnum
pattern ChangeTypeEnumA = ChangeTypeEnum' "A"

pattern ChangeTypeEnumD :: ChangeTypeEnum
pattern ChangeTypeEnumD = ChangeTypeEnum' "D"

pattern ChangeTypeEnumM :: ChangeTypeEnum
pattern ChangeTypeEnumM = ChangeTypeEnum' "M"

{-# COMPLETE
  ChangeTypeEnumA,
  ChangeTypeEnumD,
  ChangeTypeEnumM,
  ChangeTypeEnum'
  #-}

instance Prelude.FromText ChangeTypeEnum where
  parser = ChangeTypeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChangeTypeEnum where
  toText (ChangeTypeEnum' x) = x

instance Prelude.Hashable ChangeTypeEnum

instance Prelude.NFData ChangeTypeEnum

instance Prelude.ToByteString ChangeTypeEnum

instance Prelude.ToQuery ChangeTypeEnum

instance Prelude.ToHeader ChangeTypeEnum

instance Prelude.FromJSON ChangeTypeEnum where
  parseJSON = Prelude.parseJSONText "ChangeTypeEnum"
