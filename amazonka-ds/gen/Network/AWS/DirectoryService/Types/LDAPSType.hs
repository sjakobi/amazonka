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
-- Module      : Network.AWS.DirectoryService.Types.LDAPSType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.LDAPSType
  ( LDAPSType
      ( ..,
        LDAPSTypeClient
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LDAPSType = LDAPSType'
  { fromLDAPSType ::
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

pattern LDAPSTypeClient :: LDAPSType
pattern LDAPSTypeClient = LDAPSType' "Client"

{-# COMPLETE
  LDAPSTypeClient,
  LDAPSType'
  #-}

instance Prelude.FromText LDAPSType where
  parser = LDAPSType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LDAPSType where
  toText (LDAPSType' x) = x

instance Prelude.Hashable LDAPSType

instance Prelude.NFData LDAPSType

instance Prelude.ToByteString LDAPSType

instance Prelude.ToQuery LDAPSType

instance Prelude.ToHeader LDAPSType

instance Prelude.ToJSON LDAPSType where
  toJSON = Prelude.toJSONText
