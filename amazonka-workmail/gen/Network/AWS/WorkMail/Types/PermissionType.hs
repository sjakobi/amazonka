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
-- Module      : Network.AWS.WorkMail.Types.PermissionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.PermissionType
  ( PermissionType
      ( ..,
        PermissionTypeFULLACCESS,
        PermissionTypeSENDAS,
        PermissionTypeSENDONBEHALF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PermissionType = PermissionType'
  { fromPermissionType ::
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

pattern PermissionTypeFULLACCESS :: PermissionType
pattern PermissionTypeFULLACCESS = PermissionType' "FULL_ACCESS"

pattern PermissionTypeSENDAS :: PermissionType
pattern PermissionTypeSENDAS = PermissionType' "SEND_AS"

pattern PermissionTypeSENDONBEHALF :: PermissionType
pattern PermissionTypeSENDONBEHALF = PermissionType' "SEND_ON_BEHALF"

{-# COMPLETE
  PermissionTypeFULLACCESS,
  PermissionTypeSENDAS,
  PermissionTypeSENDONBEHALF,
  PermissionType'
  #-}

instance Prelude.FromText PermissionType where
  parser = PermissionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PermissionType where
  toText (PermissionType' x) = x

instance Prelude.Hashable PermissionType

instance Prelude.NFData PermissionType

instance Prelude.ToByteString PermissionType

instance Prelude.ToQuery PermissionType

instance Prelude.ToHeader PermissionType

instance Prelude.ToJSON PermissionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PermissionType where
  parseJSON = Prelude.parseJSONText "PermissionType"
