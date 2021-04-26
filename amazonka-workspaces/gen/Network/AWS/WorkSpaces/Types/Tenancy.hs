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
-- Module      : Network.AWS.WorkSpaces.Types.Tenancy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.Tenancy
  ( Tenancy
      ( ..,
        TenancyDEDICATED,
        TenancySHARED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Tenancy = Tenancy'
  { fromTenancy ::
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

pattern TenancyDEDICATED :: Tenancy
pattern TenancyDEDICATED = Tenancy' "DEDICATED"

pattern TenancySHARED :: Tenancy
pattern TenancySHARED = Tenancy' "SHARED"

{-# COMPLETE
  TenancyDEDICATED,
  TenancySHARED,
  Tenancy'
  #-}

instance Prelude.FromText Tenancy where
  parser = Tenancy' Prelude.<$> Prelude.takeText

instance Prelude.ToText Tenancy where
  toText (Tenancy' x) = x

instance Prelude.Hashable Tenancy

instance Prelude.NFData Tenancy

instance Prelude.ToByteString Tenancy

instance Prelude.ToQuery Tenancy

instance Prelude.ToHeader Tenancy

instance Prelude.ToJSON Tenancy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Tenancy where
  parseJSON = Prelude.parseJSONText "Tenancy"
