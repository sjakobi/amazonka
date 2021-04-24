{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.IdentityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.IdentityType
  ( IdentityType
      ( ..,
        Domain,
        EmailAddress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IdentityType = IdentityType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Domain :: IdentityType
pattern Domain = IdentityType' "Domain"

pattern EmailAddress :: IdentityType
pattern EmailAddress = IdentityType' "EmailAddress"

{-# COMPLETE
  Domain,
  EmailAddress,
  IdentityType'
  #-}

instance FromText IdentityType where
  parser = (IdentityType' . mk) <$> takeText

instance ToText IdentityType where
  toText (IdentityType' ci) = original ci

instance Hashable IdentityType

instance NFData IdentityType

instance ToByteString IdentityType

instance ToQuery IdentityType

instance ToHeader IdentityType
