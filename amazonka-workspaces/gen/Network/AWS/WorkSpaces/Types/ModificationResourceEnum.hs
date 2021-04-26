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
-- Module      : Network.AWS.WorkSpaces.Types.ModificationResourceEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.ModificationResourceEnum
  ( ModificationResourceEnum
      ( ..,
        ModificationResourceEnumCOMPUTETYPE,
        ModificationResourceEnumROOTVOLUME,
        ModificationResourceEnumUSERVOLUME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ModificationResourceEnum = ModificationResourceEnum'
  { fromModificationResourceEnum ::
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

pattern ModificationResourceEnumCOMPUTETYPE :: ModificationResourceEnum
pattern ModificationResourceEnumCOMPUTETYPE = ModificationResourceEnum' "COMPUTE_TYPE"

pattern ModificationResourceEnumROOTVOLUME :: ModificationResourceEnum
pattern ModificationResourceEnumROOTVOLUME = ModificationResourceEnum' "ROOT_VOLUME"

pattern ModificationResourceEnumUSERVOLUME :: ModificationResourceEnum
pattern ModificationResourceEnumUSERVOLUME = ModificationResourceEnum' "USER_VOLUME"

{-# COMPLETE
  ModificationResourceEnumCOMPUTETYPE,
  ModificationResourceEnumROOTVOLUME,
  ModificationResourceEnumUSERVOLUME,
  ModificationResourceEnum'
  #-}

instance Prelude.FromText ModificationResourceEnum where
  parser = ModificationResourceEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModificationResourceEnum where
  toText (ModificationResourceEnum' x) = x

instance Prelude.Hashable ModificationResourceEnum

instance Prelude.NFData ModificationResourceEnum

instance Prelude.ToByteString ModificationResourceEnum

instance Prelude.ToQuery ModificationResourceEnum

instance Prelude.ToHeader ModificationResourceEnum

instance Prelude.FromJSON ModificationResourceEnum where
  parseJSON = Prelude.parseJSONText "ModificationResourceEnum"
