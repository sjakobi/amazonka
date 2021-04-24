{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.EBSNvmeSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EBSNvmeSupport
  ( EBSNvmeSupport
      ( ..,
        ENSRequired,
        ENSSupported,
        ENSUnsupported
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data EBSNvmeSupport = EBSNvmeSupport' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ENSRequired :: EBSNvmeSupport
pattern ENSRequired = EBSNvmeSupport' "required"

pattern ENSSupported :: EBSNvmeSupport
pattern ENSSupported = EBSNvmeSupport' "supported"

pattern ENSUnsupported :: EBSNvmeSupport
pattern ENSUnsupported = EBSNvmeSupport' "unsupported"

{-# COMPLETE
  ENSRequired,
  ENSSupported,
  ENSUnsupported,
  EBSNvmeSupport'
  #-}

instance FromText EBSNvmeSupport where
  parser = (EBSNvmeSupport' . mk) <$> takeText

instance ToText EBSNvmeSupport where
  toText (EBSNvmeSupport' ci) = original ci

instance Hashable EBSNvmeSupport

instance NFData EBSNvmeSupport

instance ToByteString EBSNvmeSupport

instance ToQuery EBSNvmeSupport

instance ToHeader EBSNvmeSupport

instance FromXML EBSNvmeSupport where
  parseXML = parseXMLText "EBSNvmeSupport"
