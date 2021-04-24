{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.PolicyQualifierId
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.PolicyQualifierId
  ( PolicyQualifierId
      ( ..,
        Cps
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PolicyQualifierId = PolicyQualifierId' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Cps :: PolicyQualifierId
pattern Cps = PolicyQualifierId' "CPS"

{-# COMPLETE
  Cps,
  PolicyQualifierId'
  #-}

instance FromText PolicyQualifierId where
  parser = (PolicyQualifierId' . mk) <$> takeText

instance ToText PolicyQualifierId where
  toText (PolicyQualifierId' ci) = original ci

instance Hashable PolicyQualifierId

instance NFData PolicyQualifierId

instance ToByteString PolicyQualifierId

instance ToQuery PolicyQualifierId

instance ToHeader PolicyQualifierId

instance ToJSON PolicyQualifierId where
  toJSON = toJSONText
