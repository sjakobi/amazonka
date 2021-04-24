{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SagemakerServicecatalogStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SagemakerServicecatalogStatus
  ( SagemakerServicecatalogStatus
      ( ..,
        SSSDisabled,
        SSSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SagemakerServicecatalogStatus
  = SagemakerServicecatalogStatus'
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

pattern SSSDisabled :: SagemakerServicecatalogStatus
pattern SSSDisabled = SagemakerServicecatalogStatus' "Disabled"

pattern SSSEnabled :: SagemakerServicecatalogStatus
pattern SSSEnabled = SagemakerServicecatalogStatus' "Enabled"

{-# COMPLETE
  SSSDisabled,
  SSSEnabled,
  SagemakerServicecatalogStatus'
  #-}

instance FromText SagemakerServicecatalogStatus where
  parser = (SagemakerServicecatalogStatus' . mk) <$> takeText

instance ToText SagemakerServicecatalogStatus where
  toText (SagemakerServicecatalogStatus' ci) = original ci

instance Hashable SagemakerServicecatalogStatus

instance NFData SagemakerServicecatalogStatus

instance ToByteString SagemakerServicecatalogStatus

instance ToQuery SagemakerServicecatalogStatus

instance ToHeader SagemakerServicecatalogStatus

instance FromJSON SagemakerServicecatalogStatus where
  parseJSON = parseJSONText "SagemakerServicecatalogStatus"
