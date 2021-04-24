{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.EphemeralNvmeSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EphemeralNvmeSupport
  ( EphemeralNvmeSupport
      ( ..,
        ERequired,
        ESupported,
        EUnsupported
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data EphemeralNvmeSupport
  = EphemeralNvmeSupport'
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

pattern ERequired :: EphemeralNvmeSupport
pattern ERequired = EphemeralNvmeSupport' "required"

pattern ESupported :: EphemeralNvmeSupport
pattern ESupported = EphemeralNvmeSupport' "supported"

pattern EUnsupported :: EphemeralNvmeSupport
pattern EUnsupported = EphemeralNvmeSupport' "unsupported"

{-# COMPLETE
  ERequired,
  ESupported,
  EUnsupported,
  EphemeralNvmeSupport'
  #-}

instance FromText EphemeralNvmeSupport where
  parser = (EphemeralNvmeSupport' . mk) <$> takeText

instance ToText EphemeralNvmeSupport where
  toText (EphemeralNvmeSupport' ci) = original ci

instance Hashable EphemeralNvmeSupport

instance NFData EphemeralNvmeSupport

instance ToByteString EphemeralNvmeSupport

instance ToQuery EphemeralNvmeSupport

instance ToHeader EphemeralNvmeSupport

instance FromXML EphemeralNvmeSupport where
  parseXML = parseXMLText "EphemeralNvmeSupport"
