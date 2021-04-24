{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.ResourceOwner
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.ResourceOwner
  ( ResourceOwner
      ( ..,
        OtherAccounts,
        Self
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceOwner = ResourceOwner' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OtherAccounts :: ResourceOwner
pattern OtherAccounts = ResourceOwner' "OTHER_ACCOUNTS"

pattern Self :: ResourceOwner
pattern Self = ResourceOwner' "SELF"

{-# COMPLETE
  OtherAccounts,
  Self,
  ResourceOwner'
  #-}

instance FromText ResourceOwner where
  parser = (ResourceOwner' . mk) <$> takeText

instance ToText ResourceOwner where
  toText (ResourceOwner' ci) = original ci

instance Hashable ResourceOwner

instance NFData ResourceOwner

instance ToByteString ResourceOwner

instance ToQuery ResourceOwner

instance ToHeader ResourceOwner

instance ToJSON ResourceOwner where
  toJSON = toJSONText
