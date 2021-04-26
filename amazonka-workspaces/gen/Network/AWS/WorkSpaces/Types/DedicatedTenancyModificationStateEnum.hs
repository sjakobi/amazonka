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
-- Module      : Network.AWS.WorkSpaces.Types.DedicatedTenancyModificationStateEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.DedicatedTenancyModificationStateEnum
  ( DedicatedTenancyModificationStateEnum
      ( ..,
        DedicatedTenancyModificationStateEnumCOMPLETED,
        DedicatedTenancyModificationStateEnumFAILED,
        DedicatedTenancyModificationStateEnumPENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DedicatedTenancyModificationStateEnum = DedicatedTenancyModificationStateEnum'
  { fromDedicatedTenancyModificationStateEnum ::
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

pattern DedicatedTenancyModificationStateEnumCOMPLETED :: DedicatedTenancyModificationStateEnum
pattern DedicatedTenancyModificationStateEnumCOMPLETED = DedicatedTenancyModificationStateEnum' "COMPLETED"

pattern DedicatedTenancyModificationStateEnumFAILED :: DedicatedTenancyModificationStateEnum
pattern DedicatedTenancyModificationStateEnumFAILED = DedicatedTenancyModificationStateEnum' "FAILED"

pattern DedicatedTenancyModificationStateEnumPENDING :: DedicatedTenancyModificationStateEnum
pattern DedicatedTenancyModificationStateEnumPENDING = DedicatedTenancyModificationStateEnum' "PENDING"

{-# COMPLETE
  DedicatedTenancyModificationStateEnumCOMPLETED,
  DedicatedTenancyModificationStateEnumFAILED,
  DedicatedTenancyModificationStateEnumPENDING,
  DedicatedTenancyModificationStateEnum'
  #-}

instance Prelude.FromText DedicatedTenancyModificationStateEnum where
  parser = DedicatedTenancyModificationStateEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText DedicatedTenancyModificationStateEnum where
  toText (DedicatedTenancyModificationStateEnum' x) = x

instance Prelude.Hashable DedicatedTenancyModificationStateEnum

instance Prelude.NFData DedicatedTenancyModificationStateEnum

instance Prelude.ToByteString DedicatedTenancyModificationStateEnum

instance Prelude.ToQuery DedicatedTenancyModificationStateEnum

instance Prelude.ToHeader DedicatedTenancyModificationStateEnum

instance Prelude.FromJSON DedicatedTenancyModificationStateEnum where
  parseJSON = Prelude.parseJSONText "DedicatedTenancyModificationStateEnum"
