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
-- Module      : Network.AWS.EC2.Types.Tenancy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Tenancy
  ( Tenancy
      ( ..,
        TenancyDedicated,
        TenancyDefault,
        TenancyHost
      ),
  )
where

import Network.AWS.EC2.Internal
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

pattern TenancyDedicated :: Tenancy
pattern TenancyDedicated = Tenancy' "dedicated"

pattern TenancyDefault :: Tenancy
pattern TenancyDefault = Tenancy' "default"

pattern TenancyHost :: Tenancy
pattern TenancyHost = Tenancy' "host"

{-# COMPLETE
  TenancyDedicated,
  TenancyDefault,
  TenancyHost,
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

instance Prelude.FromXML Tenancy where
  parseXML = Prelude.parseXMLText "Tenancy"
