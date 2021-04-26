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
-- Module      : Network.AWS.EC2.Types.HostTenancy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.HostTenancy
  ( HostTenancy
      ( ..,
        HostTenancyDedicated,
        HostTenancyHost
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype HostTenancy = HostTenancy'
  { fromHostTenancy ::
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

pattern HostTenancyDedicated :: HostTenancy
pattern HostTenancyDedicated = HostTenancy' "dedicated"

pattern HostTenancyHost :: HostTenancy
pattern HostTenancyHost = HostTenancy' "host"

{-# COMPLETE
  HostTenancyDedicated,
  HostTenancyHost,
  HostTenancy'
  #-}

instance Prelude.FromText HostTenancy where
  parser = HostTenancy' Prelude.<$> Prelude.takeText

instance Prelude.ToText HostTenancy where
  toText (HostTenancy' x) = x

instance Prelude.Hashable HostTenancy

instance Prelude.NFData HostTenancy

instance Prelude.ToByteString HostTenancy

instance Prelude.ToQuery HostTenancy

instance Prelude.ToHeader HostTenancy
