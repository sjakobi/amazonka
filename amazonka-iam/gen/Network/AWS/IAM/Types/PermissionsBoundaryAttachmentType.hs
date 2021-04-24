{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.PermissionsBoundaryAttachmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PermissionsBoundaryAttachmentType
  ( PermissionsBoundaryAttachmentType
      ( ..,
        PermissionsBoundaryPolicy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PermissionsBoundaryAttachmentType
  = PermissionsBoundaryAttachmentType'
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

pattern PermissionsBoundaryPolicy :: PermissionsBoundaryAttachmentType
pattern PermissionsBoundaryPolicy = PermissionsBoundaryAttachmentType' "PermissionsBoundaryPolicy"

{-# COMPLETE
  PermissionsBoundaryPolicy,
  PermissionsBoundaryAttachmentType'
  #-}

instance FromText PermissionsBoundaryAttachmentType where
  parser = (PermissionsBoundaryAttachmentType' . mk) <$> takeText

instance ToText PermissionsBoundaryAttachmentType where
  toText (PermissionsBoundaryAttachmentType' ci) = original ci

instance Hashable PermissionsBoundaryAttachmentType

instance NFData PermissionsBoundaryAttachmentType

instance ToByteString PermissionsBoundaryAttachmentType

instance ToQuery PermissionsBoundaryAttachmentType

instance ToHeader PermissionsBoundaryAttachmentType

instance FromXML PermissionsBoundaryAttachmentType where
  parseXML = parseXMLText "PermissionsBoundaryAttachmentType"
