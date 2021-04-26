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
-- Module      : Network.AWS.EC2.Types.VpcAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VpcAttributeName
  ( VpcAttributeName
      ( ..,
        VpcAttributeNameEnableDnsHostnames,
        VpcAttributeNameEnableDnsSupport
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VpcAttributeName = VpcAttributeName'
  { fromVpcAttributeName ::
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

pattern VpcAttributeNameEnableDnsHostnames :: VpcAttributeName
pattern VpcAttributeNameEnableDnsHostnames = VpcAttributeName' "enableDnsHostnames"

pattern VpcAttributeNameEnableDnsSupport :: VpcAttributeName
pattern VpcAttributeNameEnableDnsSupport = VpcAttributeName' "enableDnsSupport"

{-# COMPLETE
  VpcAttributeNameEnableDnsHostnames,
  VpcAttributeNameEnableDnsSupport,
  VpcAttributeName'
  #-}

instance Prelude.FromText VpcAttributeName where
  parser = VpcAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText VpcAttributeName where
  toText (VpcAttributeName' x) = x

instance Prelude.Hashable VpcAttributeName

instance Prelude.NFData VpcAttributeName

instance Prelude.ToByteString VpcAttributeName

instance Prelude.ToQuery VpcAttributeName

instance Prelude.ToHeader VpcAttributeName
