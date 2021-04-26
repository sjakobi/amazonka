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
-- Module      : Network.AWS.WorkDocs.Types.RoleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.RoleType
  ( RoleType
      ( ..,
        RoleTypeCONTRIBUTOR,
        RoleTypeCOOWNER,
        RoleTypeOWNER,
        RoleTypeVIEWER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RoleType = RoleType'
  { fromRoleType ::
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

pattern RoleTypeCONTRIBUTOR :: RoleType
pattern RoleTypeCONTRIBUTOR = RoleType' "CONTRIBUTOR"

pattern RoleTypeCOOWNER :: RoleType
pattern RoleTypeCOOWNER = RoleType' "COOWNER"

pattern RoleTypeOWNER :: RoleType
pattern RoleTypeOWNER = RoleType' "OWNER"

pattern RoleTypeVIEWER :: RoleType
pattern RoleTypeVIEWER = RoleType' "VIEWER"

{-# COMPLETE
  RoleTypeCONTRIBUTOR,
  RoleTypeCOOWNER,
  RoleTypeOWNER,
  RoleTypeVIEWER,
  RoleType'
  #-}

instance Prelude.FromText RoleType where
  parser = RoleType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RoleType where
  toText (RoleType' x) = x

instance Prelude.Hashable RoleType

instance Prelude.NFData RoleType

instance Prelude.ToByteString RoleType

instance Prelude.ToQuery RoleType

instance Prelude.ToHeader RoleType

instance Prelude.ToJSON RoleType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RoleType where
  parseJSON = Prelude.parseJSONText "RoleType"
