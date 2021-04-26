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
-- Module      : Network.AWS.WorkSpaces.Types.ModificationStateEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.ModificationStateEnum
  ( ModificationStateEnum
      ( ..,
        ModificationStateEnumUPDATEINITIATED,
        ModificationStateEnumUPDATEINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ModificationStateEnum = ModificationStateEnum'
  { fromModificationStateEnum ::
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

pattern ModificationStateEnumUPDATEINITIATED :: ModificationStateEnum
pattern ModificationStateEnumUPDATEINITIATED = ModificationStateEnum' "UPDATE_INITIATED"

pattern ModificationStateEnumUPDATEINPROGRESS :: ModificationStateEnum
pattern ModificationStateEnumUPDATEINPROGRESS = ModificationStateEnum' "UPDATE_IN_PROGRESS"

{-# COMPLETE
  ModificationStateEnumUPDATEINITIATED,
  ModificationStateEnumUPDATEINPROGRESS,
  ModificationStateEnum'
  #-}

instance Prelude.FromText ModificationStateEnum where
  parser = ModificationStateEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModificationStateEnum where
  toText (ModificationStateEnum' x) = x

instance Prelude.Hashable ModificationStateEnum

instance Prelude.NFData ModificationStateEnum

instance Prelude.ToByteString ModificationStateEnum

instance Prelude.ToQuery ModificationStateEnum

instance Prelude.ToHeader ModificationStateEnum

instance Prelude.FromJSON ModificationStateEnum where
  parseJSON = Prelude.parseJSONText "ModificationStateEnum"
