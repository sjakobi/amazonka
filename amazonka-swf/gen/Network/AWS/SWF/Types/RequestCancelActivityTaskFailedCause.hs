{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.RequestCancelActivityTaskFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RequestCancelActivityTaskFailedCause
  ( RequestCancelActivityTaskFailedCause
      ( ..,
        RCATFCActivityIdUnknown,
        RCATFCOperationNotPermitted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RequestCancelActivityTaskFailedCause
  = RequestCancelActivityTaskFailedCause'
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

pattern RCATFCActivityIdUnknown :: RequestCancelActivityTaskFailedCause
pattern RCATFCActivityIdUnknown = RequestCancelActivityTaskFailedCause' "ACTIVITY_ID_UNKNOWN"

pattern RCATFCOperationNotPermitted :: RequestCancelActivityTaskFailedCause
pattern RCATFCOperationNotPermitted = RequestCancelActivityTaskFailedCause' "OPERATION_NOT_PERMITTED"

{-# COMPLETE
  RCATFCActivityIdUnknown,
  RCATFCOperationNotPermitted,
  RequestCancelActivityTaskFailedCause'
  #-}

instance FromText RequestCancelActivityTaskFailedCause where
  parser = (RequestCancelActivityTaskFailedCause' . mk) <$> takeText

instance ToText RequestCancelActivityTaskFailedCause where
  toText (RequestCancelActivityTaskFailedCause' ci) = original ci

instance Hashable RequestCancelActivityTaskFailedCause

instance NFData RequestCancelActivityTaskFailedCause

instance ToByteString RequestCancelActivityTaskFailedCause

instance ToQuery RequestCancelActivityTaskFailedCause

instance ToHeader RequestCancelActivityTaskFailedCause

instance FromJSON RequestCancelActivityTaskFailedCause where
  parseJSON = parseJSONText "RequestCancelActivityTaskFailedCause"
