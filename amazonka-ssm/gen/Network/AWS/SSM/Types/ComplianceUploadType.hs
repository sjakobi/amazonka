{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ComplianceUploadType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ComplianceUploadType
  ( ComplianceUploadType
      ( ..,
        CUTComplete,
        CUTPartial
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ComplianceUploadType
  = ComplianceUploadType'
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

pattern CUTComplete :: ComplianceUploadType
pattern CUTComplete = ComplianceUploadType' "COMPLETE"

pattern CUTPartial :: ComplianceUploadType
pattern CUTPartial = ComplianceUploadType' "PARTIAL"

{-# COMPLETE
  CUTComplete,
  CUTPartial,
  ComplianceUploadType'
  #-}

instance FromText ComplianceUploadType where
  parser = (ComplianceUploadType' . mk) <$> takeText

instance ToText ComplianceUploadType where
  toText (ComplianceUploadType' ci) = original ci

instance Hashable ComplianceUploadType

instance NFData ComplianceUploadType

instance ToByteString ComplianceUploadType

instance ToQuery ComplianceUploadType

instance ToHeader ComplianceUploadType

instance ToJSON ComplianceUploadType where
  toJSON = toJSONText
