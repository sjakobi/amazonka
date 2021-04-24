{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AttachmentHashType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AttachmentHashType
  ( AttachmentHashType
      ( ..,
        SHA256
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AttachmentHashType
  = AttachmentHashType'
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

pattern SHA256 :: AttachmentHashType
pattern SHA256 = AttachmentHashType' "Sha256"

{-# COMPLETE
  SHA256,
  AttachmentHashType'
  #-}

instance FromText AttachmentHashType where
  parser = (AttachmentHashType' . mk) <$> takeText

instance ToText AttachmentHashType where
  toText (AttachmentHashType' ci) = original ci

instance Hashable AttachmentHashType

instance NFData AttachmentHashType

instance ToByteString AttachmentHashType

instance ToQuery AttachmentHashType

instance ToHeader AttachmentHashType

instance FromJSON AttachmentHashType where
  parseJSON = parseJSONText "AttachmentHashType"
