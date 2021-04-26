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
-- Module      : Network.AWS.CodeCommit.Types.MergeOptionTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.MergeOptionTypeEnum
  ( MergeOptionTypeEnum
      ( ..,
        MergeOptionTypeEnumFASTFORWARDMERGE,
        MergeOptionTypeEnumSQUASHMERGE,
        MergeOptionTypeEnumTHREEWAYMERGE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MergeOptionTypeEnum = MergeOptionTypeEnum'
  { fromMergeOptionTypeEnum ::
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

pattern MergeOptionTypeEnumFASTFORWARDMERGE :: MergeOptionTypeEnum
pattern MergeOptionTypeEnumFASTFORWARDMERGE = MergeOptionTypeEnum' "FAST_FORWARD_MERGE"

pattern MergeOptionTypeEnumSQUASHMERGE :: MergeOptionTypeEnum
pattern MergeOptionTypeEnumSQUASHMERGE = MergeOptionTypeEnum' "SQUASH_MERGE"

pattern MergeOptionTypeEnumTHREEWAYMERGE :: MergeOptionTypeEnum
pattern MergeOptionTypeEnumTHREEWAYMERGE = MergeOptionTypeEnum' "THREE_WAY_MERGE"

{-# COMPLETE
  MergeOptionTypeEnumFASTFORWARDMERGE,
  MergeOptionTypeEnumSQUASHMERGE,
  MergeOptionTypeEnumTHREEWAYMERGE,
  MergeOptionTypeEnum'
  #-}

instance Prelude.FromText MergeOptionTypeEnum where
  parser = MergeOptionTypeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText MergeOptionTypeEnum where
  toText (MergeOptionTypeEnum' x) = x

instance Prelude.Hashable MergeOptionTypeEnum

instance Prelude.NFData MergeOptionTypeEnum

instance Prelude.ToByteString MergeOptionTypeEnum

instance Prelude.ToQuery MergeOptionTypeEnum

instance Prelude.ToHeader MergeOptionTypeEnum

instance Prelude.ToJSON MergeOptionTypeEnum where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MergeOptionTypeEnum where
  parseJSON = Prelude.parseJSONText "MergeOptionTypeEnum"
