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
-- Module      : Network.AWS.CodeCommit.Types.ConflictDetailLevelTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ConflictDetailLevelTypeEnum
  ( ConflictDetailLevelTypeEnum
      ( ..,
        ConflictDetailLevelTypeEnumFILELEVEL,
        ConflictDetailLevelTypeEnumLINELEVEL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConflictDetailLevelTypeEnum = ConflictDetailLevelTypeEnum'
  { fromConflictDetailLevelTypeEnum ::
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

pattern ConflictDetailLevelTypeEnumFILELEVEL :: ConflictDetailLevelTypeEnum
pattern ConflictDetailLevelTypeEnumFILELEVEL = ConflictDetailLevelTypeEnum' "FILE_LEVEL"

pattern ConflictDetailLevelTypeEnumLINELEVEL :: ConflictDetailLevelTypeEnum
pattern ConflictDetailLevelTypeEnumLINELEVEL = ConflictDetailLevelTypeEnum' "LINE_LEVEL"

{-# COMPLETE
  ConflictDetailLevelTypeEnumFILELEVEL,
  ConflictDetailLevelTypeEnumLINELEVEL,
  ConflictDetailLevelTypeEnum'
  #-}

instance Prelude.FromText ConflictDetailLevelTypeEnum where
  parser = ConflictDetailLevelTypeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConflictDetailLevelTypeEnum where
  toText (ConflictDetailLevelTypeEnum' x) = x

instance Prelude.Hashable ConflictDetailLevelTypeEnum

instance Prelude.NFData ConflictDetailLevelTypeEnum

instance Prelude.ToByteString ConflictDetailLevelTypeEnum

instance Prelude.ToQuery ConflictDetailLevelTypeEnum

instance Prelude.ToHeader ConflictDetailLevelTypeEnum

instance Prelude.ToJSON ConflictDetailLevelTypeEnum where
  toJSON = Prelude.toJSONText
