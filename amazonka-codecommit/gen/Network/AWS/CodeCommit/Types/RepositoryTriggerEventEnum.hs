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
-- Module      : Network.AWS.CodeCommit.Types.RepositoryTriggerEventEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.RepositoryTriggerEventEnum
  ( RepositoryTriggerEventEnum
      ( ..,
        RepositoryTriggerEventEnumAll,
        RepositoryTriggerEventEnumCreateReference,
        RepositoryTriggerEventEnumDeleteReference,
        RepositoryTriggerEventEnumUpdateReference
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RepositoryTriggerEventEnum = RepositoryTriggerEventEnum'
  { fromRepositoryTriggerEventEnum ::
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

pattern RepositoryTriggerEventEnumAll :: RepositoryTriggerEventEnum
pattern RepositoryTriggerEventEnumAll = RepositoryTriggerEventEnum' "all"

pattern RepositoryTriggerEventEnumCreateReference :: RepositoryTriggerEventEnum
pattern RepositoryTriggerEventEnumCreateReference = RepositoryTriggerEventEnum' "createReference"

pattern RepositoryTriggerEventEnumDeleteReference :: RepositoryTriggerEventEnum
pattern RepositoryTriggerEventEnumDeleteReference = RepositoryTriggerEventEnum' "deleteReference"

pattern RepositoryTriggerEventEnumUpdateReference :: RepositoryTriggerEventEnum
pattern RepositoryTriggerEventEnumUpdateReference = RepositoryTriggerEventEnum' "updateReference"

{-# COMPLETE
  RepositoryTriggerEventEnumAll,
  RepositoryTriggerEventEnumCreateReference,
  RepositoryTriggerEventEnumDeleteReference,
  RepositoryTriggerEventEnumUpdateReference,
  RepositoryTriggerEventEnum'
  #-}

instance Prelude.FromText RepositoryTriggerEventEnum where
  parser = RepositoryTriggerEventEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText RepositoryTriggerEventEnum where
  toText (RepositoryTriggerEventEnum' x) = x

instance Prelude.Hashable RepositoryTriggerEventEnum

instance Prelude.NFData RepositoryTriggerEventEnum

instance Prelude.ToByteString RepositoryTriggerEventEnum

instance Prelude.ToQuery RepositoryTriggerEventEnum

instance Prelude.ToHeader RepositoryTriggerEventEnum

instance Prelude.ToJSON RepositoryTriggerEventEnum where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RepositoryTriggerEventEnum where
  parseJSON = Prelude.parseJSONText "RepositoryTriggerEventEnum"
