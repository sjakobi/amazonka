{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.EBSEncryptionSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EBSEncryptionSupport
  ( EBSEncryptionSupport
      ( ..,
        Supported,
        Unsupported
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data EBSEncryptionSupport
  = EBSEncryptionSupport'
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

pattern Supported :: EBSEncryptionSupport
pattern Supported = EBSEncryptionSupport' "supported"

pattern Unsupported :: EBSEncryptionSupport
pattern Unsupported = EBSEncryptionSupport' "unsupported"

{-# COMPLETE
  Supported,
  Unsupported,
  EBSEncryptionSupport'
  #-}

instance FromText EBSEncryptionSupport where
  parser = (EBSEncryptionSupport' . mk) <$> takeText

instance ToText EBSEncryptionSupport where
  toText (EBSEncryptionSupport' ci) = original ci

instance Hashable EBSEncryptionSupport

instance NFData EBSEncryptionSupport

instance ToByteString EBSEncryptionSupport

instance ToQuery EBSEncryptionSupport

instance ToHeader EBSEncryptionSupport

instance FromXML EBSEncryptionSupport where
  parseXML = parseXMLText "EBSEncryptionSupport"
