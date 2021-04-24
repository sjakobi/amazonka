{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DirectInternetAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DirectInternetAccess
  ( DirectInternetAccess
      ( ..,
        DIADisabled,
        DIAEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DirectInternetAccess
  = DirectInternetAccess'
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

pattern DIADisabled :: DirectInternetAccess
pattern DIADisabled = DirectInternetAccess' "Disabled"

pattern DIAEnabled :: DirectInternetAccess
pattern DIAEnabled = DirectInternetAccess' "Enabled"

{-# COMPLETE
  DIADisabled,
  DIAEnabled,
  DirectInternetAccess'
  #-}

instance FromText DirectInternetAccess where
  parser = (DirectInternetAccess' . mk) <$> takeText

instance ToText DirectInternetAccess where
  toText (DirectInternetAccess' ci) = original ci

instance Hashable DirectInternetAccess

instance NFData DirectInternetAccess

instance ToByteString DirectInternetAccess

instance ToQuery DirectInternetAccess

instance ToHeader DirectInternetAccess

instance ToJSON DirectInternetAccess where
  toJSON = toJSONText

instance FromJSON DirectInternetAccess where
  parseJSON = parseJSONText "DirectInternetAccess"
