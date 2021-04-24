{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.EnaSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EnaSupport
  ( EnaSupport
      ( ..,
        ESRequired,
        ESSupported,
        ESUnsupported
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data EnaSupport = EnaSupport' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ESRequired :: EnaSupport
pattern ESRequired = EnaSupport' "required"

pattern ESSupported :: EnaSupport
pattern ESSupported = EnaSupport' "supported"

pattern ESUnsupported :: EnaSupport
pattern ESUnsupported = EnaSupport' "unsupported"

{-# COMPLETE
  ESRequired,
  ESSupported,
  ESUnsupported,
  EnaSupport'
  #-}

instance FromText EnaSupport where
  parser = (EnaSupport' . mk) <$> takeText

instance ToText EnaSupport where
  toText (EnaSupport' ci) = original ci

instance Hashable EnaSupport

instance NFData EnaSupport

instance ToByteString EnaSupport

instance ToQuery EnaSupport

instance ToHeader EnaSupport

instance FromXML EnaSupport where
  parseXML = parseXMLText "EnaSupport"
