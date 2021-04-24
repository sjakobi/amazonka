{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AddressAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AddressAttributeName
  ( AddressAttributeName
      ( ..,
        DomainName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AddressAttributeName
  = AddressAttributeName'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DomainName :: AddressAttributeName
pattern DomainName = AddressAttributeName' "domain-name"

{-# COMPLETE
  DomainName,
  AddressAttributeName'
  #-}

instance FromText AddressAttributeName where
  parser = (AddressAttributeName' . mk) <$> takeText

instance ToText AddressAttributeName where
  toText (AddressAttributeName' ci) = original ci

instance Hashable AddressAttributeName

instance NFData AddressAttributeName

instance ToByteString AddressAttributeName

instance ToQuery AddressAttributeName

instance ToHeader AddressAttributeName
