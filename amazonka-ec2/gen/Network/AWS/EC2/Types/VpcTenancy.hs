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
-- Module      : Network.AWS.EC2.Types.VpcTenancy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VpcTenancy
  ( VpcTenancy
      ( ..,
        VpcTenancyDefault
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VpcTenancy = VpcTenancy'
  { fromVpcTenancy ::
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

pattern VpcTenancyDefault :: VpcTenancy
pattern VpcTenancyDefault = VpcTenancy' "default"

{-# COMPLETE
  VpcTenancyDefault,
  VpcTenancy'
  #-}

instance Prelude.FromText VpcTenancy where
  parser = VpcTenancy' Prelude.<$> Prelude.takeText

instance Prelude.ToText VpcTenancy where
  toText (VpcTenancy' x) = x

instance Prelude.Hashable VpcTenancy

instance Prelude.NFData VpcTenancy

instance Prelude.ToByteString VpcTenancy

instance Prelude.ToQuery VpcTenancy

instance Prelude.ToHeader VpcTenancy
