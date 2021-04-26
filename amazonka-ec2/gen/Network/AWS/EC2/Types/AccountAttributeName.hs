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
-- Module      : Network.AWS.EC2.Types.AccountAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AccountAttributeName
  ( AccountAttributeName
      ( ..,
        AccountAttributeNameDefaultVpc,
        AccountAttributeNameSupportedPlatforms
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AccountAttributeName = AccountAttributeName'
  { fromAccountAttributeName ::
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

pattern AccountAttributeNameDefaultVpc :: AccountAttributeName
pattern AccountAttributeNameDefaultVpc = AccountAttributeName' "default-vpc"

pattern AccountAttributeNameSupportedPlatforms :: AccountAttributeName
pattern AccountAttributeNameSupportedPlatforms = AccountAttributeName' "supported-platforms"

{-# COMPLETE
  AccountAttributeNameDefaultVpc,
  AccountAttributeNameSupportedPlatforms,
  AccountAttributeName'
  #-}

instance Prelude.FromText AccountAttributeName where
  parser = AccountAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccountAttributeName where
  toText (AccountAttributeName' x) = x

instance Prelude.Hashable AccountAttributeName

instance Prelude.NFData AccountAttributeName

instance Prelude.ToByteString AccountAttributeName

instance Prelude.ToQuery AccountAttributeName

instance Prelude.ToHeader AccountAttributeName
